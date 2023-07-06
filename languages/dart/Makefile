.PHONY: generate runServer runClient lint

generate:
	@protoc --dart_out=./lib/proto \
	--proto_path=../../proto \
 	-Iprotos middle.proto types_def.proto

runServer:
	@go run ./cmd/server/main.go

runClient:
	@go run ./cmd/client/main.go

lint:
	@golangci-lint run