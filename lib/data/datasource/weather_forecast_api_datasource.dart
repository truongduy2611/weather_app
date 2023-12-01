import 'package:injectable/injectable.dart';
import 'package:weather_app/data/model/models.dart';

import 'network_clients/current_weather_forecast_client.dart';

@lazySingleton
class WeatherForecastApiDataSource {
  final CurrentWeatherForecastClient _client;

  WeatherForecastApiDataSource(this._client);

  Future<WeatherForecastModel> getCurrentWeather(String query) {
    return _client.getCurrentWeather(query);
  }
}
