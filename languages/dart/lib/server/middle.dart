import "package:dart_grpc/proto/middle.pbgrpc.dart" as pb;
import "package:dart_grpc/proto/google/protobuf/timestamp.pb.dart"
    as timestampPb;
import "package:grpc/grpc.dart";
import "package:protobuf/protobuf.dart";

class MiddleService extends pb.MiddleServiceBase {
  @override
  Future<pb.PingResponse> ping(ServiceCall call, pb.PingRequest request) async {
    return pb.PingResponse()..timestamp = timestampPb.Timestamp();
  }

  @override
  Future<pb.HelloResponse> sayHello(
    ServiceCall call,
    pb.HelloRequest request,
  ) {
    // TODO: implement sayHello
    throw UnimplementedError();
  }

  @override
  Stream<pb.CommunicateResponse> communicate(
      ServiceCall call, Stream<pb.CommunicateRequest> request) {
    // TODO: implement communicate
    throw UnimplementedError();
  }

  @override
  Stream<pb.DownloadResponse> download(
      ServiceCall call, pb.DownloadRequest request) {
    // TODO: implement download
    throw UnimplementedError();
  }

  @override
  Future<pb.UploadResponse> upload(
      ServiceCall call, Stream<pb.UploadRequest> request) {
    // TODO: implement upload
    throw UnimplementedError();
  }
}
