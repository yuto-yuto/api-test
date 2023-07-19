//
//  Generated code. Do not modify.
//  source: middle.proto
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

import 'middle.pb.dart' as $0;

export 'middle.pb.dart';

@$pb.GrpcServiceName('Middle')
class MiddleClient extends $grpc.Client {
  static final _$ping = $grpc.ClientMethod<$0.PingRequest, $0.PingResponse>(
      '/Middle/Ping',
      ($0.PingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PingResponse.fromBuffer(value));
  static final _$sayHello = $grpc.ClientMethod<$0.HelloRequest, $0.HelloResponse>(
      '/Middle/SayHello',
      ($0.HelloRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.HelloResponse.fromBuffer(value));
  static final _$download = $grpc.ClientMethod<$0.DownloadRequest, $0.DownloadResponse>(
      '/Middle/Download',
      ($0.DownloadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DownloadResponse.fromBuffer(value));
  static final _$upload = $grpc.ClientMethod<$0.UploadRequest, $0.UploadResponse>(
      '/Middle/Upload',
      ($0.UploadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UploadResponse.fromBuffer(value));
  static final _$communicate = $grpc.ClientMethod<$0.CommunicateRequest, $0.CommunicateResponse>(
      '/Middle/Communicate',
      ($0.CommunicateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CommunicateResponse.fromBuffer(value));

  MiddleClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.PingResponse> ping($0.PingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ping, request, options: options);
  }

  $grpc.ResponseFuture<$0.HelloResponse> sayHello($0.HelloRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sayHello, request, options: options);
  }

  $grpc.ResponseStream<$0.DownloadResponse> download($0.DownloadRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$download, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.UploadResponse> upload($async.Stream<$0.UploadRequest> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$upload, request, options: options).single;
  }

  $grpc.ResponseStream<$0.CommunicateResponse> communicate($async.Stream<$0.CommunicateRequest> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$communicate, request, options: options);
  }
}

@$pb.GrpcServiceName('Middle')
abstract class MiddleServiceBase extends $grpc.Service {
  $core.String get $name => 'Middle';

  MiddleServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.PingRequest, $0.PingResponse>(
        'Ping',
        ping_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PingRequest.fromBuffer(value),
        ($0.PingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.HelloRequest, $0.HelloResponse>(
        'SayHello',
        sayHello_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.HelloRequest.fromBuffer(value),
        ($0.HelloResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DownloadRequest, $0.DownloadResponse>(
        'Download',
        download_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.DownloadRequest.fromBuffer(value),
        ($0.DownloadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UploadRequest, $0.UploadResponse>(
        'Upload',
        upload,
        true,
        false,
        ($core.List<$core.int> value) => $0.UploadRequest.fromBuffer(value),
        ($0.UploadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CommunicateRequest, $0.CommunicateResponse>(
        'Communicate',
        communicate,
        true,
        true,
        ($core.List<$core.int> value) => $0.CommunicateRequest.fromBuffer(value),
        ($0.CommunicateResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.PingResponse> ping_Pre($grpc.ServiceCall call, $async.Future<$0.PingRequest> request) async {
    return ping(call, await request);
  }

  $async.Future<$0.HelloResponse> sayHello_Pre($grpc.ServiceCall call, $async.Future<$0.HelloRequest> request) async {
    return sayHello(call, await request);
  }

  $async.Stream<$0.DownloadResponse> download_Pre($grpc.ServiceCall call, $async.Future<$0.DownloadRequest> request) async* {
    yield* download(call, await request);
  }

  $async.Future<$0.PingResponse> ping($grpc.ServiceCall call, $0.PingRequest request);
  $async.Future<$0.HelloResponse> sayHello($grpc.ServiceCall call, $0.HelloRequest request);
  $async.Stream<$0.DownloadResponse> download($grpc.ServiceCall call, $0.DownloadRequest request);
  $async.Future<$0.UploadResponse> upload($grpc.ServiceCall call, $async.Stream<$0.UploadRequest> request);
  $async.Stream<$0.CommunicateResponse> communicate($grpc.ServiceCall call, $async.Stream<$0.CommunicateRequest> request);
}
