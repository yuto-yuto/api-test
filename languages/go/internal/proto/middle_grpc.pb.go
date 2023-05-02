// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.2.0
// - protoc             v4.22.3
// source: middle.proto

package apitest

import (
	context "context"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
)

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
// Requires gRPC-Go v1.32.0 or later.
const _ = grpc.SupportPackageIsVersion7

// MiddleClient is the client API for Middle service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type MiddleClient interface {
	// Unary RPC
	Ping(ctx context.Context, in *PingRequest, opts ...grpc.CallOption) (*PingResponse, error)
	// Unary RPC
	SayHello(ctx context.Context, in *HelloRequest, opts ...grpc.CallOption) (*HelloResponse, error)
	// Server Streaming RPC
	Download(ctx context.Context, in *DownloadRequest, opts ...grpc.CallOption) (Middle_DownloadClient, error)
	// Client Streaming RPC
	Upload(ctx context.Context, opts ...grpc.CallOption) (Middle_UploadClient, error)
}

type middleClient struct {
	cc grpc.ClientConnInterface
}

func NewMiddleClient(cc grpc.ClientConnInterface) MiddleClient {
	return &middleClient{cc}
}

func (c *middleClient) Ping(ctx context.Context, in *PingRequest, opts ...grpc.CallOption) (*PingResponse, error) {
	out := new(PingResponse)
	err := c.cc.Invoke(ctx, "/Middle/Ping", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *middleClient) SayHello(ctx context.Context, in *HelloRequest, opts ...grpc.CallOption) (*HelloResponse, error) {
	out := new(HelloResponse)
	err := c.cc.Invoke(ctx, "/Middle/SayHello", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *middleClient) Download(ctx context.Context, in *DownloadRequest, opts ...grpc.CallOption) (Middle_DownloadClient, error) {
	stream, err := c.cc.NewStream(ctx, &Middle_ServiceDesc.Streams[0], "/Middle/Download", opts...)
	if err != nil {
		return nil, err
	}
	x := &middleDownloadClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type Middle_DownloadClient interface {
	Recv() (*DownloadResponse, error)
	grpc.ClientStream
}

type middleDownloadClient struct {
	grpc.ClientStream
}

func (x *middleDownloadClient) Recv() (*DownloadResponse, error) {
	m := new(DownloadResponse)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *middleClient) Upload(ctx context.Context, opts ...grpc.CallOption) (Middle_UploadClient, error) {
	stream, err := c.cc.NewStream(ctx, &Middle_ServiceDesc.Streams[1], "/Middle/Upload", opts...)
	if err != nil {
		return nil, err
	}
	x := &middleUploadClient{stream}
	return x, nil
}

type Middle_UploadClient interface {
	Send(*UploadRequest) error
	CloseAndRecv() (*UploadResponse, error)
	grpc.ClientStream
}

type middleUploadClient struct {
	grpc.ClientStream
}

func (x *middleUploadClient) Send(m *UploadRequest) error {
	return x.ClientStream.SendMsg(m)
}

func (x *middleUploadClient) CloseAndRecv() (*UploadResponse, error) {
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	m := new(UploadResponse)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

// MiddleServer is the server API for Middle service.
// All implementations must embed UnimplementedMiddleServer
// for forward compatibility
type MiddleServer interface {
	// Unary RPC
	Ping(context.Context, *PingRequest) (*PingResponse, error)
	// Unary RPC
	SayHello(context.Context, *HelloRequest) (*HelloResponse, error)
	// Server Streaming RPC
	Download(*DownloadRequest, Middle_DownloadServer) error
	// Client Streaming RPC
	Upload(Middle_UploadServer) error
	mustEmbedUnimplementedMiddleServer()
}

// UnimplementedMiddleServer must be embedded to have forward compatible implementations.
type UnimplementedMiddleServer struct {
}

func (UnimplementedMiddleServer) Ping(context.Context, *PingRequest) (*PingResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Ping not implemented")
}
func (UnimplementedMiddleServer) SayHello(context.Context, *HelloRequest) (*HelloResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SayHello not implemented")
}
func (UnimplementedMiddleServer) Download(*DownloadRequest, Middle_DownloadServer) error {
	return status.Errorf(codes.Unimplemented, "method Download not implemented")
}
func (UnimplementedMiddleServer) Upload(Middle_UploadServer) error {
	return status.Errorf(codes.Unimplemented, "method Upload not implemented")
}
func (UnimplementedMiddleServer) mustEmbedUnimplementedMiddleServer() {}

// UnsafeMiddleServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to MiddleServer will
// result in compilation errors.
type UnsafeMiddleServer interface {
	mustEmbedUnimplementedMiddleServer()
}

func RegisterMiddleServer(s grpc.ServiceRegistrar, srv MiddleServer) {
	s.RegisterService(&Middle_ServiceDesc, srv)
}

func _Middle_Ping_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(PingRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(MiddleServer).Ping(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/Middle/Ping",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(MiddleServer).Ping(ctx, req.(*PingRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _Middle_SayHello_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(HelloRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(MiddleServer).SayHello(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/Middle/SayHello",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(MiddleServer).SayHello(ctx, req.(*HelloRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _Middle_Download_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(DownloadRequest)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(MiddleServer).Download(m, &middleDownloadServer{stream})
}

type Middle_DownloadServer interface {
	Send(*DownloadResponse) error
	grpc.ServerStream
}

type middleDownloadServer struct {
	grpc.ServerStream
}

func (x *middleDownloadServer) Send(m *DownloadResponse) error {
	return x.ServerStream.SendMsg(m)
}

func _Middle_Upload_Handler(srv interface{}, stream grpc.ServerStream) error {
	return srv.(MiddleServer).Upload(&middleUploadServer{stream})
}

type Middle_UploadServer interface {
	SendAndClose(*UploadResponse) error
	Recv() (*UploadRequest, error)
	grpc.ServerStream
}

type middleUploadServer struct {
	grpc.ServerStream
}

func (x *middleUploadServer) SendAndClose(m *UploadResponse) error {
	return x.ServerStream.SendMsg(m)
}

func (x *middleUploadServer) Recv() (*UploadRequest, error) {
	m := new(UploadRequest)
	if err := x.ServerStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

// Middle_ServiceDesc is the grpc.ServiceDesc for Middle service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var Middle_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "Middle",
	HandlerType: (*MiddleServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "Ping",
			Handler:    _Middle_Ping_Handler,
		},
		{
			MethodName: "SayHello",
			Handler:    _Middle_SayHello_Handler,
		},
	},
	Streams: []grpc.StreamDesc{
		{
			StreamName:    "Download",
			Handler:       _Middle_Download_Handler,
			ServerStreams: true,
		},
		{
			StreamName:    "Upload",
			Handler:       _Middle_Upload_Handler,
			ClientStreams: true,
		},
	},
	Metadata: "middle.proto",
}
