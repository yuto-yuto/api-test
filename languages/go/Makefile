PHONY: generate run

generate:
	@protoc --go_out=./internal/proto --go_opt=paths=source_relative \
    --go-grpc_out=./internal/proto --go-grpc_opt=paths=source_relative \
    --proto_path=../../proto middle.proto

run:
	@go run ./cmd/main.go