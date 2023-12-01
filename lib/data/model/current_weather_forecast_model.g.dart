// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentWeatherForecastModelImpl _$$CurrentWeatherForecastModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentWeatherForecastModelImpl(
      lastUpdatedEpoch: json['last_updated_epoch'] as int,
      lastUpdated: json['last_updated'] as String,
      tempC: (json['temp_c'] as num).toDouble(),
      tempF: (json['temp_f'] as num).toDouble(),
      feelsLikeF: (json['feelslike_f'] as num).toDouble(),
      feelsLikeC: (json['feelslike_c'] as num).toDouble(),
      condition:
          ConditionModel.fromJson(json['condition'] as Map<String, dynamic>),
      uv: (json['uv'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      cloud: json['cloud'] as int,
    );

Map<String, dynamic> _$$CurrentWeatherForecastModelImplToJson(
        _$CurrentWeatherForecastModelImpl instance) =>
    <String, dynamic>{
      'last_updated_epoch': instance.lastUpdatedEpoch,
      'last_updated': instance.lastUpdated,
      'temp_c': instance.tempC,
      'temp_f': instance.tempF,
      'feelslike_f': instance.feelsLikeF,
      'feelslike_c': instance.feelsLikeC,
      'condition': instance.condition.toJson(),
      'uv': instance.uv,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
    };
