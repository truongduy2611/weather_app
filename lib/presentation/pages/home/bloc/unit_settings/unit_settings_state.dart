part of 'unit_settings_cubit.dart';

@freezed
sealed class UnitSettingsState with _$UnitSettingsState {
  const factory UnitSettingsState.initial() = Initial;
  const factory UnitSettingsState.loaded(UnitSettings settings) = Loaded;
}
