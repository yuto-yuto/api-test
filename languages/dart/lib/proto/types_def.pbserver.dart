//
//  Generated code. Do not modify.
//  source: types_def.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'types_def.pb.dart' as $2;
import 'types_def.pbjson.dart';

export 'types_def.pb.dart';

abstract class TypesDefServiceBase extends $pb.GeneratedService {
  $async.Future<$2.WithInt64RequestResponse> withInt64($pb.ServerContext ctx, $2.WithInt64RequestResponse request);
  $async.Future<$2.WithOneofResponse> withOneof($pb.ServerContext ctx, $2.WithOneofRequest request);
  $async.Future<$2.WithPrimitiveResponse> withPrimitive($pb.ServerContext ctx, $2.WithPrimitiveRequest request);
  $async.Future<$2.WithOptionalResponse> withOptional($pb.ServerContext ctx, $2.WithOptionalRequest request);
  $async.Future<$2.WithRepeatedInt64Response> withRepeatedInt64($pb.ServerContext ctx, $2.WithRepeatedInt64Request request);
  $async.Future<$2.WithRepeatedStringIntResponse> withRepeatedStringInt($pb.ServerContext ctx, $2.WithRepeatedStringIntRequest request);
  $async.Future<$2.WithMapResponse> withMap($pb.ServerContext ctx, $2.WithMapRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'WithInt64': return $2.WithInt64RequestResponse();
      case 'WithOneof': return $2.WithOneofRequest();
      case 'WithPrimitive': return $2.WithPrimitiveRequest();
      case 'WithOptional': return $2.WithOptionalRequest();
      case 'WithRepeatedInt64': return $2.WithRepeatedInt64Request();
      case 'WithRepeatedStringInt': return $2.WithRepeatedStringIntRequest();
      case 'WithMap': return $2.WithMapRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'WithInt64': return this.withInt64(ctx, request as $2.WithInt64RequestResponse);
      case 'WithOneof': return this.withOneof(ctx, request as $2.WithOneofRequest);
      case 'WithPrimitive': return this.withPrimitive(ctx, request as $2.WithPrimitiveRequest);
      case 'WithOptional': return this.withOptional(ctx, request as $2.WithOptionalRequest);
      case 'WithRepeatedInt64': return this.withRepeatedInt64(ctx, request as $2.WithRepeatedInt64Request);
      case 'WithRepeatedStringInt': return this.withRepeatedStringInt(ctx, request as $2.WithRepeatedStringIntRequest);
      case 'WithMap': return this.withMap(ctx, request as $2.WithMapRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => TypesDefServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => TypesDefServiceBase$messageJson;
}

