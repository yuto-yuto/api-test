package common

import (
	"log"

	"google.golang.org/grpc"
)

func ShowErrorMessageInTrailer(stream grpc.ClientStream) {
	trailer := stream.Trailer()
	v, exist := trailer["error"]
	if exist { // there is an error
		log.Println("Error: ", v)
	}
}
