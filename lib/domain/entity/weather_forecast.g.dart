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
      forecast: json['forecast'] == null
          ? null
          : FutureWeatherForecast.fromJson(
              json['forecast'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherForecastImplToJson(
        _$WeatherForecastImpl instance) =>
    <String, dynamic>{
      'current': instance.current.toJson(),
      'location': instance.location.toJson(),
      'forecast': instance.forecast?.toJson(),
    };
