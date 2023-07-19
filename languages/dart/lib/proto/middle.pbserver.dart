//
//  Generated code. Do not modify.
//  source: middle.proto
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

import 'middle.pb.dart' as $1;
import 'middle.pbjson.dart';

export 'middle.pb.dart';

abstract class MiddleServiceBase extends $pb.GeneratedService {
  $async.Future<$1.PingResponse> ping($pb.ServerContext ctx, $1.PingRequest request);
  $async.Future<$1.HelloResponse> sayHello($pb.ServerContext ctx, $1.HelloRequest request);
  $async.Future<$1.DownloadResponse> download($pb.ServerContext ctx, $1.DownloadRequest request);
  $async.Future<$1.UploadResponse> upload($pb.ServerContext ctx, $1.UploadRequest request);
  $async.Future<$1.CommunicateResponse> communicate($pb.ServerContext ctx, $1.CommunicateRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'Ping': return $1.PingRequest();
      case 'SayHello': return $1.HelloRequest();
      case 'Download': return $1.DownloadRequest();
      case 'Upload': return $1.UploadRequest();
      case 'Communicate': return $1.CommunicateRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'Ping': return this.ping(ctx, request as $1.PingRequest);
      case 'SayHello': return this.sayHello(ctx, request as $1.HelloRequest);
      case 'Download': return this.download(ctx, request as $1.DownloadRequest);
      case 'Upload': return this.upload(ctx, request as $1.UploadRequest);
      case 'Communicate': return this.communicate(ctx, request as $1.CommunicateRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => MiddleServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => MiddleServiceBase$messageJson;
}

