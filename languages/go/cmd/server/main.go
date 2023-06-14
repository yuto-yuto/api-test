package main

import (
	"log"
	"net"
	"os"
	"os/signal"

	rpc "apitest/internal/proto"
	pb "apitest/internal/server"
	"google.golang.org/grpc"
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

	go func() {
		log.Println("start gRPC server")
		server.Serve(listener)
	}()

	// exit by ctrl + c
	quit := make(chan os.Signal, 1)
	signal.Notify(quit, os.Interrupt)
	<-quit

	log.Println("stopping gRPC server...")
	server.GracefulStop()
	log.Println("gRPC server stopped")
}
