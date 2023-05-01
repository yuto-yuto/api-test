package main

import (
	"apitest/internal/client"
	"context"
	"log"
	"os"
	"os/signal"
	"time"

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

	go middleMan.ReceiveFile(ctx, "test_file.txt")
	middleMan.ReceiveFile(ctx, "not_exist.txt")

	go func() {
		for i := 0; i < 3; i++ {
			middleMan.SendPing(ctx)
			time.Sleep(time.Second)
		}
	}()

	// exit by ctrl + c
	quit := make(chan os.Signal, 1)
	signal.Notify(quit, os.Interrupt)
	<-quit
	log.Println("exit")
}
