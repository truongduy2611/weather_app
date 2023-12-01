import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_location.freezed.dart';
part 'weather_location.g.dart';

@freezed
sealed class WeatherLocation with _$WeatherLocation {
  const factory WeatherLocation({
    required String name,
    required String region,
    required String country,
    required double lat,
    required double lon,
    @JsonKey(name: 'tz_id') required String? tzId,
    @JsonKey(name: 'localtime_epoch') required int? localTimeEpoch,
    @JsonKey(name: 'localtime') required String? localTime,
    required int? id,
    required String? url,
  }) = _WeatherLocation;

  factory WeatherLocation.fromJson(Map<String, dynamic> json) =>
      _$WeatherLocationFromJson(json);
}
