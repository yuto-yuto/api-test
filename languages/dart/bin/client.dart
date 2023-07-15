import 'package:dart_grpc/client/middle.dart';
import 'package:dart_grpc/proto/middle.pbgrpc.dart';
import 'package:grpc/grpc.dart' as grpc;

Future<void> main(List<String> arguments) async {
  final channel = grpc.ClientChannel(
    'localhost',
    port: 50051,
    options: grpc.ChannelOptions(
      credentials: grpc.ChannelCredentials.insecure(),
      codecRegistry: grpc.CodecRegistry(codecs: const [
        grpc.GzipCodec(),
        grpc.IdentityCodec(),
      ]),
    ),
  );
  final client = MiddleClient(channel);
  final handler = MiddleServiceHandler(client);

  await handler.ping();
  await handler.sayHello();
  await handler.download();
  await handler.upload();
  await handler.communicate();

  await channel.shutdown();
}
