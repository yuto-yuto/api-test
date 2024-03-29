import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:dart_grpc/proto/middle.pbgrpc.dart' as rpc;
import 'package:dart_grpc/server/timestamp.dart';
import 'package:grpc/grpc.dart';
import 'package:path/path.dart' as p;
import 'package:fixnum/fixnum.dart' as $fixnum;

class MiddleServiceHandler {
  final rpc.MiddleClient client;
  final resourcePath = "/workspaces/api-test/languages/dart/resouces/client/";

  MiddleServiceHandler(this.client);

  Future<void> ping() async {
    print("--- ping ---");
    try {
      final request = rpc.PingRequest();
      final response = await client.ping(request);
      print("timestamp: ${TimestampParser.from(response.timestamp)}");
    } catch (e) {
      print("caught an error: $e");
    }
  }

  Future<void> sayHello() async {
    print("--- sayHello ---");
    try {
      final request = rpc.HelloRequest()..name = "Yuto";
      final response = await client.sayHello(request);
      print(response.message);
    } catch (e) {
      print("caught an error: $e");
    }
  }

  Future<void> download(String filename, int timeoutMs) async {
    print("--- download ---");
    try {
      final request = rpc.DownloadRequest()..filename = filename;
      final responses = client.download(
        request,
        options: CallOptions(timeout: Duration(milliseconds: timeoutMs)),
      );

      var count = 0;
      var lines = [];
      await for (final res in responses) {
        print("received(${++count}): ${res.line}");
        lines.add(res.line);
      }
      print("download completed");
      print("content: $lines");
    } on GrpcError catch (e) {
      print("caught an GrpcError: $e");
    } catch (e) {
      print("caught an error: $e");
    }
  }

  Future<void> upload(String filename, int timeoutMs) async {
    Stream<rpc.UploadRequest> readFile() async* {
      final absPath = p.join(resourcePath, "data.txt");
      final file = File(absPath);
      final lines = file
          .openRead() //
          .transform(utf8.decoder)
          .transform(LineSplitter())
          .transform(utf8.encoder);

      await for (final lineBytes in lines) {
        final request = rpc.UploadRequest();
        request.filename = filename;
        request.chunk = lineBytes;
        Future.delayed(Duration(milliseconds: 300));
        yield request;
      }
    }

    print("--- upload ---");
    try {
      final response = await client.upload(
        readFile(),
        options: CallOptions(timeout: Duration(milliseconds: timeoutMs)),
      );

      print("upload completed\n");
      print("response: {$response}");
    } on GrpcError catch (e) {
      print("caught an GrpcError: $e");
    } catch (e) {
      print("caught an error: $e");
    }
  }

  Future<void> communicate() async {
    print("--- communicate ---");
    try {
      var currentValue = $fixnum.Int64(3);
      final requestStream = StreamController<rpc.CommunicateRequest>();

      final response = client.communicate(
        requestStream.stream.map((request) => request),
        options: CallOptions(timeout: Duration(seconds: 3)),
      );

      final req = rpc.CommunicateRequest();
      req.max = $fixnum.Int64(5);
      req.value = $fixnum.Int64(3);
      requestStream.add(req);

      var count = 0;
      try {
        await for (final res in response) {
          print("received(${++count}): ${res.value}");
          final randomValue = Random().nextInt(10);
          if (randomValue > 8) {
            throw Exception("generated random value was bigger than 8");
          }
          final req = rpc.CommunicateRequest();
          currentValue = res.value;
          req.value = currentValue + randomValue;
          requestStream.add(req);
        }
      } catch (e) {
        rethrow;
      } finally {
        await response.cancel();
      }

      print("communicate completed\n");
    } on GrpcError catch (e) {
      print("caught an GrpcError: $e");
    } catch (e) {
      print("caught an error: $e");
    }
  }
}
