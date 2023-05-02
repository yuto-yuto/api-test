package server

import (
	"bufio"
	"context"
	"fmt"
	"log"
	"os"
	"path/filepath"
	"time"

	rpc "apitest/internal/proto"

	"google.golang.org/protobuf/types/known/timestamppb"
)

const (
	Bit64 = 64
	DEC   = 10
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

func (s *GrpcCallHandler) ReceiveFile(
	req *rpc.ReceiveFileRequest,
	stream rpc.Middle_ReceiveFileServer,
) error {
	absPath, err := filepath.Abs(fmt.Sprintf("./internal/server/resources/%s", req.Name))
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
		stream.Send(&rpc.ReceiveFileResponse{Line: scanner.Text()})
		<-time.After(time.Second)
	}
	return nil
}
