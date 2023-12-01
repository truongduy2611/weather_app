import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/domain/entity/entities.dart';

part 'current_weather_forecast.freezed.dart';
part 'current_weather_forecast.g.dart';

@freezed
class CurrentWeatherForecast with _$CurrentWeatherForecast {
  const CurrentWeatherForecast._();

  @JsonSerializable(explicitToJson: true)
  const factory CurrentWeatherForecast({
    @JsonKey(name: 'last_updated_epoch') required int lastUpdatedEpoch,
    @JsonKey(name: 'last_updated') required String lastUpdated,
    @JsonKey(name: 'temp_c') required double tempC,
    @JsonKey(name: 'temp_f') required double tempF,
    @JsonKey(name: 'feelslike_f') required double feelsLikeF,
    @JsonKey(name: 'feelslike_c') required double feelsLikeC,
    @JsonKey(name: 'precip_mm', defaultValue: 0) required double precipMm,
    required double uv,
    required double humidity,
    required int cloud,
    required Condition condition,
  }) = _CurrentWeatherForecast;

  factory CurrentWeatherForecast.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherForecastFromJson(json);
}

@freezed
class HourWeatherForecast with _$HourWeatherForecast {
  const HourWeatherForecast._();

  @JsonSerializable(explicitToJson: true)
  const factory HourWeatherForecast({
    required String time,
    @JsonKey(name: 'time_epoch') required int timeEpoch,
    @JsonKey(name: 'temp_c') required double tempC,
    @JsonKey(name: 'temp_f') required double tempF,
    @JsonKey(name: 'feelslike_f') required double feelsLikeF,
    @JsonKey(name: 'feelslike_c') required double feelsLikeC,
    @JsonKey(name: 'chance_of_rain') required int chanceOfRain,
    required double uv,
    required double humidity,
    required int cloud,
    required Condition condition,
  }) = _HourWeatherForecast;

  factory HourWeatherForecast.fromJson(Map<String, dynamic> json) =>
      _$HourWeatherForecastFromJson(json);
}

@freezed
class DayWeatherForecast with _$DayWeatherForecast {
  const DayWeatherForecast._();

  @JsonSerializable(explicitToJson: true)
  const factory DayWeatherForecast({
    @JsonKey(name: 'maxtemp_c') required double maxTempC,
    @JsonKey(name: 'maxtemp_f') required double maxTempF,
    @JsonKey(name: 'mintemp_c') required double minTempC,
    @JsonKey(name: 'mintemp_f') required double minTempF,
    required double uv,
    required Condition condition,
  }) = _DayWeatherForecast;

  factory DayWeatherForecast.fromJson(Map<String, dynamic> json) =>
      _$DayWeatherForecastFromJson(json);
}
