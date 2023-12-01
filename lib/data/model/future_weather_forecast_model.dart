import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/data/model/models.dart';
import 'package:weather_app/domain/entity/entities.dart';

import 'entity_mappable.dart';

part 'future_weather_forecast_model.freezed.dart';
part 'future_weather_forecast_model.g.dart';

@freezed
class FutureWeatherForecastModel
    with _$FutureWeatherForecastModel
    implements EntityMappable<FutureWeatherForecast> {
  const FutureWeatherForecastModel._();
  const factory FutureWeatherForecastModel({
    required List<WeatherForecastDayModel> forecastday,
  }) = _FutureWeatherForecastModel;

  factory FutureWeatherForecastModel.fromJson(Map<String, dynamic> json) =>
      _$FutureWeatherForecastModelFromJson(json);

  @override
  FutureWeatherForecast toEntity() {
    return FutureWeatherForecast(
      forecastday: forecastday.map((o) => o.toEntity()).toList(),
    );
  }
}

@freezed
class WeatherForecastDayModel
    with _$WeatherForecastDayModel
    implements EntityMappable<WeatherForecastDay> {
  const WeatherForecastDayModel._();

  @JsonSerializable(explicitToJson: true)
  const factory WeatherForecastDayModel({
    required String date,
    @JsonKey(name: 'date_epoch') required int dateEpoch,
    required DayWeatherForecastModel day,
    required List<HourWeatherForecastModel> hour,
  }) = _WeatherForecastDayModel;

  factory WeatherForecastDayModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastDayModelFromJson(json);

  @override
  WeatherForecastDay toEntity() {
    return WeatherForecastDay(
      date: date,
      dateEpoch: dateEpoch,
      day: day.toEntity(),
      hour: hour.map((o) => o.toEntity()).toList(),
    );
  }
}
