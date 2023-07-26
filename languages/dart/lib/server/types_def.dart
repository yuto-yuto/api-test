import "package:dart_grpc/proto/types_def.pb.dart";
import "package:dart_grpc/proto/types_def.pbgrpc.dart" as rpc;
import "package:grpc/grpc.dart";
import 'package:fixnum/fixnum.dart' as $fixnum;

class TypesDefService extends rpc.TypesDefServiceBase {
  @override
  Future<rpc.WithInt64RequestResponse> withInt64(
    ServiceCall ctx,
    rpc.WithInt64RequestResponse request,
  ) async {
    print("--- withInt64 ---");
    print("value: ${request.value.toString()}");

    if (request.value == 0) {
      return rpc.WithInt64RequestResponse();
    }

    return rpc.WithInt64RequestResponse()..value = $fixnum.Int64(11);
  }

  @override
  Future<rpc.WithMapResponse> withMap(
    ServiceCall ctx,
    rpc.WithMapRequest request,
  ) async {
    print("--- withMap ---");
    print("value: ${request.mapValue.toString()}, "
        "length: ${request.mapValue.length}");

    if (request.mapValue.isEmpty) {
      return rpc.WithMapResponse();
    }

    return rpc.WithMapResponse()
      ..mapValue["first"] = $fixnum.Int64(11)
      ..mapValue["second"] = $fixnum.Int64(22);
  }

  @override
  Future<rpc.WithOneofResponse> withOneof(
    ServiceCall ctx,
    rpc.WithOneofRequest request,
  ) async {
    print("--- withOneof ---");
    print("which: ${request.whichOneOfValue()}");
    print("text: (${request.hasText()}, ${request.text})");
    print("number: (${request.hasNumber()}, ${request.number})");
    print("type: ${request.type}");

    if (request.whichOneOfValue() == rpc.WithOneofRequest_OneOfValue.notSet) {
      return rpc.WithOneofResponse();
    }

    if (request.number == 99) {
      return rpc.WithOneofResponse()
        ..number = $fixnum.Int64(11)
        ..text = "dummy text";
    }

    if (request.hasNumber()) {
      return rpc.WithOneofResponse()..number = $fixnum.Int64(11);
    }

    return rpc.WithOneofResponse()..text = "dummy text";
  }

  @override
  Future<rpc.WithOptionalResponse> withOptional(
    ServiceCall ctx,
    rpc.WithOptionalRequest request,
  ) async {
    print("--- withOptional ---");
    print("optionValue: (${request.hasOptionValue()}, ${request.optionValue})"
        ", type: (${request.hasType()}, ${request.type})");

    if (request.hasOptionValue()) {
      return rpc.WithOptionalResponse()..optionValue = $fixnum.Int64(11);
    }

    return rpc.WithOptionalResponse();
  }

  @override
  Future<rpc.WithPrimitiveResponse> withPrimitive(
    ServiceCall ctx,
    rpc.WithPrimitiveRequest request,
  ) async {
    print("--- withPrimitive ---");
    print("hasPrimitive: ${request.hasPrimitive()}");
    print("value: ${request.primitive.value}");
    print("whichElement: ${request.primitive.value.whichElement()})");
    print("(has: ${request.hasType()}, type: ${request.type})");

    final primitive = rpc.PrimitiveType()..value = rpc.PrimitiveType_Value();
    final response = rpc.WithPrimitiveResponse()..primitive = primitive;
    final element = request.primitive.value.whichElement();
    final tagNumber = request.primitive.value.getTagNumber(element.name) ?? 0;
    print("element: $element, tagNumber: $tagNumber)");

    if (element != PrimitiveType_Value_Element.notSet) {
      response.primitive.value.setField(
        tagNumber,
        request.primitive.value.getField(tagNumber),
      );
    }

    return response;
  }

  @override
  Future<rpc.WithRepeatedInt64Response> withRepeatedInt64(
    ServiceCall ctx,
    rpc.WithRepeatedInt64Request request,
  ) async {
    print("--- withRepeatedInt64 ---");
    print("(value: ${request.intArray}, type: ${request.type})");

    final response = rpc.WithRepeatedInt64Response();
    if (request.type.isNotEmpty) {
      response.intArray.addAll([
        $fixnum.Int64(9),
        $fixnum.Int64(8),
        $fixnum.Int64(7),
      ]);
    }

    return response;
  }

  @override
  Future<rpc.WithRepeatedStringIntResponse> withRepeatedStringInt(
    ServiceCall ctx,
    rpc.WithRepeatedStringIntRequest request,
  ) async {
    print("--- withRepeatedStringInt ---");
    for (final value in request.stringIntArray) {
      print("value: ${value}");
      print("whichElement: ${value.whichValue()})");
      print("(hasNumber: ${value.hasNumber()}, value: ${value.number})");
      print("(hasText: ${value.hasText()}, value: ${value.text})");
    }

    final response = rpc.WithRepeatedStringIntResponse();
    if (request.type == "number") {
      response.stringIntArray.addAll([
        rpc.StringIntegerValue()..number = $fixnum.Int64(9),
        rpc.StringIntegerValue()..number = $fixnum.Int64(8),
        rpc.StringIntegerValue()..number = $fixnum.Int64(7),
      ]);
    } else if (request.type == "mix") {
      response.stringIntArray.addAll([
        rpc.StringIntegerValue()..number = $fixnum.Int64(9),
        rpc.StringIntegerValue()..text = "eight",
        rpc.StringIntegerValue()..number = $fixnum.Int64(7),
      ]);
    }

    return response;
  }

  @override
  Future<WithEnumRequestResponse> withEnum(
    ServiceCall call,
    WithEnumRequestResponse request,
  ) async {
    print("--- withEnum ---");
    print("(has: ${request.hasState()}, state: ${request.state})");

    final response = rpc.WithEnumRequestResponse();

    switch (request.state) {
      case rpc.DeviceState.DEVICE_STATE_READY:
        response.state = rpc.DeviceState.DEVICE_STATE_RUNNING;
        break;
      case rpc.DeviceState.DEVICE_STATE_RUNNING:
        response.state = rpc.DeviceState.DEVICE_STATE_COMPLETED;
        break;
      case rpc.DeviceState.DEVICE_STATE_STOP:
        response.state = rpc.DeviceState.DEVICE_STATE_ABORTED;
        break;
      default:
        response.state = rpc.DeviceState.DEVICE_STATE_READY;
        break;
    }

    return response;
  }
}
