import 'dart:io';

import 'package:dart_grpc/server/middle.dart';
import 'package:grpc/grpc.dart';

Future<void> main(List<String> arguments) async {
  final udsAddress =
      InternetAddress('localhost', type: InternetAddressType.unix);
  final server = Server.create(services: [MiddleService()]);
  await server.serve(address: udsAddress);
  print('Start UNIX Server @localhost...');
}
