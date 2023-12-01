import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/data/model/condition_model.dart';
import 'package:weather_app/data/model/entity_mappable.dart';
import 'package:weather_app/domain/entity/entities.dart';

part 'current_weather_forecast_model.freezed.dart';
part 'current_weather_forecast_model.g.dart';

@freezed
class CurrentWeatherForecastModel
    with _$CurrentWeatherForecastModel
    implements EntityMappable<CurrentWeatherForecast> {
  const CurrentWeatherForecastModel._();

  @JsonSerializable(explicitToJson: true)
  const factory CurrentWeatherForecastModel({
    @JsonKey(name: 'last_updated_epoch') required int lastUpdatedEpoch,
    @JsonKey(name: 'last_updated') required String lastUpdated,
    @JsonKey(name: 'temp_c') required double tempC,
    @JsonKey(name: 'temp_f') required double tempF,
    @JsonKey(name: 'feelslike_f') required double feelsLikeF,
    @JsonKey(name: 'feelslike_c') required double feelsLikeC,
    @JsonKey(name: 'precip_mm', defaultValue: 0) required double precipMm,
    required ConditionModel condition,
    required double uv,
    required double humidity,
    required int cloud,
  }) = _CurrentWeatherForecastModel;

  factory CurrentWeatherForecastModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherForecastModelFromJson(json);

  @override
  CurrentWeatherForecast toEntity() {
    return CurrentWeatherForecast(
      cloud: cloud,
      tempC: tempC,
      tempF: tempF,
      feelsLikeF: feelsLikeF,
      feelsLikeC: feelsLikeC,
      uv: uv,
      humidity: humidity,
      lastUpdated: lastUpdated,
      lastUpdatedEpoch: lastUpdatedEpoch,
      condition: condition.toEntity(),
      precipMm: precipMm,
    );
  }
}

@freezed
class HourWeatherForecastModel
    with _$HourWeatherForecastModel
    implements EntityMappable<HourWeatherForecast> {
  const HourWeatherForecastModel._();

  @JsonSerializable(explicitToJson: true)
  const factory HourWeatherForecastModel({
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
    required ConditionModel condition,
  }) = _HourWeatherForecastModel;

  factory HourWeatherForecastModel.fromJson(Map<String, dynamic> json) =>
      _$HourWeatherForecastModelFromJson(json);

  @override
  HourWeatherForecast toEntity() {
    return HourWeatherForecast(
      cloud: cloud,
      tempC: tempC,
      tempF: tempF,
      feelsLikeF: feelsLikeF,
      feelsLikeC: feelsLikeC,
      uv: uv,
      humidity: humidity,
      time: time,
      timeEpoch: timeEpoch,
      condition: condition.toEntity(),
      chanceOfRain: chanceOfRain,
    );
  }
}

@freezed
class DayWeatherForecastModel
    with _$DayWeatherForecastModel
    implements EntityMappable<DayWeatherForecast> {
  const DayWeatherForecastModel._();

  @JsonSerializable(explicitToJson: true)
  const factory DayWeatherForecastModel({
    @JsonKey(name: 'maxtemp_c') required double maxTempC,
    @JsonKey(name: 'maxtemp_f') required double maxTempF,
    @JsonKey(name: 'mintemp_c') required double minTempC,
    @JsonKey(name: 'mintemp_f') required double minTempF,
    required double uv,
    required ConditionModel condition,
  }) = _DayWeatherForecastModel;

  factory DayWeatherForecastModel.fromJson(Map<String, dynamic> json) =>
      _$DayWeatherForecastModelFromJson(json);

  @override
  DayWeatherForecast toEntity() {
    return DayWeatherForecast(
      maxTempC: maxTempC,
      minTempC: minTempC,
      maxTempF: maxTempF,
      minTempF: minTempF,
      uv: uv,
      condition: condition.toEntity(),
    );
  }
}
