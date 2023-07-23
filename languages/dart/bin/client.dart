import 'package:dart_grpc/client/middle.dart';
import 'package:dart_grpc/proto/middle.pbgrpc.dart';
import 'package:grpc/grpc.dart' as grpc;

Future<void> main(List<String> arguments) async {
  final channel = grpc.ClientChannel(
    'localhost',
    port: 8080,
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
  await handler.download("test_file.txt", 500);
  await handler.download("error", 1000);
  await handler.download("unknown_file.txt", 1000);
  await handler.download("test_file.txt", 1000);
  await handler.upload("error", 500);
  await handler.upload("data.txt", 100);
  await handler.upload("data.txt", 10000);
  await handler.communicate();

  await channel.shutdown();
}
