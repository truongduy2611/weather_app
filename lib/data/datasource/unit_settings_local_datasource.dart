import 'package:injectable/injectable.dart';
import 'package:weather_app/data/model/unit_settings_model.dart';

import 'local/unit_settings_box.dart';

@lazySingleton
class UnitSettingsLocalDataSource {
  final UnitSettingsBox _dataBox;

  UnitSettingsLocalDataSource(this._dataBox);

  static const key = 'unit-settings';

  Future<UnitSettingsModel?> get settings async {
    return _dataBox.getValue(key);
  }

  Future<void> save(UnitSettingsModel data) async {
    await _dataBox.setValue(key, data);
  }
}
