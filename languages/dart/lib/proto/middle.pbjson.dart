//
//  Generated code. Do not modify.
//  source: middle.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use communicationTypeDescriptor instead')
const CommunicationType$json = {
  '1': 'CommunicationType',
  '2': [
    {'1': 'COMMUNICATION_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'COMMUNICATION_TYPE_PING_PONG', '2': 1},
    {'1': 'COMMUNICATION_TYPE_MESSAGE', '2': 2},
    {'1': 'COMMUNICATION_TYPE_END_REQUEST', '2': 3},
  ],
};

/// Descriptor for `CommunicationType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List communicationTypeDescriptor = $convert.base64Decode(
    'ChFDb21tdW5pY2F0aW9uVHlwZRIiCh5DT01NVU5JQ0FUSU9OX1RZUEVfVU5TUEVDSUZJRUQQAB'
    'IgChxDT01NVU5JQ0FUSU9OX1RZUEVfUElOR19QT05HEAESHgoaQ09NTVVOSUNBVElPTl9UWVBF'
    'X01FU1NBR0UQAhIiCh5DT01NVU5JQ0FUSU9OX1RZUEVfRU5EX1JFUVVFU1QQAw==');

@$core.Deprecated('Use helloRequestDescriptor instead')
const HelloRequest$json = {
  '1': 'HelloRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `HelloRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloRequestDescriptor = $convert.base64Decode(
    'CgxIZWxsb1JlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZQ==');

@$core.Deprecated('Use helloResponseDescriptor instead')
const HelloResponse$json = {
  '1': 'HelloResponse',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `HelloResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloResponseDescriptor = $convert.base64Decode(
    'Cg1IZWxsb1Jlc3BvbnNlEhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use pingRequestDescriptor instead')
const PingRequest$json = {
  '1': 'PingRequest',
};

/// Descriptor for `PingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingRequestDescriptor = $convert.base64Decode(
    'CgtQaW5nUmVxdWVzdA==');

@$core.Deprecated('Use pingResponseDescriptor instead')
const PingResponse$json = {
  '1': 'PingResponse',
  '2': [
    {'1': 'timestamp', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
  ],
};

/// Descriptor for `PingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingResponseDescriptor = $convert.base64Decode(
    'CgxQaW5nUmVzcG9uc2USOAoJdGltZXN0YW1wGAEgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbW'
    'VzdGFtcFIJdGltZXN0YW1w');

@$core.Deprecated('Use downloadRequestDescriptor instead')
const DownloadRequest$json = {
  '1': 'DownloadRequest',
  '2': [
    {'1': 'filename', '3': 1, '4': 1, '5': 9, '10': 'filename'},
  ],
};

/// Descriptor for `DownloadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downloadRequestDescriptor = $convert.base64Decode(
    'Cg9Eb3dubG9hZFJlcXVlc3QSGgoIZmlsZW5hbWUYASABKAlSCGZpbGVuYW1l');

@$core.Deprecated('Use downloadResponseDescriptor instead')
const DownloadResponse$json = {
  '1': 'DownloadResponse',
  '2': [
    {'1': 'line', '3': 1, '4': 1, '5': 9, '10': 'line'},
  ],
};

/// Descriptor for `DownloadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downloadResponseDescriptor = $convert.base64Decode(
    'ChBEb3dubG9hZFJlc3BvbnNlEhIKBGxpbmUYASABKAlSBGxpbmU=');

@$core.Deprecated('Use uploadRequestDescriptor instead')
const UploadRequest$json = {
  '1': 'UploadRequest',
  '2': [
    {'1': 'filename', '3': 1, '4': 1, '5': 9, '10': 'filename'},
    {'1': 'chunk', '3': 2, '4': 1, '5': 12, '10': 'chunk'},
  ],
};

/// Descriptor for `UploadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadRequestDescriptor = $convert.base64Decode(
    'Cg1VcGxvYWRSZXF1ZXN0EhoKCGZpbGVuYW1lGAEgASgJUghmaWxlbmFtZRIUCgVjaHVuaxgCIA'
    'EoDFIFY2h1bms=');

@$core.Deprecated('Use uploadResponseDescriptor instead')
const UploadResponse$json = {
  '1': 'UploadResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
    {'1': 'writtenSize', '3': 2, '4': 1, '5': 3, '10': 'writtenSize'},
    {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `UploadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadResponseDescriptor = $convert.base64Decode(
    'Cg5VcGxvYWRSZXNwb25zZRIWCgZyZXN1bHQYASABKAhSBnJlc3VsdBIgCgt3cml0dGVuU2l6ZR'
    'gCIAEoA1ILd3JpdHRlblNpemUSGAoHbWVzc2FnZRgDIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use communicateRequestDescriptor instead')
const CommunicateRequest$json = {
  '1': 'CommunicateRequest',
  '2': [
    {'1': 'max', '3': 1, '4': 1, '5': 3, '10': 'max'},
    {'1': 'value', '3': 2, '4': 1, '5': 3, '10': 'value'},
  ],
};

/// Descriptor for `CommunicateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List communicateRequestDescriptor = $convert.base64Decode(
    'ChJDb21tdW5pY2F0ZVJlcXVlc3QSEAoDbWF4GAEgASgDUgNtYXgSFAoFdmFsdWUYAiABKANSBX'
    'ZhbHVl');

@$core.Deprecated('Use communicateResponseDescriptor instead')
const CommunicateResponse$json = {
  '1': 'CommunicateResponse',
  '2': [
    {'1': 'currentCount', '3': 1, '4': 1, '5': 3, '10': 'currentCount'},
    {'1': 'value', '3': 2, '4': 1, '5': 3, '10': 'value'},
  ],
};

/// Descriptor for `CommunicateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List communicateResponseDescriptor = $convert.base64Decode(
    'ChNDb21tdW5pY2F0ZVJlc3BvbnNlEiIKDGN1cnJlbnRDb3VudBgBIAEoA1IMY3VycmVudENvdW'
    '50EhQKBXZhbHVlGAIgASgDUgV2YWx1ZQ==');

