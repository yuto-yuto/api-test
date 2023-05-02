FROM mcr.microsoft.com/devcontainers/go:0-1.20

# To format proto file with vscode-proto3 extension
RUN apt update && apt install clang-format --yes

USER vscode

RUN go install mvdan.cc/gofumpt@v0.5.0 && \
    curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.52.1 && \
    # To generate gRPC files from proto for Golang
    go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.28 && \
    go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2 && \
    export PATH="$PATH:$(go env GOPATH)/bin"
