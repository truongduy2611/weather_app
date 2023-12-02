import 'package:weather_app/domain/entity/entities.dart';

abstract class UnitSettingsRepository {
  Future<void> updateSetting(UnitSettings data);
  Future<UnitSettings> get settings;
}
