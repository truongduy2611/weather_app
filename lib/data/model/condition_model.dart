import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/data/model/entity_mappable.dart';
import 'package:weather_app/domain/entity/entities.dart';

part 'condition_model.freezed.dart';
part 'condition_model.g.dart';

@freezed
class ConditionModel
    with _$ConditionModel
    implements EntityMappable<Condition> {
  const ConditionModel._();
  const factory ConditionModel({
    required String text,
    required String icon,
    required int code,
  }) = _ConditionModel;

  factory ConditionModel.fromJson(Map<String, dynamic> json) =>
      _$ConditionModelFromJson(json);

  @override
  Condition toEntity() {
    return Condition(
      code: code,
      icon: icon,
      text: text,
    );
  }
}
