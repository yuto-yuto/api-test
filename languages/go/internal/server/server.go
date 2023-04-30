package server

import (
	"context"
	"fmt"

	rpc "apitest/internal/proto"
)

type GrpcServer struct {
	rpc.UnimplementedMiddleServer
}

func (s *GrpcServer) SayHello(ctx context.Context, req *rpc.HelloRequest) (*rpc.HelloResponse, error) {
	response := rpc.HelloResponse{
		Message: fmt.Sprintf("Hello %s", req.GetName()),
	}

	return &response, nil
}
