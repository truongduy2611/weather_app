import 'package:injectable/injectable.dart';
import 'package:weather_app/data/model/models.dart';

import 'network_clients/weather_forecast_client.dart';

@lazySingleton
class WeatherForecastApiDataSource {
  final WeatherForecastClient _client;

  WeatherForecastApiDataSource(this._client);

  Future<WeatherForecastModel> getCurrentWeather(String query) {
    return _client.getCurrentWeather(query);
  }

  Future<WeatherForecastModel> getWeatherForecast(
      String query, int numberOfDay) {
    return _client.getWeatherForecast(query, numberOfDay);
  }
}
