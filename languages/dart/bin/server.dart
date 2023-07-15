import 'dart:io';

import 'package:dart_grpc/server/middle.dart';
import 'package:grpc/grpc.dart';

Future<void> main(List<String> arguments) async {
  final server = Server.create(
    services: [MiddleService()],
    codecRegistry: CodecRegistry(codecs: const [
      GzipCodec(),
      IdentityCodec(),
    ]),
  );
  await server.serve(port: 50051);
  print('Server listening on port ${server.port}...');
}
