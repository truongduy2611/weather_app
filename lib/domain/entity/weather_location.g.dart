// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherLocationImpl _$$WeatherLocationImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherLocationImpl(
      name: json['name'] as String,
      region: json['region'] as String,
      country: json['country'] as String,
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      tzId: json['tz_id'] as String?,
      localTimeEpoch: json['localtime_epoch'] as int?,
      localTime: json['localtime'] as String?,
      id: json['id'] as int?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$WeatherLocationImplToJson(
        _$WeatherLocationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'country': instance.country,
      'lat': instance.lat,
      'lon': instance.lon,
      'tz_id': instance.tzId,
      'localtime_epoch': instance.localTimeEpoch,
      'localtime': instance.localTime,
      'id': instance.id,
      'url': instance.url,
    };
