.PHONY: generate runServer

generate:
	@protoc --go_out=./internal/proto --go_opt=paths=source_relative \
    --go-grpc_out=./internal/proto --go-grpc_opt=paths=source_relative \
    --proto_path=../../proto middle.proto

runServer:
	@go run ./cmd/server/main.go

runClient:
	@go run ./cmd/client/main.go

lint:
	@golangci-lint run