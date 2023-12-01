import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/data/model/entity_mappable.dart';
import 'package:weather_app/data/model/models.dart';
import 'package:weather_app/domain/entity/entities.dart';

part 'weather_forecast_model.freezed.dart';
part 'weather_forecast_model.g.dart';

@freezed
class WeatherForecastModel
    with _$WeatherForecastModel
    implements EntityMappable<WeatherForecast> {
  const WeatherForecastModel._();

  const factory WeatherForecastModel({
    required CurrentWeatherForecastModel current,
    required WeatherLocationModel location,
    FutureWeatherForecastModel? forecast,
  }) = _WeatherForecastModel;

  factory WeatherForecastModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastModelFromJson(json);

  @override
  WeatherForecast toEntity() {
    return WeatherForecast(
      current: current.toEntity(),
      location: location.toEntity(),
      forecast: forecast?.toEntity(),
    );
  }
}
