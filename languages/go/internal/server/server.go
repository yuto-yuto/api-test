package server

import (
	"bufio"
	"context"
	"errors"
	"fmt"
	"io"
	"log"
	"os"
	"path/filepath"
	"time"

	rpc "apitest/internal/proto"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/timestamppb"
)

const (
	Bit64        = 64
	DEC          = 10
	resourcePath = "./internal/server/resources/"
)

type GrpcCallHandler struct {
	rpc.UnimplementedMiddleServer
	dataUpdater DataUpdater
}

func NewGrpcCallHandler() *GrpcCallHandler {
	return &GrpcCallHandler{
		dataUpdater: *NewDataUpdater(),
	}
}

func (s *GrpcCallHandler) Ping(ctx context.Context, req *rpc.PingRequest) (*rpc.PingResponse, error) {
	response := &rpc.PingResponse{
		Timestamp: timestamppb.Now(),
	}

	return response, nil
}

func (s *GrpcCallHandler) SayHello(ctx context.Context, req *rpc.HelloRequest) (*rpc.HelloResponse, error) {
	response := rpc.HelloResponse{
		Message: fmt.Sprintf("Hello %s", req.GetName()),
	}

	return &response, nil
}

func (s *GrpcCallHandler) Download(
	req *rpc.DownloadRequest,
	stream rpc.Middle_DownloadServer,
) error {
	absPath, err := filepath.Abs(filepath.Join(resourcePath, req.Filename))
	if err != nil {
		return fmt.Errorf("failed to get absolute path: %w", err)
	}

	file, err := os.Open(absPath)
	if err != nil {
		log.Println(absPath)
		return fmt.Errorf("failed to open the file: %w", err)
	}
	defer file.Close()

	scanner := bufio.NewScanner(file)
	for scanner.Scan() {
		stream.Send(&rpc.DownloadResponse{Line: scanner.Text()})
		<-time.After(time.Second)
	}
	return nil
}

func (s *GrpcCallHandler) Upload(stream rpc.Middle_UploadServer) error {
	writtenSize := 0
	var file *os.File

	log.Println("Upload was triggered")

	for {
		res, err := stream.Recv()
		if err != nil {
			if errors.Is(err, io.EOF) {
				return stream.SendAndClose(&rpc.UploadResponse{
					Result:      true,
					WrittenSize: int64(writtenSize),
					Message:     "COMPLETED",
				})
			}

			return err
		}

		if file == nil {
			if res.GetFilename() == "" {
				return status.Errorf(codes.InvalidArgument, "filename must be specified")
			}

			absPath, err := filepath.Abs(filepath.Join(resourcePath, "from_client", res.GetFilename()))
			if err != nil {
				errorMsg := fmt.Sprintf("failed to get absolute path: %v", err)
				return status.Errorf(codes.Internal, errorMsg)
			}

			file, err = os.Create(absPath)
			if err != nil {
				errorMsg := fmt.Sprintf("failed to create a file: %v", err)
				return status.Errorf(codes.PermissionDenied, errorMsg)
			}
			defer file.Close()
		} else {
			if len(res.GetChunk()) > 0 {
				log.Printf("received: %s\n", string(res.GetChunk()))

				length, err := file.Write(res.GetChunk())
				if err != nil {
					errorMsg := fmt.Sprintf("failed to write chunk: %v", err)
					return status.Errorf(codes.Internal, errorMsg)
				}

				writtenSize += length
			}
		}
	}
}
