.PHONY: generate runServer runClient lint

generate:
	@protoc --dart_out=./lib/proto \
 	-I../../proto \
	middle.proto \
	types_def.proto \
	google/protobuf/timestamp.proto 

generate2:
	@protoc --dart_out=./lib/proto \
	--proto_path=../../proto \
	middle.proto \
	types_def.proto \
	google/protobuf/timestamp.proto 

runServer:
	@go run ./cmd/server/main.go

runClient:
	@go run ./cmd/client/main.go

lint:
	@golangci-lint run