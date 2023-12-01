import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_location.freezed.dart';
part 'weather_location.g.dart';

@freezed
class WeatherLocation with _$WeatherLocation {
  const factory WeatherLocation({
    required String name,
    required String region,
    required String country,
    required double lat,
    required double lon,
    required String? tzId,
    required int? localTimeEpoch,
    required String? localTime,
    required int? id,
  }) = _WeatherLocation;

  factory WeatherLocation.fromJson(Map<String, dynamic> json) =>
      _$WeatherLocationFromJson(json);
}
