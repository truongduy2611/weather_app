// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'future_weather_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FutureWeatherForecastImpl _$$FutureWeatherForecastImplFromJson(
        Map<String, dynamic> json) =>
    _$FutureWeatherForecastImpl(
      forecastday: (json['forecastday'] as List<dynamic>)
          .map((e) => WeatherForecastDay.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FutureWeatherForecastImplToJson(
        _$FutureWeatherForecastImpl instance) =>
    <String, dynamic>{
      'forecastday': instance.forecastday.map((e) => e.toJson()).toList(),
    };

_$WeatherForecastDayImpl _$$WeatherForecastDayImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherForecastDayImpl(
      date: json['date'] as String,
      dateEpoch: json['date_epoch'] as int,
      day: DayWeatherForecast.fromJson(json['day'] as Map<String, dynamic>),
      hour: (json['hour'] as List<dynamic>)
          .map((e) => HourWeatherForecast.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeatherForecastDayImplToJson(
        _$WeatherForecastDayImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'date_epoch': instance.dateEpoch,
      'day': instance.day.toJson(),
      'hour': instance.hour.map((e) => e.toJson()).toList(),
    };
