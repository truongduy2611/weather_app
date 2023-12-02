import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit_settings.freezed.dart';
part 'unit_settings.g.dart';

@freezed
class UnitSettings with _$UnitSettings {
  const UnitSettings._();
  const factory UnitSettings({
    required bool useCelsius,
    required bool useMetric,
  }) = _UnitSettings;

  factory UnitSettings.fromJson(Map<String, dynamic> json) =>
      _$UnitSettingsFromJson(json);
}
