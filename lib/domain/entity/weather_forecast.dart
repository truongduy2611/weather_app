import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/domain/entity/current_weather_forecast.dart';
import 'package:weather_app/domain/entity/weather_location.dart';

part 'weather_forecast.freezed.dart';
part 'weather_forecast.g.dart';

@freezed
class WeatherForecast with _$WeatherForecast {
  const factory WeatherForecast({
    required CurrentWeatherForecast current,
    required WeatherLocation location,
  }) = _WeatherForecast;

  factory WeatherForecast.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastFromJson(json);
}
