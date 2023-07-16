# API-TEST

A repository to test gRPC. This repository can be developed in devcontainer.

## How to test in Golang

After opening devcontainer, Change the current directory first.

```shell
cd languages/go
# or dart dir
cd languages/dart
```

If you modify proto files, execute the following command to update proto related files.

```shell
make generate
```

The server/client code can start with the following command. Each command need to be executed in a different terminal.

```shell
make runServer
make runClient
```

## Remark

TypesDef service has not been implemented in Dart language.