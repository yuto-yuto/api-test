package main

import (
	"context"
	"log"
	"net"
	"net/http"
	"os"
	"os/signal"

	rpc "apitest/internal/proto"
	pb "apitest/internal/server"

	"github.com/grpc-ecosystem/grpc-gateway/v2/runtime"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
)

func main() {
	port := ":8080"

	listener, err := net.Listen("tcp", port)
	if err != nil {
		log.Fatal(err)
	}

	server := grpc.NewServer()

	rpc.RegisterMiddleServer(server, pb.NewGrpcCallHandler())
	rpc.RegisterTypesDefServer(server, pb.NewGrpcTypeDefHandler())
	rpc.RegisterRestServiceServer(server, pb.NewRestCallHandler())

	go func() {
		log.Println("start gRPC server")
		server.Serve(listener)
	}()

	// Settings for grpc gateway to enable REST API call
	go func() {
		grpcServerEndpoint := "localhost:8080"
		ctx, cancel := context.WithCancel(context.Background())
		defer cancel()

		mux := runtime.NewServeMux()
		opts := []grpc.DialOption{grpc.WithTransportCredentials(insecure.NewCredentials())}
		if err := rpc.RegisterRestServiceHandlerFromEndpoint(ctx, mux, grpcServerEndpoint, opts); err != nil {
			log.Printf("ERROR: %s", err.Error())
		}

		http.ListenAndServe(":8081", mux)
	}()

	// exit by ctrl + c
	quit := make(chan os.Signal, 1)
	signal.Notify(quit, os.Interrupt)
	<-quit

	log.Println("stopping gRPC server...")
	server.GracefulStop()
	log.Println("gRPC server stopped")
}
