import 'package:injectable/injectable.dart';
import 'package:weather_app/data/datasource/unit_settings_local_datasource.dart';
import 'package:weather_app/data/model/unit_settings_model.dart';
import 'package:weather_app/domain/entity/unit_settings.dart';
import 'package:weather_app/domain/repository/unit_settings_repository.dart';

@LazySingleton(as: UnitSettingsRepository)
class UnitSettingsRepositoryImpl implements UnitSettingsRepository {
  const UnitSettingsRepositoryImpl(this._dataSource);

  final UnitSettingsLocalDataSource _dataSource;

  @override
  Future<UnitSettings> get settings async {
    final result = await _dataSource.settings;
    if (result != null) {
      return result.toEntity();
    }
    return const UnitSettings(useCelsius: true, useMetric: true);
  }

  @override
  Future<void> updateSetting(UnitSettings data) {
    return _dataSource.save(UnitSettingsModel.fromJson(data.toJson()));
  }
}
