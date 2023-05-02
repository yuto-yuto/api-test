package client

import (
	"bufio"
	"context"
	"errors"
	"io"
	"log"
	"os"
	"path/filepath"
	"strings"
	"time"

	rpc "apitest/internal/proto"

	"google.golang.org/grpc"
)

const (
	resourcePath = "./internal/client/resources/"
)

type MiddleMan struct {
	conn *grpc.ClientConn
}

func NewMiddleMan(conn *grpc.ClientConn) *MiddleMan {
	return &MiddleMan{
		conn: conn,
	}
}

func (m *MiddleMan) SendPing(ctx context.Context) {
	timeoutCtx, cancel := context.WithTimeout(ctx, time.Second)
	defer cancel()

	client := rpc.NewMiddleClient(m.conn)
	res, err := client.Ping(timeoutCtx, &rpc.PingRequest{})
	if err != nil {
		log.Fatalf("[ERROR] filed to ping: %v", err)
	}

	log.Printf("Time: %s\n", res.GetTimestamp().AsTime().Format(time.RFC3339Nano))
}

func (m *MiddleMan) Greet(ctx context.Context, name string) {
	timeoutCtx, cancel := context.WithTimeout(ctx, time.Second)
	defer cancel()

	client := rpc.NewMiddleClient(m.conn)
	res, err := client.SayHello(timeoutCtx, &rpc.HelloRequest{Name: name})
	if err != nil {
		log.Fatalf("[ERROR] could not greet: %v", err)
	}

	log.Printf("Greeting: %s\n", res.GetMessage())
}

// Download(ctx context.Context, in *DownloadRequest, opts ...grpc.CallOption) (Middle_DownloadClient, error)
func (m *MiddleMan) Download(ctx context.Context, filename string) {
	timeoutCtx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	client := rpc.NewMiddleClient(m.conn)
	// log.Printf("start receiving a file [%s]", name)

	stream, err := client.Download(timeoutCtx, &rpc.DownloadRequest{Filename: filename})
	if err != nil {
		log.Printf("[ERROR] failed to create a stream for Download: %v\n", err)
		return
	}

	lines := []string{}
	for {
		res, err := stream.Recv()
		if errors.Is(err, io.EOF) {
			break
		}

		if err != nil {
			log.Printf("[ERROR] failed to receive data for [%s]: %v\n", filename, err)
			break
		}
		log.Println(res.GetLine())
		lines = append(lines, res.GetLine())
	}

	log.Printf("File content is as follows\n%s\n", strings.Join(lines, "\n"))
}

func (m *MiddleMan) Upload(ctx context.Context, filename string) {
	timeoutCtx, cancel := context.WithTimeout(ctx, 10*time.Second)
	defer cancel()

	absPath, err := filepath.Abs(filepath.Join(resourcePath, filename))
	if err != nil {
		log.Printf("[ERROR] failed to get absolute path: %v", err)
		return
	}

	file, err := os.Open(absPath)
	if err != nil {
		log.Printf("failed to open the file: %v", err)
		return
	}
	defer file.Close()

	client := rpc.NewMiddleClient(m.conn)
	// log.Printf("start receiving a file [%s]", name)

	stream, err := client.Upload(timeoutCtx)
	if err != nil {
		log.Printf("[ERROR] failed to create a stream for Upload: %v\n", err)
		return
	}

	log.Printf("start to upload file [%s]\n", filename)
	scanner := bufio.NewScanner(file)
	for scanner.Scan() {
		chunk := scanner.Text()
		log.Printf("send chunk: %s", chunk)
		if err := stream.Send(&rpc.UploadRequest{Filename: filename, Chunk: scanner.Bytes()}); err != nil {
			log.Printf("[ERROR] failed to send data: %v", err)
			return
		}
		<-time.After(time.Second)
	}
	log.Printf("completed to upload file [%s]\n", filename)
}
