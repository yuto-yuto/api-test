// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.28.1
// 	protoc        v4.22.3
// source: types_def.proto

package apitest

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type VariousDefRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	ValInt64 int64 `protobuf:"varint,1,opt,name=val_int64,json=valInt64,proto3" json:"val_int64,omitempty"`
	// Types that are assignable to OneOfValue:
	//
	//	*VariousDefRequest_Number
	//	*VariousDefRequest_Text
	OneOfValue  isVariousDefRequest_OneOfValue `protobuf_oneof:"one_of_value"`
	Primitive   *PrimitiveType                 `protobuf:"bytes,4,opt,name=primitive,proto3" json:"primitive,omitempty"`
	OptionValue *int64                         `protobuf:"varint,5,opt,name=option_value,json=optionValue,proto3,oneof" json:"option_value,omitempty"`
}

func (x *VariousDefRequest) Reset() {
	*x = VariousDefRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_types_def_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *VariousDefRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*VariousDefRequest) ProtoMessage() {}

func (x *VariousDefRequest) ProtoReflect() protoreflect.Message {
	mi := &file_types_def_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use VariousDefRequest.ProtoReflect.Descriptor instead.
func (*VariousDefRequest) Descriptor() ([]byte, []int) {
	return file_types_def_proto_rawDescGZIP(), []int{0}
}

func (x *VariousDefRequest) GetValInt64() int64 {
	if x != nil {
		return x.ValInt64
	}
	return 0
}

func (m *VariousDefRequest) GetOneOfValue() isVariousDefRequest_OneOfValue {
	if m != nil {
		return m.OneOfValue
	}
	return nil
}

func (x *VariousDefRequest) GetNumber() int64 {
	if x, ok := x.GetOneOfValue().(*VariousDefRequest_Number); ok {
		return x.Number
	}
	return 0
}

func (x *VariousDefRequest) GetText() string {
	if x, ok := x.GetOneOfValue().(*VariousDefRequest_Text); ok {
		return x.Text
	}
	return ""
}

func (x *VariousDefRequest) GetPrimitive() *PrimitiveType {
	if x != nil {
		return x.Primitive
	}
	return nil
}

func (x *VariousDefRequest) GetOptionValue() int64 {
	if x != nil && x.OptionValue != nil {
		return *x.OptionValue
	}
	return 0
}

type isVariousDefRequest_OneOfValue interface {
	isVariousDefRequest_OneOfValue()
}

type VariousDefRequest_Number struct {
	Number int64 `protobuf:"varint,2,opt,name=number,proto3,oneof"`
}

type VariousDefRequest_Text struct {
	Text string `protobuf:"bytes,3,opt,name=text,proto3,oneof"`
}

func (*VariousDefRequest_Number) isVariousDefRequest_OneOfValue() {}

func (*VariousDefRequest_Text) isVariousDefRequest_OneOfValue() {}

type VariousDefResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *VariousDefResponse) Reset() {
	*x = VariousDefResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_types_def_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *VariousDefResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*VariousDefResponse) ProtoMessage() {}

func (x *VariousDefResponse) ProtoReflect() protoreflect.Message {
	mi := &file_types_def_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use VariousDefResponse.ProtoReflect.Descriptor instead.
func (*VariousDefResponse) Descriptor() ([]byte, []int) {
	return file_types_def_proto_rawDescGZIP(), []int{1}
}

type PrimitiveType struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Value *PrimitiveType_Value `protobuf:"bytes,1,opt,name=value,proto3" json:"value,omitempty"`
}

func (x *PrimitiveType) Reset() {
	*x = PrimitiveType{}
	if protoimpl.UnsafeEnabled {
		mi := &file_types_def_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *PrimitiveType) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*PrimitiveType) ProtoMessage() {}

func (x *PrimitiveType) ProtoReflect() protoreflect.Message {
	mi := &file_types_def_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use PrimitiveType.ProtoReflect.Descriptor instead.
func (*PrimitiveType) Descriptor() ([]byte, []int) {
	return file_types_def_proto_rawDescGZIP(), []int{2}
}

func (x *PrimitiveType) GetValue() *PrimitiveType_Value {
	if x != nil {
		return x.Value
	}
	return nil
}

type PrimitiveType_Value struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Types that are assignable to Element:
	//
	//	*PrimitiveType_Value_Text
	//	*PrimitiveType_Value_DoubleValue
	//	*PrimitiveType_Value_Int64Value
	//	*PrimitiveType_Value_Uint64Value
	//	*PrimitiveType_Value_Boolean
	//	*PrimitiveType_Value_RawBytes
	Element isPrimitiveType_Value_Element `protobuf_oneof:"element"`
}

func (x *PrimitiveType_Value) Reset() {
	*x = PrimitiveType_Value{}
	if protoimpl.UnsafeEnabled {
		mi := &file_types_def_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *PrimitiveType_Value) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*PrimitiveType_Value) ProtoMessage() {}

func (x *PrimitiveType_Value) ProtoReflect() protoreflect.Message {
	mi := &file_types_def_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use PrimitiveType_Value.ProtoReflect.Descriptor instead.
func (*PrimitiveType_Value) Descriptor() ([]byte, []int) {
	return file_types_def_proto_rawDescGZIP(), []int{2, 0}
}

func (m *PrimitiveType_Value) GetElement() isPrimitiveType_Value_Element {
	if m != nil {
		return m.Element
	}
	return nil
}

func (x *PrimitiveType_Value) GetText() string {
	if x, ok := x.GetElement().(*PrimitiveType_Value_Text); ok {
		return x.Text
	}
	return ""
}

func (x *PrimitiveType_Value) GetDoubleValue() float64 {
	if x, ok := x.GetElement().(*PrimitiveType_Value_DoubleValue); ok {
		return x.DoubleValue
	}
	return 0
}

func (x *PrimitiveType_Value) GetInt64Value() int64 {
	if x, ok := x.GetElement().(*PrimitiveType_Value_Int64Value); ok {
		return x.Int64Value
	}
	return 0
}

func (x *PrimitiveType_Value) GetUint64Value() uint64 {
	if x, ok := x.GetElement().(*PrimitiveType_Value_Uint64Value); ok {
		return x.Uint64Value
	}
	return 0
}

func (x *PrimitiveType_Value) GetBoolean() bool {
	if x, ok := x.GetElement().(*PrimitiveType_Value_Boolean); ok {
		return x.Boolean
	}
	return false
}

func (x *PrimitiveType_Value) GetRawBytes() []byte {
	if x, ok := x.GetElement().(*PrimitiveType_Value_RawBytes); ok {
		return x.RawBytes
	}
	return nil
}

type isPrimitiveType_Value_Element interface {
	isPrimitiveType_Value_Element()
}

type PrimitiveType_Value_Text struct {
	Text string `protobuf:"bytes,1,opt,name=text,proto3,oneof"`
}

type PrimitiveType_Value_DoubleValue struct {
	DoubleValue float64 `protobuf:"fixed64,2,opt,name=double_value,json=doubleValue,proto3,oneof"`
}

type PrimitiveType_Value_Int64Value struct {
	Int64Value int64 `protobuf:"varint,3,opt,name=int64_value,json=int64Value,proto3,oneof"`
}

type PrimitiveType_Value_Uint64Value struct {
	Uint64Value uint64 `protobuf:"varint,4,opt,name=uint64_value,json=uint64Value,proto3,oneof"`
}

type PrimitiveType_Value_Boolean struct {
	Boolean bool `protobuf:"varint,5,opt,name=boolean,proto3,oneof"`
}

type PrimitiveType_Value_RawBytes struct {
	RawBytes []byte `protobuf:"bytes,6,opt,name=raw_bytes,json=rawBytes,proto3,oneof"`
}

func (*PrimitiveType_Value_Text) isPrimitiveType_Value_Element() {}

func (*PrimitiveType_Value_DoubleValue) isPrimitiveType_Value_Element() {}

func (*PrimitiveType_Value_Int64Value) isPrimitiveType_Value_Element() {}

func (*PrimitiveType_Value_Uint64Value) isPrimitiveType_Value_Element() {}

func (*PrimitiveType_Value_Boolean) isPrimitiveType_Value_Element() {}

func (*PrimitiveType_Value_RawBytes) isPrimitiveType_Value_Element() {}

var File_types_def_proto protoreflect.FileDescriptor

var file_types_def_proto_rawDesc = []byte{
	0x0a, 0x0f, 0x74, 0x79, 0x70, 0x65, 0x73, 0x5f, 0x64, 0x65, 0x66, 0x2e, 0x70, 0x72, 0x6f, 0x74,
	0x6f, 0x22, 0xd7, 0x01, 0x0a, 0x11, 0x56, 0x61, 0x72, 0x69, 0x6f, 0x75, 0x73, 0x44, 0x65, 0x66,
	0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x1b, 0x0a, 0x09, 0x76, 0x61, 0x6c, 0x5f, 0x69,
	0x6e, 0x74, 0x36, 0x34, 0x18, 0x01, 0x20, 0x01, 0x28, 0x03, 0x52, 0x08, 0x76, 0x61, 0x6c, 0x49,
	0x6e, 0x74, 0x36, 0x34, 0x12, 0x18, 0x0a, 0x06, 0x6e, 0x75, 0x6d, 0x62, 0x65, 0x72, 0x18, 0x02,
	0x20, 0x01, 0x28, 0x03, 0x48, 0x00, 0x52, 0x06, 0x6e, 0x75, 0x6d, 0x62, 0x65, 0x72, 0x12, 0x14,
	0x0a, 0x04, 0x74, 0x65, 0x78, 0x74, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09, 0x48, 0x00, 0x52, 0x04,
	0x74, 0x65, 0x78, 0x74, 0x12, 0x2c, 0x0a, 0x09, 0x70, 0x72, 0x69, 0x6d, 0x69, 0x74, 0x69, 0x76,
	0x65, 0x18, 0x04, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x0e, 0x2e, 0x50, 0x72, 0x69, 0x6d, 0x69, 0x74,
	0x69, 0x76, 0x65, 0x54, 0x79, 0x70, 0x65, 0x52, 0x09, 0x70, 0x72, 0x69, 0x6d, 0x69, 0x74, 0x69,
	0x76, 0x65, 0x12, 0x26, 0x0a, 0x0c, 0x6f, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x5f, 0x76, 0x61, 0x6c,
	0x75, 0x65, 0x18, 0x05, 0x20, 0x01, 0x28, 0x03, 0x48, 0x01, 0x52, 0x0b, 0x6f, 0x70, 0x74, 0x69,
	0x6f, 0x6e, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x88, 0x01, 0x01, 0x42, 0x0e, 0x0a, 0x0c, 0x6f, 0x6e,
	0x65, 0x5f, 0x6f, 0x66, 0x5f, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x42, 0x0f, 0x0a, 0x0d, 0x5f, 0x6f,
	0x70, 0x74, 0x69, 0x6f, 0x6e, 0x5f, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x22, 0x14, 0x0a, 0x12, 0x56,
	0x61, 0x72, 0x69, 0x6f, 0x75, 0x73, 0x44, 0x65, 0x66, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73,
	0x65, 0x22, 0x8e, 0x02, 0x0a, 0x0d, 0x50, 0x72, 0x69, 0x6d, 0x69, 0x74, 0x69, 0x76, 0x65, 0x54,
	0x79, 0x70, 0x65, 0x12, 0x2a, 0x0a, 0x05, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x18, 0x01, 0x20, 0x01,
	0x28, 0x0b, 0x32, 0x14, 0x2e, 0x50, 0x72, 0x69, 0x6d, 0x69, 0x74, 0x69, 0x76, 0x65, 0x54, 0x79,
	0x70, 0x65, 0x2e, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x52, 0x05, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x1a,
	0xd0, 0x01, 0x0a, 0x05, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x12, 0x14, 0x0a, 0x04, 0x74, 0x65, 0x78,
	0x74, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x48, 0x00, 0x52, 0x04, 0x74, 0x65, 0x78, 0x74, 0x12,
	0x23, 0x0a, 0x0c, 0x64, 0x6f, 0x75, 0x62, 0x6c, 0x65, 0x5f, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x18,
	0x02, 0x20, 0x01, 0x28, 0x01, 0x48, 0x00, 0x52, 0x0b, 0x64, 0x6f, 0x75, 0x62, 0x6c, 0x65, 0x56,
	0x61, 0x6c, 0x75, 0x65, 0x12, 0x21, 0x0a, 0x0b, 0x69, 0x6e, 0x74, 0x36, 0x34, 0x5f, 0x76, 0x61,
	0x6c, 0x75, 0x65, 0x18, 0x03, 0x20, 0x01, 0x28, 0x03, 0x48, 0x00, 0x52, 0x0a, 0x69, 0x6e, 0x74,
	0x36, 0x34, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x12, 0x23, 0x0a, 0x0c, 0x75, 0x69, 0x6e, 0x74, 0x36,
	0x34, 0x5f, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x18, 0x04, 0x20, 0x01, 0x28, 0x04, 0x48, 0x00, 0x52,
	0x0b, 0x75, 0x69, 0x6e, 0x74, 0x36, 0x34, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x12, 0x1a, 0x0a, 0x07,
	0x62, 0x6f, 0x6f, 0x6c, 0x65, 0x61, 0x6e, 0x18, 0x05, 0x20, 0x01, 0x28, 0x08, 0x48, 0x00, 0x52,
	0x07, 0x62, 0x6f, 0x6f, 0x6c, 0x65, 0x61, 0x6e, 0x12, 0x1d, 0x0a, 0x09, 0x72, 0x61, 0x77, 0x5f,
	0x62, 0x79, 0x74, 0x65, 0x73, 0x18, 0x06, 0x20, 0x01, 0x28, 0x0c, 0x48, 0x00, 0x52, 0x08, 0x72,
	0x61, 0x77, 0x42, 0x79, 0x74, 0x65, 0x73, 0x42, 0x09, 0x0a, 0x07, 0x65, 0x6c, 0x65, 0x6d, 0x65,
	0x6e, 0x74, 0x32, 0x43, 0x0a, 0x08, 0x54, 0x79, 0x70, 0x65, 0x73, 0x44, 0x65, 0x66, 0x12, 0x37,
	0x0a, 0x0a, 0x56, 0x61, 0x72, 0x69, 0x6f, 0x75, 0x73, 0x44, 0x65, 0x66, 0x12, 0x12, 0x2e, 0x56,
	0x61, 0x72, 0x69, 0x6f, 0x75, 0x73, 0x44, 0x65, 0x66, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74,
	0x1a, 0x13, 0x2e, 0x56, 0x61, 0x72, 0x69, 0x6f, 0x75, 0x73, 0x44, 0x65, 0x66, 0x52, 0x65, 0x73,
	0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x00, 0x42, 0x1b, 0x5a, 0x19, 0x70, 0x6b, 0x67, 0x2f, 0x61,
	0x70, 0x69, 0x2d, 0x74, 0x65, 0x73, 0x74, 0x2f, 0x67, 0x72, 0x70, 0x63, 0x2f, 0x61, 0x70, 0x69,
	0x74, 0x65, 0x73, 0x74, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_types_def_proto_rawDescOnce sync.Once
	file_types_def_proto_rawDescData = file_types_def_proto_rawDesc
)

func file_types_def_proto_rawDescGZIP() []byte {
	file_types_def_proto_rawDescOnce.Do(func() {
		file_types_def_proto_rawDescData = protoimpl.X.CompressGZIP(file_types_def_proto_rawDescData)
	})
	return file_types_def_proto_rawDescData
}

var file_types_def_proto_msgTypes = make([]protoimpl.MessageInfo, 4)
var file_types_def_proto_goTypes = []interface{}{
	(*VariousDefRequest)(nil),   // 0: VariousDefRequest
	(*VariousDefResponse)(nil),  // 1: VariousDefResponse
	(*PrimitiveType)(nil),       // 2: PrimitiveType
	(*PrimitiveType_Value)(nil), // 3: PrimitiveType.Value
}
var file_types_def_proto_depIdxs = []int32{
	2, // 0: VariousDefRequest.primitive:type_name -> PrimitiveType
	3, // 1: PrimitiveType.value:type_name -> PrimitiveType.Value
	0, // 2: TypesDef.VariousDef:input_type -> VariousDefRequest
	1, // 3: TypesDef.VariousDef:output_type -> VariousDefResponse
	3, // [3:4] is the sub-list for method output_type
	2, // [2:3] is the sub-list for method input_type
	2, // [2:2] is the sub-list for extension type_name
	2, // [2:2] is the sub-list for extension extendee
	0, // [0:2] is the sub-list for field type_name
}

func init() { file_types_def_proto_init() }
func file_types_def_proto_init() {
	if File_types_def_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_types_def_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*VariousDefRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_types_def_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*VariousDefResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_types_def_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*PrimitiveType); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_types_def_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*PrimitiveType_Value); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	file_types_def_proto_msgTypes[0].OneofWrappers = []interface{}{
		(*VariousDefRequest_Number)(nil),
		(*VariousDefRequest_Text)(nil),
	}
	file_types_def_proto_msgTypes[3].OneofWrappers = []interface{}{
		(*PrimitiveType_Value_Text)(nil),
		(*PrimitiveType_Value_DoubleValue)(nil),
		(*PrimitiveType_Value_Int64Value)(nil),
		(*PrimitiveType_Value_Uint64Value)(nil),
		(*PrimitiveType_Value_Boolean)(nil),
		(*PrimitiveType_Value_RawBytes)(nil),
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_types_def_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   4,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_types_def_proto_goTypes,
		DependencyIndexes: file_types_def_proto_depIdxs,
		MessageInfos:      file_types_def_proto_msgTypes,
	}.Build()
	File_types_def_proto = out.File
	file_types_def_proto_rawDesc = nil
	file_types_def_proto_goTypes = nil
	file_types_def_proto_depIdxs = nil
}
