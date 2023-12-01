import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/domain/entity/entities.dart';

part 'current_weather_forecast.freezed.dart';
part 'current_weather_forecast.g.dart';

@freezed
class CurrentWeatherForecast with _$CurrentWeatherForecast {
  const factory CurrentWeatherForecast({
    required int lastUpdatedEpoch,
    required String lastUpdated,
    required double tempC,
    required double tempF,
    required double feelsLikeF,
    required double feelsLikeC,
    required double uv,
    required double humidity,
    required int cloud,
    required Condition condition,
  }) = _CurrentWeatherForecast;

  factory CurrentWeatherForecast.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherForecastFromJson(json);
}
