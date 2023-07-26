import 'package:dart_grpc/client/middle.dart';
import 'package:dart_grpc/client/types_def.dart';
import 'package:dart_grpc/proto/middle.pbgrpc.dart';
import 'package:dart_grpc/proto/types_def.pbgrpc.dart';
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

  // final client = MiddleClient(channel);
  // final handler = MiddleServiceHandler(client);

  // await handler.ping();
  // await handler.sayHello();
  // await handler.download("test_file.txt", 500);
  // await handler.download("error", 1000);
  // await handler.download("unknown_file.txt", 1000);
  // await handler.download("test_file.txt", 1000);
  // await handler.upload("error", 500);
  // await handler.upload("data.txt", 100);
  // await handler.upload("data.txt", 10000);
  // await handler.communicate();

  final typeClient = TypesDefClient(channel);
  final typeHandler = TypesDefServiceHandler(typeClient);

  await typeHandler.withInt64(0);
  await typeHandler.withInt64(123);

  await typeHandler.withMap();
  await typeHandler.withMap(type: "dummy type");

  await typeHandler.withOneof();
  await typeHandler.withOneof(type: "both");
  await typeHandler.withOneof(type: "number");
  await typeHandler.withOneof(type: "string");

  await typeHandler.withOptional();
  await typeHandler.withOptional(type: "number");
  await typeHandler.withOptional(type: "empty");

  await typeHandler.withPrimitive();
  await typeHandler.withPrimitive(type: "int64");
  await typeHandler.withPrimitive(type: "text");
  await typeHandler.withPrimitive(type: "bytes");

  await typeHandler.withRepeatedInt64();
  await typeHandler.withRepeatedInt64(type: "number");

  await typeHandler.withRepeatedStringInt();
  await typeHandler.withRepeatedStringInt(type: "number");
  await typeHandler.withRepeatedStringInt(type: "mix");

  await typeHandler.withEnum();
  await typeHandler.withEnum(state: DeviceState.DEVICE_STATE_READY);
  await typeHandler.withEnum(state: DeviceState.DEVICE_STATE_RUNNING);
  await typeHandler.withEnum(state: DeviceState.DEVICE_STATE_STOP);

  await channel.shutdown();
}
