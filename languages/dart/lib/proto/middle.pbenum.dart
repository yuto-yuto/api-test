//
//  Generated code. Do not modify.
//  source: middle.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CommunicationType extends $pb.ProtobufEnum {
  static const CommunicationType COMMUNICATION_TYPE_UNSPECIFIED = CommunicationType._(0, _omitEnumNames ? '' : 'COMMUNICATION_TYPE_UNSPECIFIED');
  static const CommunicationType COMMUNICATION_TYPE_PING_PONG = CommunicationType._(1, _omitEnumNames ? '' : 'COMMUNICATION_TYPE_PING_PONG');
  static const CommunicationType COMMUNICATION_TYPE_MESSAGE = CommunicationType._(2, _omitEnumNames ? '' : 'COMMUNICATION_TYPE_MESSAGE');
  static const CommunicationType COMMUNICATION_TYPE_END_REQUEST = CommunicationType._(3, _omitEnumNames ? '' : 'COMMUNICATION_TYPE_END_REQUEST');

  static const $core.List<CommunicationType> values = <CommunicationType> [
    COMMUNICATION_TYPE_UNSPECIFIED,
    COMMUNICATION_TYPE_PING_PONG,
    COMMUNICATION_TYPE_MESSAGE,
    COMMUNICATION_TYPE_END_REQUEST,
  ];

  static final $core.Map<$core.int, CommunicationType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CommunicationType? valueOf($core.int value) => _byValue[value];

  const CommunicationType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
