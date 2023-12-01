// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'future_weather_forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FutureWeatherForecastModelImpl _$$FutureWeatherForecastModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FutureWeatherForecastModelImpl(
      forecastday: (json['forecastday'] as List<dynamic>)
          .map((e) =>
              WeatherForecastDayModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FutureWeatherForecastModelImplToJson(
        _$FutureWeatherForecastModelImpl instance) =>
    <String, dynamic>{
      'forecastday': instance.forecastday.map((e) => e.toJson()).toList(),
    };

_$WeatherForecastDayModelImpl _$$WeatherForecastDayModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherForecastDayModelImpl(
      date: json['date'] as String,
      dateEpoch: json['date_epoch'] as int,
      day:
          DayWeatherForecastModel.fromJson(json['day'] as Map<String, dynamic>),
      hour: (json['hour'] as List<dynamic>)
          .map((e) =>
              HourWeatherForecastModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeatherForecastDayModelImplToJson(
        _$WeatherForecastDayModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'date_epoch': instance.dateEpoch,
      'day': instance.day.toJson(),
      'hour': instance.hour.map((e) => e.toJson()).toList(),
    };
