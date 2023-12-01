import 'package:weather_app/domain/entity/entities.dart';

abstract class FavoriteForecastRepository {
  Future<void> persistData(WeatherForecast data);
  Future<void> remove(WeatherForecast data);
  Future<List<WeatherForecast>> getFavoriteList();
}
