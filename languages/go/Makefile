.PHONY: generate runServer runClient lint copy-google-api

copy-google-api:
	@curl --create-dirs -o ../../proto/google/api/annotations.proto https://raw.githubusercontent.com/googleapis/googleapis/master/google/api/annotations.proto
	@curl -o ../../proto/google/api/http.proto https://raw.githubusercontent.com/googleapis/googleapis/master/google/api/http.proto
	@curl -o ../../proto/google/api/httpbody.proto https://raw.githubusercontent.com/googleapis/googleapis/master/google/api/httpbody.proto
	@curl -o ../../proto/google/api/field_behavior.proto https://raw.githubusercontent.com/googleapis/googleapis/master/google/api/field_behavior.proto

generate:
	@protoc --go_out=./internal/proto \
	--go_opt=paths=source_relative \
    --go-grpc_out=./internal/proto \
	--go-grpc_opt=paths=source_relative \
	--grpc-gateway_out ./internal/proto \
	--grpc-gateway_opt logtostderr=true \
    --grpc-gateway_opt paths=source_relative \
    --proto_path=../../proto middle.proto \
	types_def.proto \
	rest.proto
	
runServer:
	@go run ./cmd/server/main.go

runClient:
	@go run ./cmd/client/main.go

lint:
	@golangci-lint run