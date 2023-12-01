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
    );
  }
}
