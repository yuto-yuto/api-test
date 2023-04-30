package client

import (
	"context"
	"log"
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

func (m *MiddleMan) Greet(ctx context.Context, name string) {
	timeoutCtx, cancel := context.WithTimeout(ctx, time.Second)
	defer cancel()

	client := rpc.NewMiddleClient(m.conn)
	res, err := client.SayHello(timeoutCtx, &rpc.HelloRequest{Name: name})
	if err != nil {
		log.Fatalf("could not greet: %v", err)
	}

	log.Printf("Greeting: %s", res.GetMessage())
}
