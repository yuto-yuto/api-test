//
//  Generated code. Do not modify.
//  source: types_def.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class DeviceState extends $pb.ProtobufEnum {
  static const DeviceState DEVICE_STATE_UNSPECIFIED = DeviceState._(0, _omitEnumNames ? '' : 'DEVICE_STATE_UNSPECIFIED');
  static const DeviceState DEVICE_STATE_READY = DeviceState._(1, _omitEnumNames ? '' : 'DEVICE_STATE_READY');
  static const DeviceState DEVICE_STATE_RUNNING = DeviceState._(2, _omitEnumNames ? '' : 'DEVICE_STATE_RUNNING');
  static const DeviceState DEVICE_STATE_STOP = DeviceState._(3, _omitEnumNames ? '' : 'DEVICE_STATE_STOP');
  static const DeviceState DEVICE_STATE_ABORTED = DeviceState._(4, _omitEnumNames ? '' : 'DEVICE_STATE_ABORTED');
  static const DeviceState DEVICE_STATE_COMPLETED = DeviceState._(5, _omitEnumNames ? '' : 'DEVICE_STATE_COMPLETED');

  static const $core.List<DeviceState> values = <DeviceState> [
    DEVICE_STATE_UNSPECIFIED,
    DEVICE_STATE_READY,
    DEVICE_STATE_RUNNING,
    DEVICE_STATE_STOP,
    DEVICE_STATE_ABORTED,
    DEVICE_STATE_COMPLETED,
  ];

  static final $core.Map<$core.int, DeviceState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DeviceState? valueOf($core.int value) => _byValue[value];

  const DeviceState._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
