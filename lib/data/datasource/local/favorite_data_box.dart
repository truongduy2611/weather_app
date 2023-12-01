import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/core/core.dart';
import 'package:weather_app/data/model/models.dart';

@lazySingleton
class FavoriteDataBox {
  @FactoryMethod(preResolve: true)
  static Future<FavoriteDataBox> setup() async {
    await Hive.openBox<Map<dynamic, dynamic>>(HiveBox.favoriteDataBox.name);
    return FavoriteDataBox();
  }

  WeatherForecastModel? getValue(String key) {
    final jsonData =
        Hive.box<Map<dynamic, dynamic>>(HiveBox.favoriteDataBox.name).get(key);
    if (jsonData != null) {
      return jsonData.model;
    }
    return null;
  }

  Future<void> setValue(String key, WeatherForecastModel value) =>
      Hive.box<Map<dynamic, dynamic>>(HiveBox.favoriteDataBox.name)
          .put(key, value.toJson());

  Iterable get keys =>
      Hive.box<Map<dynamic, dynamic>>(HiveBox.favoriteDataBox.name).keys;

  List<WeatherForecastModel> get allData =>
      Hive.box<Map<dynamic, dynamic>>(HiveBox.favoriteDataBox.name)
          .values
          .map((e) => e.model)
          .toList();

  Future<void> deleteAll() async {
    await Hive.box<Map<dynamic, dynamic>>(HiveBox.favoriteDataBox.name)
        .deleteAll(keys);
  }
}

extension _CastMapToWeatherForecast on Map<dynamic, dynamic> {
  WeatherForecastModel get model {
    return WeatherForecastModel.fromJson(convertMap(this));
  }
}
