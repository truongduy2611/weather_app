// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherForecastModelImpl _$$WeatherForecastModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherForecastModelImpl(
      current: CurrentWeatherForecastModel.fromJson(
          json['current'] as Map<String, dynamic>),
      location: WeatherLocationModel.fromJson(
          json['location'] as Map<String, dynamic>),
      forecast: json['forecast'] == null
          ? null
          : FutureWeatherForecastModel.fromJson(
              json['forecast'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherForecastModelImplToJson(
        _$WeatherForecastModelImpl instance) =>
    <String, dynamic>{
      'current': instance.current.toJson(),
      'location': instance.location.toJson(),
      'forecast': instance.forecast?.toJson(),
    };
