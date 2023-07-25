//
//  Generated code. Do not modify.
//  source: types_def.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use deviceStateDescriptor instead')
const DeviceState$json = {
  '1': 'DeviceState',
  '2': [
    {'1': 'DEVICE_STATE_UNSPECIFIED', '2': 0},
    {'1': 'DEVICE_STATE_READY', '2': 1},
    {'1': 'DEVICE_STATE_RUNNING', '2': 2},
    {'1': 'DEVICE_STATE_STOP', '2': 3},
    {'1': 'DEVICE_STATE_ABORTED', '2': 4},
    {'1': 'DEVICE_STATE_COMPLETED', '2': 5},
  ],
};

/// Descriptor for `DeviceState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List deviceStateDescriptor = $convert.base64Decode(
    'CgtEZXZpY2VTdGF0ZRIcChhERVZJQ0VfU1RBVEVfVU5TUEVDSUZJRUQQABIWChJERVZJQ0VfU1'
    'RBVEVfUkVBRFkQARIYChRERVZJQ0VfU1RBVEVfUlVOTklORxACEhUKEURFVklDRV9TVEFURV9T'
    'VE9QEAMSGAoUREVWSUNFX1NUQVRFX0FCT1JURUQQBBIaChZERVZJQ0VfU1RBVEVfQ09NUExFVE'
    'VEEAU=');

@$core.Deprecated('Use withInt64RequestResponseDescriptor instead')
const WithInt64RequestResponse$json = {
  '1': 'WithInt64RequestResponse',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 3, '10': 'value'},
  ],
};

/// Descriptor for `WithInt64RequestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List withInt64RequestResponseDescriptor = $convert.base64Decode(
    'ChhXaXRoSW50NjRSZXF1ZXN0UmVzcG9uc2USFAoFdmFsdWUYASABKANSBXZhbHVl');

@$core.Deprecated('Use withOneofRequestDescriptor instead')
const WithOneofRequest$json = {
  '1': 'WithOneofRequest',
  '2': [
    {'1': 'number', '3': 1, '4': 1, '5': 3, '9': 0, '10': 'number'},
    {'1': 'text', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'text'},
    {'1': 'type', '3': 3, '4': 1, '5': 9, '10': 'type'},
  ],
  '8': [
    {'1': 'one_of_value'},
  ],
};

/// Descriptor for `WithOneofRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List withOneofRequestDescriptor = $convert.base64Decode(
    'ChBXaXRoT25lb2ZSZXF1ZXN0EhgKBm51bWJlchgBIAEoA0gAUgZudW1iZXISFAoEdGV4dBgCIA'
    'EoCUgAUgR0ZXh0EhIKBHR5cGUYAyABKAlSBHR5cGVCDgoMb25lX29mX3ZhbHVl');

@$core.Deprecated('Use withOneofResponseDescriptor instead')
const WithOneofResponse$json = {
  '1': 'WithOneofResponse',
  '2': [
    {'1': 'number', '3': 1, '4': 1, '5': 3, '9': 0, '10': 'number'},
    {'1': 'text', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'text'},
  ],
  '8': [
    {'1': 'one_of_value'},
  ],
};

/// Descriptor for `WithOneofResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List withOneofResponseDescriptor = $convert.base64Decode(
    'ChFXaXRoT25lb2ZSZXNwb25zZRIYCgZudW1iZXIYASABKANIAFIGbnVtYmVyEhQKBHRleHQYAi'
    'ABKAlIAFIEdGV4dEIOCgxvbmVfb2ZfdmFsdWU=');

@$core.Deprecated('Use withPrimitiveRequestDescriptor instead')
const WithPrimitiveRequest$json = {
  '1': 'WithPrimitiveRequest',
  '2': [
    {'1': 'primitive', '3': 1, '4': 1, '5': 11, '6': '.PrimitiveType', '10': 'primitive'},
    {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
  ],
};

/// Descriptor for `WithPrimitiveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List withPrimitiveRequestDescriptor = $convert.base64Decode(
    'ChRXaXRoUHJpbWl0aXZlUmVxdWVzdBIsCglwcmltaXRpdmUYASABKAsyDi5QcmltaXRpdmVUeX'
    'BlUglwcmltaXRpdmUSEgoEdHlwZRgCIAEoCVIEdHlwZQ==');

@$core.Deprecated('Use withPrimitiveResponseDescriptor instead')
const WithPrimitiveResponse$json = {
  '1': 'WithPrimitiveResponse',
  '2': [
    {'1': 'primitive', '3': 1, '4': 1, '5': 11, '6': '.PrimitiveType', '10': 'primitive'},
  ],
};

/// Descriptor for `WithPrimitiveResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List withPrimitiveResponseDescriptor = $convert.base64Decode(
    'ChVXaXRoUHJpbWl0aXZlUmVzcG9uc2USLAoJcHJpbWl0aXZlGAEgASgLMg4uUHJpbWl0aXZlVH'
    'lwZVIJcHJpbWl0aXZl');

@$core.Deprecated('Use withOptionalRequestDescriptor instead')
const WithOptionalRequest$json = {
  '1': 'WithOptionalRequest',
  '2': [
    {'1': 'option_value', '3': 1, '4': 1, '5': 3, '9': 0, '10': 'optionValue', '17': true},
    {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
  ],
  '8': [
    {'1': '_option_value'},
  ],
};

/// Descriptor for `WithOptionalRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List withOptionalRequestDescriptor = $convert.base64Decode(
    'ChNXaXRoT3B0aW9uYWxSZXF1ZXN0EiYKDG9wdGlvbl92YWx1ZRgBIAEoA0gAUgtvcHRpb25WYW'
    'x1ZYgBARISCgR0eXBlGAIgASgJUgR0eXBlQg8KDV9vcHRpb25fdmFsdWU=');

@$core.Deprecated('Use withOptionalResponseDescriptor instead')
const WithOptionalResponse$json = {
  '1': 'WithOptionalResponse',
  '2': [
    {'1': 'option_value', '3': 1, '4': 1, '5': 3, '9': 0, '10': 'optionValue', '17': true},
  ],
  '8': [
    {'1': '_option_value'},
  ],
};

/// Descriptor for `WithOptionalResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List withOptionalResponseDescriptor = $convert.base64Decode(
    'ChRXaXRoT3B0aW9uYWxSZXNwb25zZRImCgxvcHRpb25fdmFsdWUYASABKANIAFILb3B0aW9uVm'
    'FsdWWIAQFCDwoNX29wdGlvbl92YWx1ZQ==');

@$core.Deprecated('Use withRepeatedInt64RequestDescriptor instead')
const WithRepeatedInt64Request$json = {
  '1': 'WithRepeatedInt64Request',
  '2': [
    {'1': 'int_array', '3': 1, '4': 3, '5': 3, '10': 'intArray'},
    {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
  ],
};

/// Descriptor for `WithRepeatedInt64Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List withRepeatedInt64RequestDescriptor = $convert.base64Decode(
    'ChhXaXRoUmVwZWF0ZWRJbnQ2NFJlcXVlc3QSGwoJaW50X2FycmF5GAEgAygDUghpbnRBcnJheR'
    'ISCgR0eXBlGAIgASgJUgR0eXBl');

@$core.Deprecated('Use withRepeatedInt64ResponseDescriptor instead')
const WithRepeatedInt64Response$json = {
  '1': 'WithRepeatedInt64Response',
  '2': [
    {'1': 'int_array', '3': 1, '4': 3, '5': 3, '10': 'intArray'},
  ],
};

/// Descriptor for `WithRepeatedInt64Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List withRepeatedInt64ResponseDescriptor = $convert.base64Decode(
    'ChlXaXRoUmVwZWF0ZWRJbnQ2NFJlc3BvbnNlEhsKCWludF9hcnJheRgBIAMoA1IIaW50QXJyYX'
    'k=');

@$core.Deprecated('Use withRepeatedStringIntRequestDescriptor instead')
const WithRepeatedStringIntRequest$json = {
  '1': 'WithRepeatedStringIntRequest',
  '2': [
    {'1': 'string_int_array', '3': 1, '4': 3, '5': 11, '6': '.StringIntegerValue', '10': 'stringIntArray'},
    {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
  ],
};

/// Descriptor for `WithRepeatedStringIntRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List withRepeatedStringIntRequestDescriptor = $convert.base64Decode(
    'ChxXaXRoUmVwZWF0ZWRTdHJpbmdJbnRSZXF1ZXN0Ej0KEHN0cmluZ19pbnRfYXJyYXkYASADKA'
    'syEy5TdHJpbmdJbnRlZ2VyVmFsdWVSDnN0cmluZ0ludEFycmF5EhIKBHR5cGUYAiABKAlSBHR5'
    'cGU=');

@$core.Deprecated('Use withRepeatedStringIntResponseDescriptor instead')
const WithRepeatedStringIntResponse$json = {
  '1': 'WithRepeatedStringIntResponse',
  '2': [
    {'1': 'string_int_array', '3': 1, '4': 3, '5': 11, '6': '.StringIntegerValue', '10': 'stringIntArray'},
  ],
};

/// Descriptor for `WithRepeatedStringIntResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List withRepeatedStringIntResponseDescriptor = $convert.base64Decode(
    'Ch1XaXRoUmVwZWF0ZWRTdHJpbmdJbnRSZXNwb25zZRI9ChBzdHJpbmdfaW50X2FycmF5GAEgAy'
    'gLMhMuU3RyaW5nSW50ZWdlclZhbHVlUg5zdHJpbmdJbnRBcnJheQ==');

@$core.Deprecated('Use withMapRequestDescriptor instead')
const WithMapRequest$json = {
  '1': 'WithMapRequest',
  '2': [
    {'1': 'map_value', '3': 1, '4': 3, '5': 11, '6': '.WithMapRequest.MapValueEntry', '10': 'mapValue'},
    {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
  ],
  '3': [WithMapRequest_MapValueEntry$json],
};

@$core.Deprecated('Use withMapRequestDescriptor instead')
const WithMapRequest_MapValueEntry$json = {
  '1': 'MapValueEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 3, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `WithMapRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List withMapRequestDescriptor = $convert.base64Decode(
    'Cg5XaXRoTWFwUmVxdWVzdBI6CgltYXBfdmFsdWUYASADKAsyHS5XaXRoTWFwUmVxdWVzdC5NYX'
    'BWYWx1ZUVudHJ5UghtYXBWYWx1ZRISCgR0eXBlGAIgASgJUgR0eXBlGjsKDU1hcFZhbHVlRW50'
    'cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKANSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use withMapResponseDescriptor instead')
const WithMapResponse$json = {
  '1': 'WithMapResponse',
  '2': [
    {'1': 'map_value', '3': 1, '4': 3, '5': 11, '6': '.WithMapResponse.MapValueEntry', '10': 'mapValue'},
  ],
  '3': [WithMapResponse_MapValueEntry$json],
};

@$core.Deprecated('Use withMapResponseDescriptor instead')
const WithMapResponse_MapValueEntry$json = {
  '1': 'MapValueEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 3, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `WithMapResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List withMapResponseDescriptor = $convert.base64Decode(
    'Cg9XaXRoTWFwUmVzcG9uc2USOwoJbWFwX3ZhbHVlGAEgAygLMh4uV2l0aE1hcFJlc3BvbnNlLk'
    '1hcFZhbHVlRW50cnlSCG1hcFZhbHVlGjsKDU1hcFZhbHVlRW50cnkSEAoDa2V5GAEgASgJUgNr'
    'ZXkSFAoFdmFsdWUYAiABKANSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use primitiveTypeDescriptor instead')
const PrimitiveType$json = {
  '1': 'PrimitiveType',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.PrimitiveType.Value', '10': 'value'},
  ],
  '3': [PrimitiveType_Value$json],
};

@$core.Deprecated('Use primitiveTypeDescriptor instead')
const PrimitiveType_Value$json = {
  '1': 'Value',
  '2': [
    {'1': 'text', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'text'},
    {'1': 'double_value', '3': 2, '4': 1, '5': 1, '9': 0, '10': 'doubleValue'},
    {'1': 'int64_value', '3': 3, '4': 1, '5': 3, '9': 0, '10': 'int64Value'},
    {'1': 'uint64_value', '3': 4, '4': 1, '5': 4, '9': 0, '10': 'uint64Value'},
    {'1': 'boolean', '3': 5, '4': 1, '5': 8, '9': 0, '10': 'boolean'},
    {'1': 'raw_bytes', '3': 6, '4': 1, '5': 12, '9': 0, '10': 'rawBytes'},
  ],
  '8': [
    {'1': 'element'},
  ],
};

/// Descriptor for `PrimitiveType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List primitiveTypeDescriptor = $convert.base64Decode(
    'Cg1QcmltaXRpdmVUeXBlEioKBXZhbHVlGAEgASgLMhQuUHJpbWl0aXZlVHlwZS5WYWx1ZVIFdm'
    'FsdWUa0AEKBVZhbHVlEhQKBHRleHQYASABKAlIAFIEdGV4dBIjCgxkb3VibGVfdmFsdWUYAiAB'
    'KAFIAFILZG91YmxlVmFsdWUSIQoLaW50NjRfdmFsdWUYAyABKANIAFIKaW50NjRWYWx1ZRIjCg'
    'x1aW50NjRfdmFsdWUYBCABKARIAFILdWludDY0VmFsdWUSGgoHYm9vbGVhbhgFIAEoCEgAUgdi'
    'b29sZWFuEh0KCXJhd19ieXRlcxgGIAEoDEgAUghyYXdCeXRlc0IJCgdlbGVtZW50');

@$core.Deprecated('Use stringIntegerValueDescriptor instead')
const StringIntegerValue$json = {
  '1': 'StringIntegerValue',
  '2': [
    {'1': 'text', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'text'},
    {'1': 'number', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'number'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `StringIntegerValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stringIntegerValueDescriptor = $convert.base64Decode(
    'ChJTdHJpbmdJbnRlZ2VyVmFsdWUSFAoEdGV4dBgBIAEoCUgAUgR0ZXh0EhgKBm51bWJlchgCIA'
    'EoA0gAUgZudW1iZXJCBwoFdmFsdWU=');

@$core.Deprecated('Use withEnumRequestResponseDescriptor instead')
const WithEnumRequestResponse$json = {
  '1': 'WithEnumRequestResponse',
  '2': [
    {'1': 'state', '3': 1, '4': 1, '5': 14, '6': '.DeviceState', '10': 'state'},
  ],
};

/// Descriptor for `WithEnumRequestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List withEnumRequestResponseDescriptor = $convert.base64Decode(
    'ChdXaXRoRW51bVJlcXVlc3RSZXNwb25zZRIiCgVzdGF0ZRgBIAEoDjIMLkRldmljZVN0YXRlUg'
    'VzdGF0ZQ==');

