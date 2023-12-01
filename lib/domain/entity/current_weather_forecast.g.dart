// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentWeatherForecastImpl _$$CurrentWeatherForecastImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentWeatherForecastImpl(
      lastUpdatedEpoch: json['last_updated_epoch'] as int,
      lastUpdated: json['last_updated'] as String,
      tempC: (json['temp_c'] as num).toDouble(),
      tempF: (json['temp_f'] as num).toDouble(),
      feelsLikeF: (json['feelslike_f'] as num).toDouble(),
      feelsLikeC: (json['feelslike_c'] as num).toDouble(),
      uv: (json['uv'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      cloud: json['cloud'] as int,
      condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CurrentWeatherForecastImplToJson(
        _$CurrentWeatherForecastImpl instance) =>
    <String, dynamic>{
      'last_updated_epoch': instance.lastUpdatedEpoch,
      'last_updated': instance.lastUpdated,
      'temp_c': instance.tempC,
      'temp_f': instance.tempF,
      'feelslike_f': instance.feelsLikeF,
      'feelslike_c': instance.feelsLikeC,
      'uv': instance.uv,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
      'condition': instance.condition.toJson(),
    };
