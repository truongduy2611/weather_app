// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherLocation _$WeatherLocationFromJson(Map<String, dynamic> json) {
  return _WeatherLocation.fromJson(json);
}

/// @nodoc
mixin _$WeatherLocation {
  String get name => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  @JsonKey(name: 'tz_id')
  String? get tzId => throw _privateConstructorUsedError;
  @JsonKey(name: 'localtime_epoch')
  int? get localTimeEpoch => throw _privateConstructorUsedError;
  @JsonKey(name: 'localtime')
  String? get localTime => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherLocationCopyWith<WeatherLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherLocationCopyWith<$Res> {
  factory $WeatherLocationCopyWith(
          WeatherLocation value, $Res Function(WeatherLocation) then) =
      _$WeatherLocationCopyWithImpl<$Res, WeatherLocation>;
  @useResult
  $Res call(
      {String name,
      String region,
      String country,
      double lat,
      double lon,
      @JsonKey(name: 'tz_id') String? tzId,
      @JsonKey(name: 'localtime_epoch') int? localTimeEpoch,
      @JsonKey(name: 'localtime') String? localTime,
      int? id,
      String? url});
}

/// @nodoc
class _$WeatherLocationCopyWithImpl<$Res, $Val extends WeatherLocation>
    implements $WeatherLocationCopyWith<$Res> {
  _$WeatherLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = null,
    Object? country = null,
    Object? lat = null,
    Object? lon = null,
    Object? tzId = freezed,
    Object? localTimeEpoch = freezed,
    Object? localTime = freezed,
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      tzId: freezed == tzId
          ? _value.tzId
          : tzId // ignore: cast_nullable_to_non_nullable
              as String?,
      localTimeEpoch: freezed == localTimeEpoch
          ? _value.localTimeEpoch
          : localTimeEpoch // ignore: cast_nullable_to_non_nullable
              as int?,
      localTime: freezed == localTime
          ? _value.localTime
          : localTime // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherLocationImplCopyWith<$Res>
    implements $WeatherLocationCopyWith<$Res> {
  factory _$$WeatherLocationImplCopyWith(_$WeatherLocationImpl value,
          $Res Function(_$WeatherLocationImpl) then) =
      __$$WeatherLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String region,
      String country,
      double lat,
      double lon,
      @JsonKey(name: 'tz_id') String? tzId,
      @JsonKey(name: 'localtime_epoch') int? localTimeEpoch,
      @JsonKey(name: 'localtime') String? localTime,
      int? id,
      String? url});
}

/// @nodoc
class __$$WeatherLocationImplCopyWithImpl<$Res>
    extends _$WeatherLocationCopyWithImpl<$Res, _$WeatherLocationImpl>
    implements _$$WeatherLocationImplCopyWith<$Res> {
  __$$WeatherLocationImplCopyWithImpl(
      _$WeatherLocationImpl _value, $Res Function(_$WeatherLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = null,
    Object? country = null,
    Object? lat = null,
    Object? lon = null,
    Object? tzId = freezed,
    Object? localTimeEpoch = freezed,
    Object? localTime = freezed,
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_$WeatherLocationImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      tzId: freezed == tzId
          ? _value.tzId
          : tzId // ignore: cast_nullable_to_non_nullable
              as String?,
      localTimeEpoch: freezed == localTimeEpoch
          ? _value.localTimeEpoch
          : localTimeEpoch // ignore: cast_nullable_to_non_nullable
              as int?,
      localTime: freezed == localTime
          ? _value.localTime
          : localTime // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherLocationImpl implements _WeatherLocation {
  const _$WeatherLocationImpl(
      {required this.name,
      required this.region,
      required this.country,
      required this.lat,
      required this.lon,
      @JsonKey(name: 'tz_id') required this.tzId,
      @JsonKey(name: 'localtime_epoch') required this.localTimeEpoch,
      @JsonKey(name: 'localtime') required this.localTime,
      required this.id,
      required this.url});

  factory _$WeatherLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherLocationImplFromJson(json);

  @override
  final String name;
  @override
  final String region;
  @override
  final String country;
  @override
  final double lat;
  @override
  final double lon;
  @override
  @JsonKey(name: 'tz_id')
  final String? tzId;
  @override
  @JsonKey(name: 'localtime_epoch')
  final int? localTimeEpoch;
  @override
  @JsonKey(name: 'localtime')
  final String? localTime;
  @override
  final int? id;
  @override
  final String? url;

  @override
  String toString() {
    return 'WeatherLocation(name: $name, region: $region, country: $country, lat: $lat, lon: $lon, tzId: $tzId, localTimeEpoch: $localTimeEpoch, localTime: $localTime, id: $id, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherLocationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.tzId, tzId) || other.tzId == tzId) &&
            (identical(other.localTimeEpoch, localTimeEpoch) ||
                other.localTimeEpoch == localTimeEpoch) &&
            (identical(other.localTime, localTime) ||
                other.localTime == localTime) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, region, country, lat, lon,
      tzId, localTimeEpoch, localTime, id, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherLocationImplCopyWith<_$WeatherLocationImpl> get copyWith =>
      __$$WeatherLocationImplCopyWithImpl<_$WeatherLocationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherLocationImplToJson(
      this,
    );
  }
}

abstract class _WeatherLocation implements WeatherLocation {
  const factory _WeatherLocation(
      {required final String name,
      required final String region,
      required final String country,
      required final double lat,
      required final double lon,
      @JsonKey(name: 'tz_id') required final String? tzId,
      @JsonKey(name: 'localtime_epoch') required final int? localTimeEpoch,
      @JsonKey(name: 'localtime') required final String? localTime,
      required final int? id,
      required final String? url}) = _$WeatherLocationImpl;

  factory _WeatherLocation.fromJson(Map<String, dynamic> json) =
      _$WeatherLocationImpl.fromJson;

  @override
  String get name;
  @override
  String get region;
  @override
  String get country;
  @override
  double get lat;
  @override
  double get lon;
  @override
  @JsonKey(name: 'tz_id')
  String? get tzId;
  @override
  @JsonKey(name: 'localtime_epoch')
  int? get localTimeEpoch;
  @override
  @JsonKey(name: 'localtime')
  String? get localTime;
  @override
  int? get id;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$WeatherLocationImplCopyWith<_$WeatherLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
