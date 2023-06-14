package server

import (
	"context"
	"fmt"

	rpc "apitest/internal/proto"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

type GrpcTypeDefHandler struct {
	rpc.UnimplementedTypesDefServer
}

func NewGrpcTypeDefHandler() *GrpcTypeDefHandler {
	return &GrpcTypeDefHandler{}
}

func (s GrpcTypeDefHandler) WithInt64(ctx context.Context, req *rpc.WithInt64RequestResponse) (*rpc.WithInt64RequestResponse, error) {
	fmt.Printf("int64: %v", req.GetValue())
	return &rpc.WithInt64RequestResponse{Value: int64(1)}, nil
}

func (s GrpcTypeDefHandler) WithOneof(ctx context.Context, req *rpc.WithOneofRequest) (*rpc.WithOneofResponse, error) {
	fmt.Printf("oneof is nil: %v", req.OneOfValue == nil)
	fmt.Printf("oneof: %v", req.GetOneOfValue())
	fmt.Printf("oneof number: %v", req.GetNumber())
	fmt.Printf("oneof text: %v", req.GetText())

	switch req.GetType() {
	case "int64":
		return &rpc.WithOneofResponse{OneOfValue: &rpc.WithOneofResponse_Number{Number: int64(1)}}, nil
	case "string":
		return &rpc.WithOneofResponse{OneOfValue: &rpc.WithOneofResponse_Text{Text: "This is string."}}, nil
	case "nil":
		return &rpc.WithOneofResponse{}, nil
	default:
		return nil, status.Errorf(codes.InvalidArgument, fmt.Sprintf("not supported case '%s'", req.GetType()))
	}
}

func (s GrpcTypeDefHandler) WithPrimitive(ctx context.Context, req *rpc.WithPrimitiveRequest) (*rpc.WithPrimitiveResponse, error) {
	fmt.Printf("Primitive is nil: %v", req.Primitive == nil)
	fmt.Printf("Primitive value: %v", req.GetPrimitive().GetValue())
	fmt.Printf("Primitive Text: %v", req.GetPrimitive().GetValue().GetText())
	fmt.Printf("Primitive DoubleValue: %v", req.GetPrimitive().GetValue().GetDoubleValue())
	fmt.Printf("Primitive Int64Value: %v", req.GetPrimitive().GetValue().GetInt64Value())
	fmt.Printf("Primitive Uint64Value: %v", req.GetPrimitive().GetValue().GetUint64Value())
	fmt.Printf("Primitive Boolean: %v", req.GetPrimitive().GetValue().GetBoolean())
	fmt.Printf("Primitive RawBytes: %v", req.GetPrimitive().GetValue().GetRawBytes())

	switch req.GetType() {
	case "string":
		return &rpc.WithPrimitiveResponse{Primitive: &rpc.PrimitiveType{Value: &rpc.PrimitiveType_Value{Element: &rpc.PrimitiveType_Value_Text{Text: "This is string."}}}}, nil
	case "double":
		return &rpc.WithPrimitiveResponse{Primitive: &rpc.PrimitiveType{Value: &rpc.PrimitiveType_Value{Element: &rpc.PrimitiveType_Value_DoubleValue{DoubleValue: 5.5}}}}, nil
	case "int64":
		return &rpc.WithPrimitiveResponse{Primitive: &rpc.PrimitiveType{Value: &rpc.PrimitiveType_Value{Element: &rpc.PrimitiveType_Value_Int64Value{Int64Value: int64(99)}}}}, nil
	case "uint64":
		return &rpc.WithPrimitiveResponse{Primitive: &rpc.PrimitiveType{Value: &rpc.PrimitiveType_Value{Element: &rpc.PrimitiveType_Value_Uint64Value{Uint64Value: uint64(123)}}}}, nil
	case "boolean":
		return &rpc.WithPrimitiveResponse{Primitive: &rpc.PrimitiveType{Value: &rpc.PrimitiveType_Value{Element: &rpc.PrimitiveType_Value_Boolean{Boolean: true}}}}, nil
	case "raw_bytes":
		return &rpc.WithPrimitiveResponse{Primitive: &rpc.PrimitiveType{Value: &rpc.PrimitiveType_Value{Element: &rpc.PrimitiveType_Value_RawBytes{RawBytes: []byte{40, 41, 42}}}}}, nil
	case "nil1":
		return &rpc.WithPrimitiveResponse{}, nil
	case "nil2":
		return &rpc.WithPrimitiveResponse{Primitive: &rpc.PrimitiveType{}}, nil
	case "nil3":
		return &rpc.WithPrimitiveResponse{Primitive: &rpc.PrimitiveType{Value: &rpc.PrimitiveType_Value{}}}, nil
	default:
		return nil, status.Errorf(codes.InvalidArgument, fmt.Sprintf("not supported case '%s'", req.GetType()))
	}
}

func (s GrpcTypeDefHandler) WithOptional(ctx context.Context, req *rpc.WithOptionalRequest) (*rpc.WithOptionalResponse, error) {
	fmt.Printf("Optional is nil: %v", req.OptionValue == nil)
	fmt.Printf("Optional: %v", req.GetOptionValue())

	switch req.GetType() {
	case "nil":
		return &rpc.WithOptionalResponse{}, nil
	default:
		val := int64(64)
		return &rpc.WithOptionalResponse{OptionValue: &val}, nil
	}
}

func (s GrpcTypeDefHandler) WithRepeatedInt64(ctx context.Context, req *rpc.WithRepeatedInt64Request) (*rpc.WithRepeatedInt64Response, error) {
	fmt.Printf("Repeated is nil: %v", req.GetIntArray() == nil)
	fmt.Printf("Repeated: %v", req.GetIntArray())

	switch req.GetType() {
	case "nil1":
		return &rpc.WithRepeatedInt64Response{}, nil
	case "nil2":
		return &rpc.WithRepeatedInt64Response{IntArray: nil}, nil
	case "empty":
		return &rpc.WithRepeatedInt64Response{IntArray: []int64{}}, nil
	default:
		return &rpc.WithRepeatedInt64Response{IntArray: []int64{int64(11), int64(22), int64(33)}}, nil
	}
}

func (s GrpcTypeDefHandler) WithRepeatedStringInt(ctx context.Context, req *rpc.WithRepeatedStringIntRequest) (*rpc.WithRepeatedStringIntResponse, error) {
	fmt.Printf("RepeatedStringInt is nil: %v", req.GetStringIntArray() == nil)
	fmt.Printf("RepeatedStringInt: %v", req.GetStringIntArray())

	switch req.GetType() {
	case "nil1":
		return &rpc.WithRepeatedStringIntResponse{}, nil
	case "nil2":
		return &rpc.WithRepeatedStringIntResponse{StringIntArray: nil}, nil
	case "empty":
		return &rpc.WithRepeatedStringIntResponse{StringIntArray: []*rpc.StringIntegerValue{}}, nil
	case "number":
		return &rpc.WithRepeatedStringIntResponse{StringIntArray: []*rpc.StringIntegerValue{
			{Value: &rpc.StringIntegerValue_Number{Number: int64(55)}},
			{Value: &rpc.StringIntegerValue_Number{Number: int64(66)}},
		}}, nil
	case "string":
		return &rpc.WithRepeatedStringIntResponse{StringIntArray: []*rpc.StringIntegerValue{
			{Value: &rpc.StringIntegerValue_Text{Text: "string1"}},
			{Value: &rpc.StringIntegerValue_Text{Text: "string2"}},
		}}, nil
	case "mix":
		return &rpc.WithRepeatedStringIntResponse{StringIntArray: []*rpc.StringIntegerValue{
			{Value: &rpc.StringIntegerValue_Number{Number: int64(55)}},
			{Value: &rpc.StringIntegerValue_Number{Number: int64(66)}},
			{Value: &rpc.StringIntegerValue_Text{Text: "string1"}},
			{Value: &rpc.StringIntegerValue_Text{Text: "string2"}},
		}}, nil
	default:
		return nil, status.Errorf(codes.InvalidArgument, fmt.Sprintf("not supported case '%s'", req.GetType()))
	}
}

func (s GrpcTypeDefHandler) WithMap(ctx context.Context, req *rpc.WithMapRequest) (*rpc.WithMapResponse, error) {
	fmt.Printf("Map is nil: %v", req.GetMapValue() == nil)
	fmt.Printf("Map: %v", req.GetMapValue())

	switch req.GetType() {
	case "nil1":
		return &rpc.WithMapResponse{}, nil
	case "nil2":
		return &rpc.WithMapResponse{MapValue: nil}, nil
	default:
		return &rpc.WithMapResponse{MapValue: map[string]int64{"first": 1, "second": 2, "third": 3}}, nil
	}
}
