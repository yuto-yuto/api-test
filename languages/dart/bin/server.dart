import 'package:dart_grpc/server/middle.dart';
import 'package:dart_grpc/server/types_def.dart';
import 'package:grpc/grpc.dart';

Future<void> main(List<String> arguments) async {
  final server = Server.create(
    services: [
      MiddleService(),
      TypesDefService(),
    ],
    codecRegistry: CodecRegistry(codecs: const [
      GzipCodec(),
      IdentityCodec(),
    ]),
  );
  await server.serve(port: 8080);
  print('Server listening on port ${server.port}...');
}
