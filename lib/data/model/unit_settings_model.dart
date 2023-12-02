import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/data/model/entity_mappable.dart';
import 'package:weather_app/domain/entity/entities.dart';

part 'unit_settings_model.freezed.dart';
part 'unit_settings_model.g.dart';

@freezed
class UnitSettingsModel
    with _$UnitSettingsModel
    implements EntityMappable<UnitSettings> {
  const UnitSettingsModel._();
  const factory UnitSettingsModel({
    required bool useCelsius,
    required bool useMetric,
  }) = _UnitSettingsModel;

  factory UnitSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$UnitSettingsModelFromJson(json);

  @override
  UnitSettings toEntity() {
    return UnitSettings(
      useCelsius: useCelsius,
      useMetric: useMetric,
    );
  }
}
