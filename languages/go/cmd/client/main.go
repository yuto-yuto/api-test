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
	"google.golang.org/grpc/keepalive"
)

const (
	serverHost = "localhost:8080"
)

func main() {
	grpcConn, err := grpc.Dial(
		serverHost,
		grpc.WithTransportCredentials(insecure.NewCredentials()),
		grpc.WithKeepaliveParams(keepalive.ClientParameters{
			// It can take max 15 minutes until gRPC client gives up communicating with a gRPC server without this parameter
			// when the connection between server and client is lost.
			// But it seems to depend on the environment. It's better to test first.
			// Even though this application is running in a Docker container, the behavior is different depending on the system.
			// I tested it with Windows and Linux. On windows, it reports the connection error soon but it took 15 min on Linux.
			Time: time.Second * 10,
		}),
	)
	if err != nil {
		log.Fatalf("did not connect: %v", err)
	}

	defer grpcConn.Close()

	middleMan := client.NewMiddleMan(grpcConn)

	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()
	// middleMan.Greet(ctx, "Yuto")

	// go middleMan.Download(ctx, "test_file.txt")
	// middleMan.Download(ctx, "not_exist.txt")

	// middleMan.Upload(ctx, "data.txt")

	middleMan.Communicate(ctx, 4)

	// go func() {
	// 	for i := 0; i < 3; i++ {
	// 		middleMan.SendPing(ctx)
	// 		time.Sleep(time.Second)
	// 	}
	// }()

	// exit by ctrl + c
	quit := make(chan os.Signal, 1)
	signal.Notify(quit, os.Interrupt)
	<-quit
	log.Println("exit")
}
