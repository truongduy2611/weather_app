// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherForecastImpl _$$WeatherForecastImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherForecastImpl(
      current: CurrentWeatherForecast.fromJson(
          json['current'] as Map<String, dynamic>),
      location:
          WeatherLocation.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherForecastImplToJson(
        _$WeatherForecastImpl instance) =>
    <String, dynamic>{
      'current': instance.current,
      'location': instance.location,
    };
