FROM mcr.microsoft.com/devcontainers/go:0-1.20

# To format proto file with vscode-proto3 extension
RUN apt update && apt install clang-format --yes

# Install the compiler for protocol buffer
RUN curl -LO "https://github.com/protocolbuffers/protobuf/releases/download/v22.3/protoc-22.3-linux-x86_64.zip" && \
    unzip protoc-22.3-linux-x86_64.zip -d /usr/local && \
    rm protoc-22.3-linux-x86_64.zip

USER vscode

RUN go install mvdan.cc/gofumpt@v0.5.0 && \
    curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.52.1 && \
    # To generate gRPC files from proto for Golang
    go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.28 && \
    go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2 && \
    go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway@v2.18.0 && \
    export PATH="$PATH:$(go env GOPATH)/bin"

# Install for Dart
RUN sudo apt update && \
    sudo apt install apt-transport-https && \
    wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/dart.gpg && \
    echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' | sudo tee /etc/apt/sources.list.d/dart_stable.list && \
    sudo apt update && \
    sudo apt install dart && \
    # Install proto for Dart
    dart pub global activate protoc_plugin
    
ENV PATH="$PATH:/home/vscode/.pub-cache/bin"
