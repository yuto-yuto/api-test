import "dart:convert";
import "dart:io";
import "dart:math";

import "package:dart_grpc/proto/middle.pbgrpc.dart" as rpc;
import "package:dart_grpc/server/timestamp.dart";
import "package:grpc/grpc.dart";
import 'package:path/path.dart' as p;
import 'package:fixnum/fixnum.dart' as $fixnum;

class MiddleService extends rpc.MiddleServiceBase {
  final resourcePath = "/workspaces/api-test/languages/dart/resouces/server/";

  @override
  Future<rpc.PingResponse> ping(
      ServiceCall call, rpc.PingRequest request) async {
    return rpc.PingResponse()
      ..timestamp = TimestampParser.parse(DateTime.now());
  }

  @override
  Future<rpc.HelloResponse> sayHello(
    ServiceCall call,
    rpc.HelloRequest request,
  ) async {
    final response = rpc.HelloResponse()..message = "Hello ${request.name}";
    return response;
  }

  @override
  Stream<rpc.DownloadResponse> download(
      ServiceCall call, rpc.DownloadRequest request) async* {
    try {
      if (request.filename == "error") {
        call.sendTrailers(
          status: StatusCode.invalidArgument,
          message: "error file can't be specified",
        );
        return;
      }

      await Future.delayed(Duration(milliseconds: 500));
      final absPath = p.join(resourcePath, request.filename);
      final file = File(absPath);
      final lines = file
          .openRead() //
          .transform(utf8.decoder)
          .transform(LineSplitter());

      print("lines for loop");
      await for (final line in lines) {
        yield rpc.DownloadResponse()..line = line;
      }
      print("download process completed");
    } on GrpcError catch (e) {
      print("caught an GrpcError in download: $e");
    } catch (e) {
      print("caught an error in download: $e");
    } finally {
      if (call.isCanceled) {
        print("download was cancelled");
      }
    }
  }

  @override
  Future<rpc.UploadResponse> upload(
      ServiceCall call, Stream<rpc.UploadRequest> request) async {
    var writtenSize = 0;

    print("--- upload was triggered ---");

    try {
      var count = 0;
      var content = [];
      await for (final req in request) {
        if (req.filename == "error") {
          throw ArgumentError("filename must not be 'error'");
        }

        await Future.delayed(Duration(milliseconds: 100));

        writtenSize += req.chunk.length;
        final line = utf8.decode(req.chunk);
        print("received(${++count}):${req.filename}, $line");
        content.add(line);
      }

      print("upload completed");
      print("content: ${content.join("\n")}");

      final response = rpc.UploadResponse();
      response.message = "COMPLETED";
      response.writtenSize = $fixnum.Int64(writtenSize);
      response.result = true;
      return response;
    } on GrpcError catch (e) {
      print("caught an GrpcError in upload: $e");
    } on ArgumentError catch (e) {
      print("caught an ArgumentError. Set trailers");
      call.sendTrailers(
        status: StatusCode.invalidArgument,
        message: e.message,
      );
    } catch (e) {
      print("caught an error in upload: $e");
    } finally {
      if (call.isCanceled) {
        print("upload canceled");
      }
    }

    final response = rpc.UploadResponse();
    response.message = "FAILED";
    response.writtenSize = $fixnum.Int64(writtenSize);
    response.result = false;
    return response;
  }

  @override
  Stream<rpc.CommunicateResponse> communicate(
      ServiceCall call, Stream<rpc.CommunicateRequest> request) async* {
    var isFirst = true;
    var maxCount = 0;
    var currentCount = 0;

    print("--- communicate was triggered ---");

    try {
      await for (final req in request) {
        // print(req);
        if (isFirst) {
          isFirst = false;
          maxCount = req.max.toInt();
          if (maxCount <= 0) {
            maxCount = 3;
          }
        }
        currentCount++;
        if (currentCount > maxCount) {
          break;
        }

        print("received($currentCount): ${req.value}");

        final randomValue = Random().nextInt(100);
        if (randomValue >= 80) {
          throw Exception("generated random value was bigger than 80");
        }
        print("generated($currentCount): $randomValue");

        final sum = req.value + randomValue;
        final response = rpc.CommunicateResponse();
        response.currentCount = $fixnum.Int64(currentCount);
        response.value = sum;
        yield response;
      }
    } on GrpcError catch (e) {
      print("caught an GrpcError in upload: $e");
    } catch (e) {
      print("caught an error in communicate: $e");
      call.sendTrailers(status: StatusCode.aborted, message: e.toString());

      rethrow;
    } finally {
      if (call.isCanceled) {
        print("communication was canceled");
      }
    }
    print("communicate completed");
  }
}
