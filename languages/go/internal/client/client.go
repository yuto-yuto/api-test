package client

import (
	"bufio"
	"context"
	"errors"
	"fmt"
	"io"
	"log"
	"math/rand"
	"os"
	"path/filepath"
	"strings"
	"time"

	rpc "apitest/internal/proto"

	"apitest/internal/common"

	"google.golang.org/grpc"
)

const (
	resourcePath = "./internal/client/resources/"
)

type MiddleMan struct {
	conn *grpc.ClientConn
}

func NewMiddleMan(conn *grpc.ClientConn) *MiddleMan {
	return &MiddleMan{
		conn: conn,
	}
}

func (m *MiddleMan) SendPing(ctx context.Context) {
	timeoutCtx, cancel := context.WithTimeout(ctx, time.Second)
	defer cancel()

	client := rpc.NewMiddleClient(m.conn)
	res, err := client.Ping(timeoutCtx, &rpc.PingRequest{})
	if err != nil {
		log.Printf("[ERROR] filed to ping: %v\n", err)
		return
	}

	log.Printf("Time: %s\n", res.GetTimestamp().AsTime().Format(time.RFC3339Nano))
}

func (m *MiddleMan) Greet(ctx context.Context, name string) {
	timeoutCtx, cancel := context.WithTimeout(ctx, time.Second)
	defer cancel()

	client := rpc.NewMiddleClient(m.conn)
	res, err := client.SayHello(timeoutCtx, &rpc.HelloRequest{Name: name})
	if err != nil {
		log.Printf("[ERROR] could not greet: %v\n", err)
		return
	}

	log.Printf("Greeting: %s\n", res.GetMessage())
}

// Download(ctx context.Context, in *DownloadRequest, opts ...grpc.CallOption) (Middle_DownloadClient, error)
func (m *MiddleMan) Download(ctx context.Context, filename string) {
	timeoutCtx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()

	client := rpc.NewMiddleClient(m.conn)
	// log.Printf("start receiving a file [%s]", name)

	stream, err := client.Download(timeoutCtx, &rpc.DownloadRequest{Filename: filename})
	if err != nil {
		log.Printf("[ERROR] failed to create a stream for Download: %v\n", err)
		return
	}

	lines := []string{}
	for {
		res, err := stream.Recv()
		if errors.Is(err, io.EOF) {
			break
		}

		if err != nil {
			log.Printf("[ERROR] failed to receive data for [%s]: %v\n", filename, err)
			break
		}
		log.Println(res.GetLine())
		lines = append(lines, res.GetLine())
	}

	log.Printf("File content is as follows\n%s\n", strings.Join(lines, "\n"))
}

func (m *MiddleMan) Upload(ctx context.Context, filename string) {
	timeoutCtx, cancel := context.WithTimeout(ctx, 10*time.Second)
	defer cancel()

	absPath, err := filepath.Abs(filepath.Join(resourcePath, filename))
	if err != nil {
		log.Printf("[ERROR] failed to get absolute path: %v", err)
		return
	}

	file, err := os.Open(absPath)
	if err != nil {
		log.Printf("failed to open the file: %v", err)
		return
	}
	defer file.Close()

	client := rpc.NewMiddleClient(m.conn)
	// log.Printf("start receiving a file [%s]", name)

	stream, err := client.Upload(timeoutCtx)
	if err != nil {
		log.Printf("[ERROR] failed to create a stream for Upload: %v\n", err)
		return
	}

	log.Printf("start to upload file [%s]\n", filename)
	scanner := bufio.NewScanner(file)
	for scanner.Scan() {
		chunk := scanner.Text()
		log.Printf("send chunk: %s", chunk)
		if err := stream.Send(&rpc.UploadRequest{Filename: filename, Chunk: scanner.Bytes()}); err != nil {
			log.Printf("[ERROR] failed to send data: %v", err)

			common.ShowErrorMessageInTrailer(stream)

			break
		}
		<-time.After(time.Second)
	}

	res, err := stream.CloseAndRecv()
	if err != nil {
		log.Printf("failed to close: %v\n", err)
	}

	log.Printf("completed to upload file [%s]\nresult: %t\nwrittenSize: %d\nmessage: %s\n",
		filename, res.GetResult(), res.GetWrittenSize(), res.GetMessage())
}

func (m *MiddleMan) Communicate(ctx context.Context, maxCount int64) {
	timeoutCtx, cancel := context.WithTimeout(ctx, 100*time.Second)
	defer cancel()

	client := rpc.NewMiddleClient(m.conn)
	stream, err := client.Communicate(timeoutCtx)
	if err != nil {
		log.Printf("[ERROR] failed to create a stream: %v\n", err)
		return
	}

	err = stream.Send(&rpc.CommunicateRequest{
		Max:   maxCount,
		Value: 5,
	})
	if err != nil {
		log.Printf("[ERROR] failed to send initial values:%v", err)
		return
	}

	for count := 0; ; count++ {
		res, err := stream.Recv()
		if err != nil {
			common.ShowErrorMessageInTrailer(stream)
			if errors.Is(err, io.EOF) {
				break
			}

			log.Printf("[ERROR] failed to receive: %v\n", err)
			return
		}

		log.Printf("received value (%d): %d", count+1, res.GetValue())

		randomValue := rand.Intn(10)
		err = stream.Send(&rpc.CommunicateRequest{
			Value: res.GetValue() + int64(randomValue),
		})
		if err != nil {
			if errors.Is(err, io.EOF) {
				_, err := stream.Recv()
				log.Printf("[ERROR] failed to receive 2: %v\n", err)
				common.ShowErrorMessageInTrailer(stream) // not show anything
				break
			}

			// when the connection is lost...
			// [ERROR] failed to receive: rpc error: code = Unavailable desc = error reading from server: EOF
			log.Printf("[ERROR] failed to send value:%v", err)
			return
		}
	}

	err = stream.CloseSend()
	if err != nil {
		log.Printf("[ERROR] failed to close and send: %v", err)
	} else {
		log.Println("Communication ends")
	}
}

func (m *MiddleMan) WithInt64() {
	client := rpc.NewTypesDefClient(m.conn)

	ctx := context.Background()
	res, err := client.WithInt64(ctx, &rpc.WithInt64RequestResponse{Value: int64(95)})
	if err != nil {
		fmt.Printf("[ERROR in WithInt64]: %v\n", err)
		return
	}
	fmt.Printf("WithInt64: %d\n", res.Value)
}

func (m *MiddleMan) WithOneof() {
	client := rpc.NewTypesDefClient(m.conn)

	ctx := context.Background()

	req1 := &rpc.WithOneofRequest{OneOfValue: &rpc.WithOneofRequest_Number{Number: int64(23)}, Type: "int64"}
	res1, _ := client.WithOneof(ctx, req1)
	fmt.Printf("WithOneof1: %v\n", res1.GetOneOfValue())
	fmt.Printf("WithOneof1: %v\n", res1.GetNumber())
	fmt.Printf("WithOneof1: %v\n", res1.GetText())

	req2 := &rpc.WithOneofRequest{OneOfValue: &rpc.WithOneofRequest_Text{Text: "from client"}, Type: "string"}
	res2, _ := client.WithOneof(ctx, req2)
	fmt.Printf("WithOneof2: %v\n", res2.GetOneOfValue())
	fmt.Printf("WithOneof2: %v\n", res2.GetNumber())
	fmt.Printf("WithOneof2: %v\n", res2.GetText())

	req3 := &rpc.WithOneofRequest{Type: "nil"}
	res3, _ := client.WithOneof(ctx, req3)
	fmt.Printf("WithOneof3: %v\n", res3.GetOneOfValue())
	fmt.Printf("WithOneof3: %v\n", res3.GetNumber())
	fmt.Printf("WithOneof3: %v\n", res3.GetText())
}

func (m *MiddleMan) WithPrimitive() {
	client := rpc.NewTypesDefClient(m.conn)

	ctx := context.Background()

	req1 := &rpc.WithPrimitiveRequest{
		Type: "string",
		Primitive: &rpc.PrimitiveType{Value: &rpc.PrimitiveType_Value{
			Element: &rpc.PrimitiveType_Value_Text{Text: "This is string."},
		}},
	}
	res1, _ := client.WithPrimitive(ctx, req1)
	fmt.Printf("WithPrimitive1: %v\n", res1.GetPrimitive().GetValue().GetElement())
	fmt.Printf("WithPrimitive1: %v\n", res1.GetPrimitive().GetValue().GetText())
	fmt.Printf("WithPrimitive1: %v\n", res1.GetPrimitive().GetValue().GetInt64Value())

	req2 := &rpc.WithPrimitiveRequest{
		Type: "double",
		Primitive: &rpc.PrimitiveType{Value: &rpc.PrimitiveType_Value{
			Element: &rpc.PrimitiveType_Value_DoubleValue{DoubleValue: 5.5},
		}},
	}
	res2, _ := client.WithPrimitive(ctx, req2)
	fmt.Printf("WithPrimitive2: %v\n", res2.GetPrimitive().GetValue().GetDoubleValue())

	req3 := &rpc.WithPrimitiveRequest{
		Type: "int64",
		Primitive: &rpc.PrimitiveType{Value: &rpc.PrimitiveType_Value{
			Element: &rpc.PrimitiveType_Value_Int64Value{Int64Value: int64(99)},
		}},
	}
	res3, _ := client.WithPrimitive(ctx, req3)
	fmt.Printf("WithPrimitive3: %v\n", res3.GetPrimitive().GetValue().GetInt64Value())

	req4 := &rpc.WithPrimitiveRequest{
		Type: "uint64",
		Primitive: &rpc.PrimitiveType{Value: &rpc.PrimitiveType_Value{
			Element: &rpc.PrimitiveType_Value_Uint64Value{Uint64Value: uint64(123)},
		}},
	}
	res4, _ := client.WithPrimitive(ctx, req4)
	fmt.Printf("WithPrimitive4: %v\n", res4.GetPrimitive().GetValue().GetUint64Value())

	req5 := &rpc.WithPrimitiveRequest{
		Type: "boolean",
		Primitive: &rpc.PrimitiveType{Value: &rpc.PrimitiveType_Value{
			Element: &rpc.PrimitiveType_Value_Boolean{Boolean: true},
		}},
	}
	res5, _ := client.WithPrimitive(ctx, req5)
	fmt.Printf("WithPrimitive5: %v\n", res5.GetPrimitive().GetValue().GetBoolean())

	req6 := &rpc.WithPrimitiveRequest{
		Type: "raw_bytes",
		Primitive: &rpc.PrimitiveType{Value: &rpc.PrimitiveType_Value{
			Element: &rpc.PrimitiveType_Value_RawBytes{RawBytes: []byte{40, 41, 42}},
		}},
	}
	res6, _ := client.WithPrimitive(ctx, req6)
	fmt.Printf("WithPrimitive6: %v\n", res6.GetPrimitive().GetValue().GetRawBytes())

	req7 := &rpc.WithPrimitiveRequest{Type: "nil1"}
	res7, _ := client.WithPrimitive(ctx, req7)
	fmt.Printf("WithPrimitive7: %v\n", res7.GetPrimitive().GetValue())
}

func (m *MiddleMan) WithOptional() {
	client := rpc.NewTypesDefClient(m.conn)

	ctx := context.Background()

	req1 := &rpc.WithOptionalRequest{OptionValue: nil, Type: "nil"}
	res1, _ := client.WithOptional(ctx, req1)
	fmt.Printf("WithOptional1 is nil: %v\n", res1.OptionValue == nil)
	fmt.Printf("WithOptional1: %v\n", res1.GetOptionValue())

	val := int64(866)
	req2 := &rpc.WithOptionalRequest{OptionValue: &val, Type: ""}
	res2, _ := client.WithOptional(ctx, req2)
	fmt.Printf("WithOptional2 is nil: %v\n", res2.OptionValue == nil)
	fmt.Printf("WithOptional2: %v\n", res2.GetOptionValue())
}

func (m *MiddleMan) WithRepeatedInt64() {
	client := rpc.NewTypesDefClient(m.conn)

	ctx := context.Background()

	req1 := &rpc.WithRepeatedInt64Request{IntArray: nil, Type: "nil1"}
	res1, _ := client.WithRepeatedInt64(ctx, req1)
	fmt.Printf("WithRepeatedInt64_1 is nil: %v\n", res1.IntArray == nil)
	fmt.Printf("WithRepeatedInt64_1: %v\n", res1.GetIntArray())

	req2 := &rpc.WithRepeatedInt64Request{IntArray: []int64{}, Type: "empty"}
	res2, _ := client.WithRepeatedInt64(ctx, req2)
	fmt.Printf("WithRepeatedInt64_2 is nil: %v\n", res2.IntArray == nil)
	fmt.Printf("WithRepeatedInt64_2: %v\n", res2.GetIntArray())

	req3 := &rpc.WithRepeatedInt64Request{IntArray: []int64{1, 2}, Type: ""}
	res3, _ := client.WithRepeatedInt64(ctx, req3)
	fmt.Printf("WithRepeatedInt64_3 is nil: %v\n", res3.IntArray == nil)
	fmt.Printf("WithRepeatedInt64_3: %v\n", res3.GetIntArray())
}

func (m *MiddleMan) WithRepeatedStringInt() {
	client := rpc.NewTypesDefClient(m.conn)

	ctx := context.Background()

	req1 := &rpc.WithRepeatedStringIntRequest{StringIntArray: nil, Type: "nil1"}
	res1, _ := client.WithRepeatedStringInt(ctx, req1)
	fmt.Printf("WithRepeatedStringInt_1 is nil: %v\n", res1.StringIntArray == nil)
	fmt.Printf("WithRepeatedStringInt_1: %v\n", res1.GetStringIntArray())

	req2 := &rpc.WithRepeatedStringIntRequest{StringIntArray: []*rpc.StringIntegerValue{}, Type: "empty"}
	res2, _ := client.WithRepeatedStringInt(ctx, req2)
	fmt.Printf("WithRepeatedStringInt_2 is nil: %v\n", res2.StringIntArray == nil)
	fmt.Printf("WithRepeatedStringInt_2: %v\n", res2.GetStringIntArray())

	req3 := &rpc.WithRepeatedStringIntRequest{
		StringIntArray: []*rpc.StringIntegerValue{
			{Value: &rpc.StringIntegerValue_Number{Number: int64(543)}},
			{Value: &rpc.StringIntegerValue_Number{Number: int64(777)}},
		},
		Type: "number",
	}
	res3, _ := client.WithRepeatedStringInt(ctx, req3)
	fmt.Printf("WithRepeatedStringInt_3 is nil: %v\n", res3.StringIntArray == nil)
	fmt.Printf("WithRepeatedStringInt_3: %v\n", res3.GetStringIntArray())

	req4 := &rpc.WithRepeatedStringIntRequest{
		StringIntArray: []*rpc.StringIntegerValue{
			{Value: &rpc.StringIntegerValue_Text{Text: "from client 1"}},
			{Value: &rpc.StringIntegerValue_Text{Text: "from client 2"}},
		},
		Type: "string",
	}
	res4, _ := client.WithRepeatedStringInt(ctx, req4)
	fmt.Printf("WithRepeatedStringInt_4 is nil: %v\n", res4.StringIntArray == nil)
	fmt.Printf("WithRepeatedStringInt_4: %v\n", res4.GetStringIntArray())

	req5 := &rpc.WithRepeatedStringIntRequest{
		StringIntArray: []*rpc.StringIntegerValue{
			{Value: &rpc.StringIntegerValue_Number{Number: int64(543)}},
			{Value: &rpc.StringIntegerValue_Number{Number: int64(777)}},
			{Value: &rpc.StringIntegerValue_Text{Text: "from client 1"}},
			{Value: &rpc.StringIntegerValue_Text{Text: "from client 2"}},
		},
		Type: "mix",
	}
	res5, _ := client.WithRepeatedStringInt(ctx, req5)
	fmt.Printf("WithRepeatedStringInt_5 is nil: %v\n", res5.StringIntArray == nil)
	fmt.Printf("WithRepeatedStringInt_5: %v\n", res5.GetStringIntArray())
}

func (m *MiddleMan) WithMap() {
	client := rpc.NewTypesDefClient(m.conn)

	ctx := context.Background()

	req1 := &rpc.WithMapRequest{MapValue: nil, Type: "nil1"}
	res1, _ := client.WithMap(ctx, req1)
	fmt.Printf("WithMap_1 is nil: %v\n", res1.MapValue == nil)
	fmt.Printf("WithMap_1: %v\n", res1.GetMapValue())

	req2 := &rpc.WithMapRequest{MapValue: map[string]int64{"foo": 11, "bar": 22}, Type: ""}
	res2, _ := client.WithMap(ctx, req2)
	fmt.Printf("WithMap_2 is nil: %v\n", res2.MapValue == nil)
	fmt.Printf("WithMap_2: %v\n", res2.GetMapValue())
}
