import 'dart:async';

import 'package:dart_grpc/proto/types_def.pbgrpc.dart' as rpc;
import 'package:fixnum/fixnum.dart' as $fixnum;

class TypesDefServiceHandler {
  final rpc.TypesDefClient client;

  TypesDefServiceHandler(this.client);

  Future<void> withInt64(int value) async {
    print("--- withInt64 ---");
    final request = rpc.WithInt64RequestResponse();

    if (value != 0) {
      request.value = $fixnum.Int64(123);
    }

    final result = await client.withInt64(request);
    print("(has: ${result.hasValue()}, value: ${result.value})");
  }

  Future<void> withMap({String type = ""}) async {
    print("--- withMap ---");
    final request = rpc.WithMapRequest();

    if (type.isNotEmpty) {
      request
        ..mapValue["first"] = $fixnum.Int64(111)
        ..mapValue["second"] = $fixnum.Int64(222)
        ..type = "empty";
    }

    final result = await client.withMap(request);
    print("value: ${result.mapValue}");
  }

  Future<void> withOneof({String type = ""}) async {
    print("--- withOneof ---");
    final request = rpc.WithOneofRequest();

    if (type == "number") {
      request
        ..number = $fixnum.Int64(111)
        ..type = type;
    } else if (type == "string") {
      request
        ..text = "dummy text"
        ..type = type;
    } else if (type.isNotEmpty) {
      request
        ..number = $fixnum.Int64(111)
        ..text = "dummy text"
        ..type = type;
    }

    final result = await client.withOneof(request);
    print("which: ${result.whichOneOfValue()}");
    print("(has: ${result.hasNumber()}, number: ${result.number})");
    print("(has: ${result.hasText()}, text: ${result.text})");
  }

  Future<void> withOptional({String type = ""}) async {
    print("--- withOptional ---");
    final request = rpc.WithOptionalRequest();

    if (type == "number") {
      request
        ..optionValue = $fixnum.Int64(111)
        ..type = type;
    } else if (type == "empty") {
      request.type = type;
    }

    final result = await client.withOptional(request);
    print("(has: ${result.hasOptionValue()}, value: ${result.optionValue})");
  }

  Future<void> withPrimitive({String type = ""}) async {
    print("--- withPrimitive ---");
    final primitive = rpc.PrimitiveType()..value = rpc.PrimitiveType_Value();
    final request = rpc.WithPrimitiveRequest()..primitive = primitive;

    switch (type) {
      case "text":
        request.primitive.value.text = "dummy text";
        break;
      case "double":
        request.primitive.value.doubleValue = 2.22;
        break;
      case "int64":
        request.primitive.value.int64Value = $fixnum.Int64(123);
        break;
      case "uint64":
        request.primitive.value.uint64Value = $fixnum.Int64(567);
        break;
      case "bool":
        request.primitive.value.boolean = true;
        break;
      case "bytes":
        request.primitive.value.rawBytes = [48, 49, 50];
        break;
    }

    final result = await client.withPrimitive(request);
    print("(has: ${result.hasPrimitive()}"
        ", value: ${result.primitive.value})");
  }

  Future<void> withRepeatedInt64({String type = ""}) async {
    print("--- withRepeatedInt64 ---");
    final request = rpc.WithRepeatedInt64Request()..type = type;

    if (type == "number") {
      request.intArray.addAll([
        $fixnum.Int64(11),
        $fixnum.Int64(22),
      ]);
    }

    final result = await client.withRepeatedInt64(request);
    print("value: ${result.intArray}");
  }

  Future<void> withRepeatedStringInt({String type = ""}) async {
    print("--- withRepeatedStringInt ---");
    final request = rpc.WithRepeatedStringIntRequest()..type = type;

    if (type == "number") {
      request.stringIntArray.addAll([
        rpc.StringIntegerValue()..number = $fixnum.Int64(11),
        rpc.StringIntegerValue()..number = $fixnum.Int64(22),
      ]);
    } else if (type == "mix") {
      request.stringIntArray.addAll([
        rpc.StringIntegerValue()..number = $fixnum.Int64(11),
        rpc.StringIntegerValue(),
        rpc.StringIntegerValue()..text = "dummy data 22",
      ]);
    }

    final result = await client.withRepeatedStringInt(request);
    for (final value in result.stringIntArray) {
      print("value: ${value}");
      print("whichElement: ${value.whichValue()})");
      print("(hasNumber: ${value.hasNumber()}, value: ${value.number})");
      print("(hasText: ${value.hasText()}, value: ${value.text})");
    }
  }

  Future<void> withEnum({rpc.DeviceState? state}) async {
    print("--- withEnum ---");
    final request = rpc.WithEnumRequestResponse();
    if (state != null) {
      request.state = state;
    }
    final result = await client.withEnum(request);
    print("value: ${result.state}");
  }
}
