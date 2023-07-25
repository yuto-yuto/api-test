//
//  Generated code. Do not modify.
//  source: types_def.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'types_def.pb.dart' as $1;

export 'types_def.pb.dart';

@$pb.GrpcServiceName('TypesDef')
class TypesDefClient extends $grpc.Client {
  static final _$withInt64 = $grpc.ClientMethod<$1.WithInt64RequestResponse, $1.WithInt64RequestResponse>(
      '/TypesDef/WithInt64',
      ($1.WithInt64RequestResponse value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.WithInt64RequestResponse.fromBuffer(value));
  static final _$withOneof = $grpc.ClientMethod<$1.WithOneofRequest, $1.WithOneofResponse>(
      '/TypesDef/WithOneof',
      ($1.WithOneofRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.WithOneofResponse.fromBuffer(value));
  static final _$withPrimitive = $grpc.ClientMethod<$1.WithPrimitiveRequest, $1.WithPrimitiveResponse>(
      '/TypesDef/WithPrimitive',
      ($1.WithPrimitiveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.WithPrimitiveResponse.fromBuffer(value));
  static final _$withOptional = $grpc.ClientMethod<$1.WithOptionalRequest, $1.WithOptionalResponse>(
      '/TypesDef/WithOptional',
      ($1.WithOptionalRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.WithOptionalResponse.fromBuffer(value));
  static final _$withRepeatedInt64 = $grpc.ClientMethod<$1.WithRepeatedInt64Request, $1.WithRepeatedInt64Response>(
      '/TypesDef/WithRepeatedInt64',
      ($1.WithRepeatedInt64Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.WithRepeatedInt64Response.fromBuffer(value));
  static final _$withRepeatedStringInt = $grpc.ClientMethod<$1.WithRepeatedStringIntRequest, $1.WithRepeatedStringIntResponse>(
      '/TypesDef/WithRepeatedStringInt',
      ($1.WithRepeatedStringIntRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.WithRepeatedStringIntResponse.fromBuffer(value));
  static final _$withMap = $grpc.ClientMethod<$1.WithMapRequest, $1.WithMapResponse>(
      '/TypesDef/WithMap',
      ($1.WithMapRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.WithMapResponse.fromBuffer(value));

  TypesDefClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.WithInt64RequestResponse> withInt64($1.WithInt64RequestResponse request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$withInt64, request, options: options);
  }

  $grpc.ResponseFuture<$1.WithOneofResponse> withOneof($1.WithOneofRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$withOneof, request, options: options);
  }

  $grpc.ResponseFuture<$1.WithPrimitiveResponse> withPrimitive($1.WithPrimitiveRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$withPrimitive, request, options: options);
  }

  $grpc.ResponseFuture<$1.WithOptionalResponse> withOptional($1.WithOptionalRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$withOptional, request, options: options);
  }

  $grpc.ResponseFuture<$1.WithRepeatedInt64Response> withRepeatedInt64($1.WithRepeatedInt64Request request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$withRepeatedInt64, request, options: options);
  }

  $grpc.ResponseFuture<$1.WithRepeatedStringIntResponse> withRepeatedStringInt($1.WithRepeatedStringIntRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$withRepeatedStringInt, request, options: options);
  }

  $grpc.ResponseFuture<$1.WithMapResponse> withMap($1.WithMapRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$withMap, request, options: options);
  }
}

@$pb.GrpcServiceName('TypesDef')
abstract class TypesDefServiceBase extends $grpc.Service {
  $core.String get $name => 'TypesDef';

  TypesDefServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.WithInt64RequestResponse, $1.WithInt64RequestResponse>(
        'WithInt64',
        withInt64_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.WithInt64RequestResponse.fromBuffer(value),
        ($1.WithInt64RequestResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.WithOneofRequest, $1.WithOneofResponse>(
        'WithOneof',
        withOneof_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.WithOneofRequest.fromBuffer(value),
        ($1.WithOneofResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.WithPrimitiveRequest, $1.WithPrimitiveResponse>(
        'WithPrimitive',
        withPrimitive_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.WithPrimitiveRequest.fromBuffer(value),
        ($1.WithPrimitiveResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.WithOptionalRequest, $1.WithOptionalResponse>(
        'WithOptional',
        withOptional_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.WithOptionalRequest.fromBuffer(value),
        ($1.WithOptionalResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.WithRepeatedInt64Request, $1.WithRepeatedInt64Response>(
        'WithRepeatedInt64',
        withRepeatedInt64_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.WithRepeatedInt64Request.fromBuffer(value),
        ($1.WithRepeatedInt64Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.WithRepeatedStringIntRequest, $1.WithRepeatedStringIntResponse>(
        'WithRepeatedStringInt',
        withRepeatedStringInt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.WithRepeatedStringIntRequest.fromBuffer(value),
        ($1.WithRepeatedStringIntResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.WithMapRequest, $1.WithMapResponse>(
        'WithMap',
        withMap_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.WithMapRequest.fromBuffer(value),
        ($1.WithMapResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.WithInt64RequestResponse> withInt64_Pre($grpc.ServiceCall call, $async.Future<$1.WithInt64RequestResponse> request) async {
    return withInt64(call, await request);
  }

  $async.Future<$1.WithOneofResponse> withOneof_Pre($grpc.ServiceCall call, $async.Future<$1.WithOneofRequest> request) async {
    return withOneof(call, await request);
  }

  $async.Future<$1.WithPrimitiveResponse> withPrimitive_Pre($grpc.ServiceCall call, $async.Future<$1.WithPrimitiveRequest> request) async {
    return withPrimitive(call, await request);
  }

  $async.Future<$1.WithOptionalResponse> withOptional_Pre($grpc.ServiceCall call, $async.Future<$1.WithOptionalRequest> request) async {
    return withOptional(call, await request);
  }

  $async.Future<$1.WithRepeatedInt64Response> withRepeatedInt64_Pre($grpc.ServiceCall call, $async.Future<$1.WithRepeatedInt64Request> request) async {
    return withRepeatedInt64(call, await request);
  }

  $async.Future<$1.WithRepeatedStringIntResponse> withRepeatedStringInt_Pre($grpc.ServiceCall call, $async.Future<$1.WithRepeatedStringIntRequest> request) async {
    return withRepeatedStringInt(call, await request);
  }

  $async.Future<$1.WithMapResponse> withMap_Pre($grpc.ServiceCall call, $async.Future<$1.WithMapRequest> request) async {
    return withMap(call, await request);
  }

  $async.Future<$1.WithInt64RequestResponse> withInt64($grpc.ServiceCall call, $1.WithInt64RequestResponse request);
  $async.Future<$1.WithOneofResponse> withOneof($grpc.ServiceCall call, $1.WithOneofRequest request);
  $async.Future<$1.WithPrimitiveResponse> withPrimitive($grpc.ServiceCall call, $1.WithPrimitiveRequest request);
  $async.Future<$1.WithOptionalResponse> withOptional($grpc.ServiceCall call, $1.WithOptionalRequest request);
  $async.Future<$1.WithRepeatedInt64Response> withRepeatedInt64($grpc.ServiceCall call, $1.WithRepeatedInt64Request request);
  $async.Future<$1.WithRepeatedStringIntResponse> withRepeatedStringInt($grpc.ServiceCall call, $1.WithRepeatedStringIntRequest request);
  $async.Future<$1.WithMapResponse> withMap($grpc.ServiceCall call, $1.WithMapRequest request);
}
