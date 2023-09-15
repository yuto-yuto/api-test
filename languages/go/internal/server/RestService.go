package server

import (
	"context"
	"fmt"

	rpc "apitest/internal/proto"
)

type RestCallHandler struct {
	rpc.RestServiceServer
	count uint64
}

func NewRestCallHandler() *RestCallHandler {
	return &RestCallHandler{count: 0}
}

func (s *RestCallHandler) Echo(ctx context.Context, request *rpc.EchoMessageRequest) (*rpc.EchoMessageResponse, error) {
	fmt.Printf("received: %s\n", request.GetMessage())

	s.count++

	result := rpc.EchoMessageResponse{
		Message: fmt.Sprintf("call count: %d", s.count),
		Count:   uint64(s.count),
	}

	return &result, nil
}
