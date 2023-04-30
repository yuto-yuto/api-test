package main

import (
	"apitest/internal/client"
	"context"
	"log"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
)

const (
	serverHost = "localhost:8080"
)

func main() {
	grpcConn, err := grpc.Dial(serverHost, grpc.WithTransportCredentials(insecure.NewCredentials()))
	if err != nil {
		log.Fatalf("did not connect: %v", err)
	}

	defer grpcConn.Close()

	middleMan := client.NewMiddleMan(grpcConn)

	ctx := context.Background()
	middleMan.Greet(ctx, "Yuto")
}
