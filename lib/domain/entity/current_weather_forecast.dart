import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/domain/entity/entities.dart';

part 'current_weather_forecast.freezed.dart';
part 'current_weather_forecast.g.dart';

@freezed
class CurrentWeatherForecast with _$CurrentWeatherForecast {
  const factory CurrentWeatherForecast({
    @JsonKey(name: 'last_updated_epoch') required int lastUpdatedEpoch,
    @JsonKey(name: 'last_updated') required String lastUpdated,
    @JsonKey(name: 'temp_c') required double tempC,
    @JsonKey(name: 'temp_f') required double tempF,
    @JsonKey(name: 'feelslike_f') required double feelsLikeF,
    @JsonKey(name: 'feelslike_c') required double feelsLikeC,
    required double uv,
    required double humidity,
    required int cloud,
    required Condition condition,
  }) = _CurrentWeatherForecast;

  factory CurrentWeatherForecast.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherForecastFromJson(json);
}
