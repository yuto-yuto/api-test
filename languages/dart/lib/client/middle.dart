import 'package:dart_grpc/proto/middle.pbserver.dart';
import 'package:grpc/grpc.dart';
import 'package:protobuf/protobuf.dart' as pb;

class MiddleClient {
  final pb.RpcClient client;

  MiddleClient(this.client);

  Future<void> ping() async {
    final ctx = pb.ClientContext(timeout: Duration.zero);
    final request = PingRequest();
    final response = await MiddleApi(client).ping(ctx, request);
    print(response);
  }
}
