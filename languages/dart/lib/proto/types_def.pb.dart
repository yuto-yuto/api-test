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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class WithInt64RequestResponse extends $pb.GeneratedMessage {
  factory WithInt64RequestResponse() => create();
  WithInt64RequestResponse._() : super();
  factory WithInt64RequestResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WithInt64RequestResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WithInt64RequestResponse', createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WithInt64RequestResponse clone() => WithInt64RequestResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WithInt64RequestResponse copyWith(void Function(WithInt64RequestResponse) updates) => super.copyWith((message) => updates(message as WithInt64RequestResponse)) as WithInt64RequestResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WithInt64RequestResponse create() => WithInt64RequestResponse._();
  WithInt64RequestResponse createEmptyInstance() => create();
  static $pb.PbList<WithInt64RequestResponse> createRepeated() => $pb.PbList<WithInt64RequestResponse>();
  @$core.pragma('dart2js:noInline')
  static WithInt64RequestResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WithInt64RequestResponse>(create);
  static WithInt64RequestResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get value => $_getI64(0);
  @$pb.TagNumber(1)
  set value($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

enum WithOneofRequest_OneOfValue {
  number, 
  text, 
  notSet
}

class WithOneofRequest extends $pb.GeneratedMessage {
  factory WithOneofRequest() => create();
  WithOneofRequest._() : super();
  factory WithOneofRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WithOneofRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, WithOneofRequest_OneOfValue> _WithOneofRequest_OneOfValueByTag = {
    1 : WithOneofRequest_OneOfValue.number,
    2 : WithOneofRequest_OneOfValue.text,
    0 : WithOneofRequest_OneOfValue.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WithOneofRequest', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aInt64(1, _omitFieldNames ? '' : 'number')
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..aOS(3, _omitFieldNames ? '' : 'type')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WithOneofRequest clone() => WithOneofRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WithOneofRequest copyWith(void Function(WithOneofRequest) updates) => super.copyWith((message) => updates(message as WithOneofRequest)) as WithOneofRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WithOneofRequest create() => WithOneofRequest._();
  WithOneofRequest createEmptyInstance() => create();
  static $pb.PbList<WithOneofRequest> createRepeated() => $pb.PbList<WithOneofRequest>();
  @$core.pragma('dart2js:noInline')
  static WithOneofRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WithOneofRequest>(create);
  static WithOneofRequest? _defaultInstance;

  WithOneofRequest_OneOfValue whichOneOfValue() => _WithOneofRequest_OneOfValueByTag[$_whichOneof(0)]!;
  void clearOneOfValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get number => $_getI64(0);
  @$pb.TagNumber(1)
  set number($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get type => $_getSZ(2);
  @$pb.TagNumber(3)
  set type($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);
}

enum WithOneofResponse_OneOfValue {
  number, 
  text, 
  notSet
}

class WithOneofResponse extends $pb.GeneratedMessage {
  factory WithOneofResponse() => create();
  WithOneofResponse._() : super();
  factory WithOneofResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WithOneofResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, WithOneofResponse_OneOfValue> _WithOneofResponse_OneOfValueByTag = {
    1 : WithOneofResponse_OneOfValue.number,
    2 : WithOneofResponse_OneOfValue.text,
    0 : WithOneofResponse_OneOfValue.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WithOneofResponse', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aInt64(1, _omitFieldNames ? '' : 'number')
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WithOneofResponse clone() => WithOneofResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WithOneofResponse copyWith(void Function(WithOneofResponse) updates) => super.copyWith((message) => updates(message as WithOneofResponse)) as WithOneofResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WithOneofResponse create() => WithOneofResponse._();
  WithOneofResponse createEmptyInstance() => create();
  static $pb.PbList<WithOneofResponse> createRepeated() => $pb.PbList<WithOneofResponse>();
  @$core.pragma('dart2js:noInline')
  static WithOneofResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WithOneofResponse>(create);
  static WithOneofResponse? _defaultInstance;

  WithOneofResponse_OneOfValue whichOneOfValue() => _WithOneofResponse_OneOfValueByTag[$_whichOneof(0)]!;
  void clearOneOfValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get number => $_getI64(0);
  @$pb.TagNumber(1)
  set number($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);
}

class WithPrimitiveRequest extends $pb.GeneratedMessage {
  factory WithPrimitiveRequest() => create();
  WithPrimitiveRequest._() : super();
  factory WithPrimitiveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WithPrimitiveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WithPrimitiveRequest', createEmptyInstance: create)
    ..aOM<PrimitiveType>(1, _omitFieldNames ? '' : 'primitive', subBuilder: PrimitiveType.create)
    ..aOS(2, _omitFieldNames ? '' : 'type')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WithPrimitiveRequest clone() => WithPrimitiveRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WithPrimitiveRequest copyWith(void Function(WithPrimitiveRequest) updates) => super.copyWith((message) => updates(message as WithPrimitiveRequest)) as WithPrimitiveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WithPrimitiveRequest create() => WithPrimitiveRequest._();
  WithPrimitiveRequest createEmptyInstance() => create();
  static $pb.PbList<WithPrimitiveRequest> createRepeated() => $pb.PbList<WithPrimitiveRequest>();
  @$core.pragma('dart2js:noInline')
  static WithPrimitiveRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WithPrimitiveRequest>(create);
  static WithPrimitiveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  PrimitiveType get primitive => $_getN(0);
  @$pb.TagNumber(1)
  set primitive(PrimitiveType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPrimitive() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrimitive() => clearField(1);
  @$pb.TagNumber(1)
  PrimitiveType ensurePrimitive() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
}

class WithPrimitiveResponse extends $pb.GeneratedMessage {
  factory WithPrimitiveResponse() => create();
  WithPrimitiveResponse._() : super();
  factory WithPrimitiveResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WithPrimitiveResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WithPrimitiveResponse', createEmptyInstance: create)
    ..aOM<PrimitiveType>(1, _omitFieldNames ? '' : 'primitive', subBuilder: PrimitiveType.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WithPrimitiveResponse clone() => WithPrimitiveResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WithPrimitiveResponse copyWith(void Function(WithPrimitiveResponse) updates) => super.copyWith((message) => updates(message as WithPrimitiveResponse)) as WithPrimitiveResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WithPrimitiveResponse create() => WithPrimitiveResponse._();
  WithPrimitiveResponse createEmptyInstance() => create();
  static $pb.PbList<WithPrimitiveResponse> createRepeated() => $pb.PbList<WithPrimitiveResponse>();
  @$core.pragma('dart2js:noInline')
  static WithPrimitiveResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WithPrimitiveResponse>(create);
  static WithPrimitiveResponse? _defaultInstance;

  @$pb.TagNumber(1)
  PrimitiveType get primitive => $_getN(0);
  @$pb.TagNumber(1)
  set primitive(PrimitiveType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPrimitive() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrimitive() => clearField(1);
  @$pb.TagNumber(1)
  PrimitiveType ensurePrimitive() => $_ensure(0);
}

class WithOptionalRequest extends $pb.GeneratedMessage {
  factory WithOptionalRequest() => create();
  WithOptionalRequest._() : super();
  factory WithOptionalRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WithOptionalRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WithOptionalRequest', createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'optionValue')
    ..aOS(2, _omitFieldNames ? '' : 'type')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WithOptionalRequest clone() => WithOptionalRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WithOptionalRequest copyWith(void Function(WithOptionalRequest) updates) => super.copyWith((message) => updates(message as WithOptionalRequest)) as WithOptionalRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WithOptionalRequest create() => WithOptionalRequest._();
  WithOptionalRequest createEmptyInstance() => create();
  static $pb.PbList<WithOptionalRequest> createRepeated() => $pb.PbList<WithOptionalRequest>();
  @$core.pragma('dart2js:noInline')
  static WithOptionalRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WithOptionalRequest>(create);
  static WithOptionalRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get optionValue => $_getI64(0);
  @$pb.TagNumber(1)
  set optionValue($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOptionValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearOptionValue() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
}

class WithOptionalResponse extends $pb.GeneratedMessage {
  factory WithOptionalResponse() => create();
  WithOptionalResponse._() : super();
  factory WithOptionalResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WithOptionalResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WithOptionalResponse', createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'optionValue')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WithOptionalResponse clone() => WithOptionalResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WithOptionalResponse copyWith(void Function(WithOptionalResponse) updates) => super.copyWith((message) => updates(message as WithOptionalResponse)) as WithOptionalResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WithOptionalResponse create() => WithOptionalResponse._();
  WithOptionalResponse createEmptyInstance() => create();
  static $pb.PbList<WithOptionalResponse> createRepeated() => $pb.PbList<WithOptionalResponse>();
  @$core.pragma('dart2js:noInline')
  static WithOptionalResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WithOptionalResponse>(create);
  static WithOptionalResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get optionValue => $_getI64(0);
  @$pb.TagNumber(1)
  set optionValue($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOptionValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearOptionValue() => clearField(1);
}

class WithRepeatedInt64Request extends $pb.GeneratedMessage {
  factory WithRepeatedInt64Request() => create();
  WithRepeatedInt64Request._() : super();
  factory WithRepeatedInt64Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WithRepeatedInt64Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WithRepeatedInt64Request', createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'intArray', $pb.PbFieldType.K6)
    ..aOS(2, _omitFieldNames ? '' : 'type')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WithRepeatedInt64Request clone() => WithRepeatedInt64Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WithRepeatedInt64Request copyWith(void Function(WithRepeatedInt64Request) updates) => super.copyWith((message) => updates(message as WithRepeatedInt64Request)) as WithRepeatedInt64Request;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WithRepeatedInt64Request create() => WithRepeatedInt64Request._();
  WithRepeatedInt64Request createEmptyInstance() => create();
  static $pb.PbList<WithRepeatedInt64Request> createRepeated() => $pb.PbList<WithRepeatedInt64Request>();
  @$core.pragma('dart2js:noInline')
  static WithRepeatedInt64Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WithRepeatedInt64Request>(create);
  static WithRepeatedInt64Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get intArray => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
}

class WithRepeatedInt64Response extends $pb.GeneratedMessage {
  factory WithRepeatedInt64Response() => create();
  WithRepeatedInt64Response._() : super();
  factory WithRepeatedInt64Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WithRepeatedInt64Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WithRepeatedInt64Response', createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'intArray', $pb.PbFieldType.K6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WithRepeatedInt64Response clone() => WithRepeatedInt64Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WithRepeatedInt64Response copyWith(void Function(WithRepeatedInt64Response) updates) => super.copyWith((message) => updates(message as WithRepeatedInt64Response)) as WithRepeatedInt64Response;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WithRepeatedInt64Response create() => WithRepeatedInt64Response._();
  WithRepeatedInt64Response createEmptyInstance() => create();
  static $pb.PbList<WithRepeatedInt64Response> createRepeated() => $pb.PbList<WithRepeatedInt64Response>();
  @$core.pragma('dart2js:noInline')
  static WithRepeatedInt64Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WithRepeatedInt64Response>(create);
  static WithRepeatedInt64Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get intArray => $_getList(0);
}

class WithRepeatedStringIntRequest extends $pb.GeneratedMessage {
  factory WithRepeatedStringIntRequest() => create();
  WithRepeatedStringIntRequest._() : super();
  factory WithRepeatedStringIntRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WithRepeatedStringIntRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WithRepeatedStringIntRequest', createEmptyInstance: create)
    ..pc<StringIntegerValue>(1, _omitFieldNames ? '' : 'stringIntArray', $pb.PbFieldType.PM, subBuilder: StringIntegerValue.create)
    ..aOS(2, _omitFieldNames ? '' : 'type')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WithRepeatedStringIntRequest clone() => WithRepeatedStringIntRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WithRepeatedStringIntRequest copyWith(void Function(WithRepeatedStringIntRequest) updates) => super.copyWith((message) => updates(message as WithRepeatedStringIntRequest)) as WithRepeatedStringIntRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WithRepeatedStringIntRequest create() => WithRepeatedStringIntRequest._();
  WithRepeatedStringIntRequest createEmptyInstance() => create();
  static $pb.PbList<WithRepeatedStringIntRequest> createRepeated() => $pb.PbList<WithRepeatedStringIntRequest>();
  @$core.pragma('dart2js:noInline')
  static WithRepeatedStringIntRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WithRepeatedStringIntRequest>(create);
  static WithRepeatedStringIntRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<StringIntegerValue> get stringIntArray => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
}

class WithRepeatedStringIntResponse extends $pb.GeneratedMessage {
  factory WithRepeatedStringIntResponse() => create();
  WithRepeatedStringIntResponse._() : super();
  factory WithRepeatedStringIntResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WithRepeatedStringIntResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WithRepeatedStringIntResponse', createEmptyInstance: create)
    ..pc<StringIntegerValue>(1, _omitFieldNames ? '' : 'stringIntArray', $pb.PbFieldType.PM, subBuilder: StringIntegerValue.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WithRepeatedStringIntResponse clone() => WithRepeatedStringIntResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WithRepeatedStringIntResponse copyWith(void Function(WithRepeatedStringIntResponse) updates) => super.copyWith((message) => updates(message as WithRepeatedStringIntResponse)) as WithRepeatedStringIntResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WithRepeatedStringIntResponse create() => WithRepeatedStringIntResponse._();
  WithRepeatedStringIntResponse createEmptyInstance() => create();
  static $pb.PbList<WithRepeatedStringIntResponse> createRepeated() => $pb.PbList<WithRepeatedStringIntResponse>();
  @$core.pragma('dart2js:noInline')
  static WithRepeatedStringIntResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WithRepeatedStringIntResponse>(create);
  static WithRepeatedStringIntResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<StringIntegerValue> get stringIntArray => $_getList(0);
}

class WithMapRequest extends $pb.GeneratedMessage {
  factory WithMapRequest() => create();
  WithMapRequest._() : super();
  factory WithMapRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WithMapRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WithMapRequest', createEmptyInstance: create)
    ..m<$core.String, $fixnum.Int64>(1, _omitFieldNames ? '' : 'mapValue', entryClassName: 'WithMapRequest.MapValueEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.O6)
    ..aOS(2, _omitFieldNames ? '' : 'type')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WithMapRequest clone() => WithMapRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WithMapRequest copyWith(void Function(WithMapRequest) updates) => super.copyWith((message) => updates(message as WithMapRequest)) as WithMapRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WithMapRequest create() => WithMapRequest._();
  WithMapRequest createEmptyInstance() => create();
  static $pb.PbList<WithMapRequest> createRepeated() => $pb.PbList<WithMapRequest>();
  @$core.pragma('dart2js:noInline')
  static WithMapRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WithMapRequest>(create);
  static WithMapRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $fixnum.Int64> get mapValue => $_getMap(0);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
}

class WithMapResponse extends $pb.GeneratedMessage {
  factory WithMapResponse() => create();
  WithMapResponse._() : super();
  factory WithMapResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WithMapResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WithMapResponse', createEmptyInstance: create)
    ..m<$core.String, $fixnum.Int64>(1, _omitFieldNames ? '' : 'mapValue', entryClassName: 'WithMapResponse.MapValueEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.O6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WithMapResponse clone() => WithMapResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WithMapResponse copyWith(void Function(WithMapResponse) updates) => super.copyWith((message) => updates(message as WithMapResponse)) as WithMapResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WithMapResponse create() => WithMapResponse._();
  WithMapResponse createEmptyInstance() => create();
  static $pb.PbList<WithMapResponse> createRepeated() => $pb.PbList<WithMapResponse>();
  @$core.pragma('dart2js:noInline')
  static WithMapResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WithMapResponse>(create);
  static WithMapResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $fixnum.Int64> get mapValue => $_getMap(0);
}

enum PrimitiveType_Value_Element {
  text, 
  doubleValue, 
  int64Value, 
  uint64Value, 
  boolean, 
  rawBytes, 
  notSet
}

class PrimitiveType_Value extends $pb.GeneratedMessage {
  factory PrimitiveType_Value() => create();
  PrimitiveType_Value._() : super();
  factory PrimitiveType_Value.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrimitiveType_Value.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, PrimitiveType_Value_Element> _PrimitiveType_Value_ElementByTag = {
    1 : PrimitiveType_Value_Element.text,
    2 : PrimitiveType_Value_Element.doubleValue,
    3 : PrimitiveType_Value_Element.int64Value,
    4 : PrimitiveType_Value_Element.uint64Value,
    5 : PrimitiveType_Value_Element.boolean,
    6 : PrimitiveType_Value_Element.rawBytes,
    0 : PrimitiveType_Value_Element.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PrimitiveType.Value', createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6])
    ..aOS(1, _omitFieldNames ? '' : 'text')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'doubleValue', $pb.PbFieldType.OD)
    ..aInt64(3, _omitFieldNames ? '' : 'int64Value')
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'uint64Value', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(5, _omitFieldNames ? '' : 'boolean')
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'rawBytes', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PrimitiveType_Value clone() => PrimitiveType_Value()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PrimitiveType_Value copyWith(void Function(PrimitiveType_Value) updates) => super.copyWith((message) => updates(message as PrimitiveType_Value)) as PrimitiveType_Value;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrimitiveType_Value create() => PrimitiveType_Value._();
  PrimitiveType_Value createEmptyInstance() => create();
  static $pb.PbList<PrimitiveType_Value> createRepeated() => $pb.PbList<PrimitiveType_Value>();
  @$core.pragma('dart2js:noInline')
  static PrimitiveType_Value getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PrimitiveType_Value>(create);
  static PrimitiveType_Value? _defaultInstance;

  PrimitiveType_Value_Element whichElement() => _PrimitiveType_Value_ElementByTag[$_whichOneof(0)]!;
  void clearElement() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get doubleValue => $_getN(1);
  @$pb.TagNumber(2)
  set doubleValue($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDoubleValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearDoubleValue() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get int64Value => $_getI64(2);
  @$pb.TagNumber(3)
  set int64Value($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInt64Value() => $_has(2);
  @$pb.TagNumber(3)
  void clearInt64Value() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get uint64Value => $_getI64(3);
  @$pb.TagNumber(4)
  set uint64Value($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUint64Value() => $_has(3);
  @$pb.TagNumber(4)
  void clearUint64Value() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get boolean => $_getBF(4);
  @$pb.TagNumber(5)
  set boolean($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBoolean() => $_has(4);
  @$pb.TagNumber(5)
  void clearBoolean() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get rawBytes => $_getN(5);
  @$pb.TagNumber(6)
  set rawBytes($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRawBytes() => $_has(5);
  @$pb.TagNumber(6)
  void clearRawBytes() => clearField(6);
}

class PrimitiveType extends $pb.GeneratedMessage {
  factory PrimitiveType() => create();
  PrimitiveType._() : super();
  factory PrimitiveType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrimitiveType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PrimitiveType', createEmptyInstance: create)
    ..aOM<PrimitiveType_Value>(1, _omitFieldNames ? '' : 'value', subBuilder: PrimitiveType_Value.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PrimitiveType clone() => PrimitiveType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PrimitiveType copyWith(void Function(PrimitiveType) updates) => super.copyWith((message) => updates(message as PrimitiveType)) as PrimitiveType;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrimitiveType create() => PrimitiveType._();
  PrimitiveType createEmptyInstance() => create();
  static $pb.PbList<PrimitiveType> createRepeated() => $pb.PbList<PrimitiveType>();
  @$core.pragma('dart2js:noInline')
  static PrimitiveType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PrimitiveType>(create);
  static PrimitiveType? _defaultInstance;

  @$pb.TagNumber(1)
  PrimitiveType_Value get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(PrimitiveType_Value v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  PrimitiveType_Value ensureValue() => $_ensure(0);
}

enum StringIntegerValue_Value {
  text, 
  number, 
  notSet
}

class StringIntegerValue extends $pb.GeneratedMessage {
  factory StringIntegerValue() => create();
  StringIntegerValue._() : super();
  factory StringIntegerValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StringIntegerValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, StringIntegerValue_Value> _StringIntegerValue_ValueByTag = {
    1 : StringIntegerValue_Value.text,
    2 : StringIntegerValue_Value.number,
    0 : StringIntegerValue_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StringIntegerValue', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, _omitFieldNames ? '' : 'text')
    ..aInt64(2, _omitFieldNames ? '' : 'number')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StringIntegerValue clone() => StringIntegerValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StringIntegerValue copyWith(void Function(StringIntegerValue) updates) => super.copyWith((message) => updates(message as StringIntegerValue)) as StringIntegerValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringIntegerValue create() => StringIntegerValue._();
  StringIntegerValue createEmptyInstance() => create();
  static $pb.PbList<StringIntegerValue> createRepeated() => $pb.PbList<StringIntegerValue>();
  @$core.pragma('dart2js:noInline')
  static StringIntegerValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StringIntegerValue>(create);
  static StringIntegerValue? _defaultInstance;

  StringIntegerValue_Value whichValue() => _StringIntegerValue_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get number => $_getI64(1);
  @$pb.TagNumber(2)
  set number($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumber() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
