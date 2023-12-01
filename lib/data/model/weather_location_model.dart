import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/data/model/entity_mappable.dart';
import 'package:weather_app/domain/entity/entities.dart';

part 'weather_location_model.freezed.dart';
part 'weather_location_model.g.dart';

@freezed
class WeatherLocationModel
    with _$WeatherLocationModel
    implements EntityMappable<WeatherLocation> {
  const WeatherLocationModel._();

  @JsonSerializable(explicitToJson: true)
  const factory WeatherLocationModel({
    required String name,
    required String region,
    required String country,
    required double lat,
    required double lon,
    @JsonKey(name: 'tz_id') required String? tzId,
    @JsonKey(name: 'localtime_epoch') required int? localTimeEpoch,
    @JsonKey(name: 'localtime') required String? localTime,
    required int? id,
  }) = _WeatherLocationModel;

  factory WeatherLocationModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherLocationModelFromJson(json);

  @override
  WeatherLocation toEntity() {
    return WeatherLocation(
      country: country,
      region: region,
      tzId: tzId,
      lat: lat,
      lon: lon,
      localTimeEpoch: localTimeEpoch,
      localTime: localTime,
      name: name,
      id: id,
    );
  }
}
