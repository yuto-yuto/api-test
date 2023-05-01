package client

import (
	"context"
	"errors"
	"io"
	"log"
	"strings"
	"time"

	rpc "apitest/internal/proto"

	"google.golang.org/grpc"
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

// ReceiveFile(ctx context.Context, in *ReceiveFileRequest, opts ...grpc.CallOption) (Middle_ReceiveFileClient, error)
func (m *MiddleMan) ReceiveFile(ctx context.Context, name string) {
	timeoutCtx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	client := rpc.NewMiddleClient(m.conn)
	// log.Printf("start receiving a file [%s]", name)

	stream, err := client.ReceiveFile(timeoutCtx, &rpc.ReceiveFileRequest{Name: name})
	if err != nil {
		log.Printf("[ERROR] failed to create a stream for ReceiveFile: %w\n", err)
		return
	}

	lines := []string{}
	for {
		res, err := stream.Recv()
		if errors.Is(err, io.EOF) {
			break
		}

		if err != nil {
			log.Printf("[ERROR] failed to receive data: %w\n",err)
			break
		}
		log.Println(res.GetLine())
		lines = append(lines, res.GetLine())
	}

	log.Printf("File content is as follows\n%s\n", strings.Join(lines, "\n"))

}
