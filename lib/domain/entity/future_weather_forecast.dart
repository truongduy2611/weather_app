import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/domain/entity/current_weather_forecast.dart';

part 'future_weather_forecast.freezed.dart';
part 'future_weather_forecast.g.dart';

@freezed
class FutureWeatherForecast with _$FutureWeatherForecast {
  const FutureWeatherForecast._();
  const factory FutureWeatherForecast({
    required List<WeatherForecastDay> forecastday,
  }) = _FutureWeatherForecast;

  factory FutureWeatherForecast.fromJson(Map<String, dynamic> json) =>
      _$FutureWeatherForecastFromJson(json);
}

@freezed
class WeatherForecastDay with _$WeatherForecastDay {
  const WeatherForecastDay._();

  @JsonSerializable(explicitToJson: true)
  const factory WeatherForecastDay({
    required String date,
    @JsonKey(name: 'date_epoch') required int dateEpoch,
    required DayWeatherForecast day,
    required List<HourWeatherForecast> hour,
  }) = _WeatherForecastDay;

  factory WeatherForecastDay.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastDayFromJson(json);
}
