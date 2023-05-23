package main

import (
	"context"
	"log"
	"os"
	"os/signal"
	"time"

	"apitest/internal/client"

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

	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()
	middleMan.Greet(ctx, "Yuto")

	// go middleMan.Download(ctx, "test_file.txt")
	// middleMan.Download(ctx, "not_exist.txt")

	// middleMan.Upload(ctx, "data.txt")

	// middleMan.Communicate(ctx, 10)

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
