import 'package:weather_app/domain/entity/entities.dart';

abstract class WeatherForecastRepository {
  Future<WeatherForecast> getCurrentWeather(String query);
  Future<WeatherForecast> getWeatherForecast(String query, int numberOfDay);
}
