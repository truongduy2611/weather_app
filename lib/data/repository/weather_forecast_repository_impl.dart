import 'package:injectable/injectable.dart';
import 'package:weather_app/data/datasource/datasource.dart';
import 'package:weather_app/domain/entity/weather_forecast.dart';
import 'package:weather_app/domain/repository/weather_forecast_repository.dart';

@LazySingleton(as: WeatherForecastRepository)
class WeatherForecastRepositoryImpl implements WeatherForecastRepository {
  const WeatherForecastRepositoryImpl(this._dataSource);

  final WeatherForecastApiDataSource _dataSource;

  @override
  Future<WeatherForecast> getCurrentWeather(String query) async {
    final weatherForecast = await _dataSource.getCurrentWeather(query);
    return weatherForecast.toEntity();
  }

  @override
  Future<WeatherForecast> getWeatherForecast(
      String query, int numberOfDay) async {
    final weatherForecast =
        await _dataSource.getWeatherForecast(query, numberOfDay);
    return weatherForecast.toEntity();
  }
}
