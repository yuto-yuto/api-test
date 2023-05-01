FROM mcr.microsoft.com/devcontainers/go:0-1.20

USER vscode

RUN && \
    # To generate gRPC files from proto for Golang
    go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.28 && \
    go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2 && \
    export PATH="$PATH:$(go env GOPATH)/bin" && \
    # To format proto file with vscode-proto3 extension
    apt install clang-format