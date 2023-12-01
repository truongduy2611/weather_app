import 'package:freezed_annotation/freezed_annotation.dart';

part 'condition.freezed.dart';
part 'condition.g.dart';

@freezed
class Condition with _$Condition {
  const factory Condition({
    required String text,
    required String icon,
    required int code,
  }) = _Condition;

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);
}

extension IconUrl on Condition {
  String iconUrl(int size) {
    return "https:${icon.replaceAll('64x64', '${size}x$size')}";
  }
}
