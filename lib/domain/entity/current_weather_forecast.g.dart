// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentWeatherForecastImpl _$$CurrentWeatherForecastImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentWeatherForecastImpl(
      lastUpdatedEpoch: json['lastUpdatedEpoch'] as int,
      lastUpdated: json['lastUpdated'] as String,
      tempC: (json['tempC'] as num).toDouble(),
      tempF: (json['tempF'] as num).toDouble(),
      feelsLikeF: (json['feelsLikeF'] as num).toDouble(),
      feelsLikeC: (json['feelsLikeC'] as num).toDouble(),
      uv: (json['uv'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      cloud: json['cloud'] as int,
      condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CurrentWeatherForecastImplToJson(
        _$CurrentWeatherForecastImpl instance) =>
    <String, dynamic>{
      'lastUpdatedEpoch': instance.lastUpdatedEpoch,
      'lastUpdated': instance.lastUpdated,
      'tempC': instance.tempC,
      'tempF': instance.tempF,
      'feelsLikeF': instance.feelsLikeF,
      'feelsLikeC': instance.feelsLikeC,
      'uv': instance.uv,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
      'condition': instance.condition,
    };
