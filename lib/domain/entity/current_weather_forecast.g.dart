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
      precipMm: (json['precip_mm'] as num?)?.toDouble() ?? 0,
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
      'precip_mm': instance.precipMm,
      'uv': instance.uv,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
      'condition': instance.condition.toJson(),
    };

_$HourWeatherForecastImpl _$$HourWeatherForecastImplFromJson(
        Map<String, dynamic> json) =>
    _$HourWeatherForecastImpl(
      time: json['time'] as String,
      timeEpoch: json['time_epoch'] as int,
      tempC: (json['temp_c'] as num).toDouble(),
      tempF: (json['temp_f'] as num).toDouble(),
      feelsLikeF: (json['feelslike_f'] as num).toDouble(),
      feelsLikeC: (json['feelslike_c'] as num).toDouble(),
      chanceOfRain: json['chance_of_rain'] as int,
      uv: (json['uv'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      cloud: json['cloud'] as int,
      condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HourWeatherForecastImplToJson(
        _$HourWeatherForecastImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'time_epoch': instance.timeEpoch,
      'temp_c': instance.tempC,
      'temp_f': instance.tempF,
      'feelslike_f': instance.feelsLikeF,
      'feelslike_c': instance.feelsLikeC,
      'chance_of_rain': instance.chanceOfRain,
      'uv': instance.uv,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
      'condition': instance.condition.toJson(),
    };

_$DayWeatherForecastImpl _$$DayWeatherForecastImplFromJson(
        Map<String, dynamic> json) =>
    _$DayWeatherForecastImpl(
      maxTempC: (json['maxtemp_c'] as num).toDouble(),
      maxTempF: (json['maxtemp_f'] as num).toDouble(),
      minTempC: (json['mintemp_c'] as num).toDouble(),
      minTempF: (json['mintemp_f'] as num).toDouble(),
      uv: (json['uv'] as num).toDouble(),
      condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DayWeatherForecastImplToJson(
        _$DayWeatherForecastImpl instance) =>
    <String, dynamic>{
      'maxtemp_c': instance.maxTempC,
      'maxtemp_f': instance.maxTempF,
      'mintemp_c': instance.minTempC,
      'mintemp_f': instance.minTempF,
      'uv': instance.uv,
      'condition': instance.condition.toJson(),
    };
