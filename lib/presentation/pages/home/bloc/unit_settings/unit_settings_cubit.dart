import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/domain/entity/entities.dart';
import 'package:weather_app/domain/repository/unit_settings_repository.dart';

part 'unit_settings_cubit.freezed.dart';
part 'unit_settings_state.dart';

@injectable
class UnitSettingsCubit extends Cubit<UnitSettingsState> {
  UnitSettingsCubit(this.repository) : super(const UnitSettingsState.initial());

  final UnitSettingsRepository repository;

  Future<void> loadUnitSettings() async {
    final settings = await repository.settings;
    emit(UnitSettingsState.loaded(settings));
  }

  Future<void> updateUnitSettings(UnitSettings settings) async {
    await repository.updateSetting(settings);
    await loadUnitSettings();
  }
}
