import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/core/core.dart';
import 'package:weather_app/data/model/unit_settings_model.dart';

@lazySingleton
class UnitSettingsBox {
  @FactoryMethod(preResolve: true)
  static Future<UnitSettingsBox> setup() async {
    await Hive.openBox<Map<dynamic, dynamic>>(HiveBox.unitSettings.name);
    return UnitSettingsBox();
  }

  UnitSettingsModel? getValue(String key) {
    final jsonData =
        Hive.box<Map<dynamic, dynamic>>(HiveBox.unitSettings.name).get(key);
    if (jsonData != null) {
      return jsonData.model;
    }
    return null;
  }

  Future<void> setValue(String key, UnitSettingsModel value) =>
      Hive.box<Map<dynamic, dynamic>>(HiveBox.unitSettings.name)
          .put(key, value.toJson());

  Future<void> delete(String key) =>
      Hive.box<Map<dynamic, dynamic>>(HiveBox.unitSettings.name).delete(key);

  Iterable get keys =>
      Hive.box<Map<dynamic, dynamic>>(HiveBox.unitSettings.name).keys;

  List<UnitSettingsModel> get allData =>
      Hive.box<Map<dynamic, dynamic>>(HiveBox.unitSettings.name)
          .values
          .map((e) => e.model)
          .toList();

  Future<void> deleteAll() async {
    await Hive.box<Map<dynamic, dynamic>>(HiveBox.unitSettings.name)
        .deleteAll(keys);
  }
}

extension _CastMapToWeatherForecast on Map<dynamic, dynamic> {
  UnitSettingsModel get model {
    return UnitSettingsModel.fromJson(convertMap(this));
  }
}
