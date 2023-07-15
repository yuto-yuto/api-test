import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:dart_grpc/proto/google/protobuf/timestamp.pb.dart';

class TimestampParser {
  // https://protobuf.dev/reference/protobuf/google.protobuf/#timestamp
  static Timestamp parse(DateTime value) {
    final ms = value.millisecondsSinceEpoch;
    final result = Timestamp.create();
    result.seconds = $fixnum.Int64((ms / 1000).round());
    result.nanos = (ms % 1000) * 1000000;
    return result;
  }

  static DateTime from(Timestamp value) {
    final ms = value.seconds * 1000 + (value.nanos / 1000).round();
    return DateTime.fromMillisecondsSinceEpoch(ms.toInt(), isUtc: true);
  }
}
