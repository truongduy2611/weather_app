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
      precipMm: (json['precip_mm'] as num?)?.toDouble() ?? 0,
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
      'precip_mm': instance.precipMm,
      'condition': instance.condition.toJson(),
      'uv': instance.uv,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
    };

_$HourWeatherForecastModelImpl _$$HourWeatherForecastModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HourWeatherForecastModelImpl(
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
      condition:
          ConditionModel.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HourWeatherForecastModelImplToJson(
        _$HourWeatherForecastModelImpl instance) =>
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

_$DayWeatherForecastModelImpl _$$DayWeatherForecastModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DayWeatherForecastModelImpl(
      maxTempC: (json['maxtemp_c'] as num).toDouble(),
      maxTempF: (json['maxtemp_f'] as num).toDouble(),
      minTempC: (json['mintemp_c'] as num).toDouble(),
      minTempF: (json['mintemp_f'] as num).toDouble(),
      uv: (json['uv'] as num).toDouble(),
      condition:
          ConditionModel.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DayWeatherForecastModelImplToJson(
        _$DayWeatherForecastModelImpl instance) =>
    <String, dynamic>{
      'maxtemp_c': instance.maxTempC,
      'maxtemp_f': instance.maxTempF,
      'mintemp_c': instance.minTempC,
      'mintemp_f': instance.minTempF,
      'uv': instance.uv,
      'condition': instance.condition.toJson(),
    };
