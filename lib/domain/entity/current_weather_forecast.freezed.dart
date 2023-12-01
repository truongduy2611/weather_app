// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_weather_forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentWeatherForecast _$CurrentWeatherForecastFromJson(
    Map<String, dynamic> json) {
  return _CurrentWeatherForecast.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeatherForecast {
  @JsonKey(name: 'last_updated_epoch')
  int get lastUpdatedEpoch => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated')
  String get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_c')
  double get tempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_f')
  double get tempF => throw _privateConstructorUsedError;
  @JsonKey(name: 'feelslike_f')
  double get feelsLikeF => throw _privateConstructorUsedError;
  @JsonKey(name: 'feelslike_c')
  double get feelsLikeC => throw _privateConstructorUsedError;
  double get uv => throw _privateConstructorUsedError;
  double get humidity => throw _privateConstructorUsedError;
  int get cloud => throw _privateConstructorUsedError;
  Condition get condition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherForecastCopyWith<CurrentWeatherForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherForecastCopyWith<$Res> {
  factory $CurrentWeatherForecastCopyWith(CurrentWeatherForecast value,
          $Res Function(CurrentWeatherForecast) then) =
      _$CurrentWeatherForecastCopyWithImpl<$Res, CurrentWeatherForecast>;
  @useResult
  $Res call(
      {@JsonKey(name: 'last_updated_epoch') int lastUpdatedEpoch,
      @JsonKey(name: 'last_updated') String lastUpdated,
      @JsonKey(name: 'temp_c') double tempC,
      @JsonKey(name: 'temp_f') double tempF,
      @JsonKey(name: 'feelslike_f') double feelsLikeF,
      @JsonKey(name: 'feelslike_c') double feelsLikeC,
      double uv,
      double humidity,
      int cloud,
      Condition condition});

  $ConditionCopyWith<$Res> get condition;
}

/// @nodoc
class _$CurrentWeatherForecastCopyWithImpl<$Res,
        $Val extends CurrentWeatherForecast>
    implements $CurrentWeatherForecastCopyWith<$Res> {
  _$CurrentWeatherForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdatedEpoch = null,
    Object? lastUpdated = null,
    Object? tempC = null,
    Object? tempF = null,
    Object? feelsLikeF = null,
    Object? feelsLikeC = null,
    Object? uv = null,
    Object? humidity = null,
    Object? cloud = null,
    Object? condition = null,
  }) {
    return _then(_value.copyWith(
      lastUpdatedEpoch: null == lastUpdatedEpoch
          ? _value.lastUpdatedEpoch
          : lastUpdatedEpoch // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String,
      tempC: null == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double,
      tempF: null == tempF
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLikeF: null == feelsLikeF
          ? _value.feelsLikeF
          : feelsLikeF // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLikeC: null == feelsLikeC
          ? _value.feelsLikeC
          : feelsLikeC // ignore: cast_nullable_to_non_nullable
              as double,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      cloud: null == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConditionCopyWith<$Res> get condition {
    return $ConditionCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentWeatherForecastImplCopyWith<$Res>
    implements $CurrentWeatherForecastCopyWith<$Res> {
  factory _$$CurrentWeatherForecastImplCopyWith(
          _$CurrentWeatherForecastImpl value,
          $Res Function(_$CurrentWeatherForecastImpl) then) =
      __$$CurrentWeatherForecastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'last_updated_epoch') int lastUpdatedEpoch,
      @JsonKey(name: 'last_updated') String lastUpdated,
      @JsonKey(name: 'temp_c') double tempC,
      @JsonKey(name: 'temp_f') double tempF,
      @JsonKey(name: 'feelslike_f') double feelsLikeF,
      @JsonKey(name: 'feelslike_c') double feelsLikeC,
      double uv,
      double humidity,
      int cloud,
      Condition condition});

  @override
  $ConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$$CurrentWeatherForecastImplCopyWithImpl<$Res>
    extends _$CurrentWeatherForecastCopyWithImpl<$Res,
        _$CurrentWeatherForecastImpl>
    implements _$$CurrentWeatherForecastImplCopyWith<$Res> {
  __$$CurrentWeatherForecastImplCopyWithImpl(
      _$CurrentWeatherForecastImpl _value,
      $Res Function(_$CurrentWeatherForecastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdatedEpoch = null,
    Object? lastUpdated = null,
    Object? tempC = null,
    Object? tempF = null,
    Object? feelsLikeF = null,
    Object? feelsLikeC = null,
    Object? uv = null,
    Object? humidity = null,
    Object? cloud = null,
    Object? condition = null,
  }) {
    return _then(_$CurrentWeatherForecastImpl(
      lastUpdatedEpoch: null == lastUpdatedEpoch
          ? _value.lastUpdatedEpoch
          : lastUpdatedEpoch // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String,
      tempC: null == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double,
      tempF: null == tempF
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLikeF: null == feelsLikeF
          ? _value.feelsLikeF
          : feelsLikeF // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLikeC: null == feelsLikeC
          ? _value.feelsLikeC
          : feelsLikeC // ignore: cast_nullable_to_non_nullable
              as double,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      cloud: null == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentWeatherForecastImpl implements _CurrentWeatherForecast {
  const _$CurrentWeatherForecastImpl(
      {@JsonKey(name: 'last_updated_epoch') required this.lastUpdatedEpoch,
      @JsonKey(name: 'last_updated') required this.lastUpdated,
      @JsonKey(name: 'temp_c') required this.tempC,
      @JsonKey(name: 'temp_f') required this.tempF,
      @JsonKey(name: 'feelslike_f') required this.feelsLikeF,
      @JsonKey(name: 'feelslike_c') required this.feelsLikeC,
      required this.uv,
      required this.humidity,
      required this.cloud,
      required this.condition});

  factory _$CurrentWeatherForecastImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentWeatherForecastImplFromJson(json);

  @override
  @JsonKey(name: 'last_updated_epoch')
  final int lastUpdatedEpoch;
  @override
  @JsonKey(name: 'last_updated')
  final String lastUpdated;
  @override
  @JsonKey(name: 'temp_c')
  final double tempC;
  @override
  @JsonKey(name: 'temp_f')
  final double tempF;
  @override
  @JsonKey(name: 'feelslike_f')
  final double feelsLikeF;
  @override
  @JsonKey(name: 'feelslike_c')
  final double feelsLikeC;
  @override
  final double uv;
  @override
  final double humidity;
  @override
  final int cloud;
  @override
  final Condition condition;

  @override
  String toString() {
    return 'CurrentWeatherForecast(lastUpdatedEpoch: $lastUpdatedEpoch, lastUpdated: $lastUpdated, tempC: $tempC, tempF: $tempF, feelsLikeF: $feelsLikeF, feelsLikeC: $feelsLikeC, uv: $uv, humidity: $humidity, cloud: $cloud, condition: $condition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherForecastImpl &&
            (identical(other.lastUpdatedEpoch, lastUpdatedEpoch) ||
                other.lastUpdatedEpoch == lastUpdatedEpoch) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.tempC, tempC) || other.tempC == tempC) &&
            (identical(other.tempF, tempF) || other.tempF == tempF) &&
            (identical(other.feelsLikeF, feelsLikeF) ||
                other.feelsLikeF == feelsLikeF) &&
            (identical(other.feelsLikeC, feelsLikeC) ||
                other.feelsLikeC == feelsLikeC) &&
            (identical(other.uv, uv) || other.uv == uv) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.cloud, cloud) || other.cloud == cloud) &&
            (identical(other.condition, condition) ||
                other.condition == condition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lastUpdatedEpoch, lastUpdated,
      tempC, tempF, feelsLikeF, feelsLikeC, uv, humidity, cloud, condition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWeatherForecastImplCopyWith<_$CurrentWeatherForecastImpl>
      get copyWith => __$$CurrentWeatherForecastImplCopyWithImpl<
          _$CurrentWeatherForecastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentWeatherForecastImplToJson(
      this,
    );
  }
}

abstract class _CurrentWeatherForecast implements CurrentWeatherForecast {
  const factory _CurrentWeatherForecast(
      {@JsonKey(name: 'last_updated_epoch') required final int lastUpdatedEpoch,
      @JsonKey(name: 'last_updated') required final String lastUpdated,
      @JsonKey(name: 'temp_c') required final double tempC,
      @JsonKey(name: 'temp_f') required final double tempF,
      @JsonKey(name: 'feelslike_f') required final double feelsLikeF,
      @JsonKey(name: 'feelslike_c') required final double feelsLikeC,
      required final double uv,
      required final double humidity,
      required final int cloud,
      required final Condition condition}) = _$CurrentWeatherForecastImpl;

  factory _CurrentWeatherForecast.fromJson(Map<String, dynamic> json) =
      _$CurrentWeatherForecastImpl.fromJson;

  @override
  @JsonKey(name: 'last_updated_epoch')
  int get lastUpdatedEpoch;
  @override
  @JsonKey(name: 'last_updated')
  String get lastUpdated;
  @override
  @JsonKey(name: 'temp_c')
  double get tempC;
  @override
  @JsonKey(name: 'temp_f')
  double get tempF;
  @override
  @JsonKey(name: 'feelslike_f')
  double get feelsLikeF;
  @override
  @JsonKey(name: 'feelslike_c')
  double get feelsLikeC;
  @override
  double get uv;
  @override
  double get humidity;
  @override
  int get cloud;
  @override
  Condition get condition;
  @override
  @JsonKey(ignore: true)
  _$$CurrentWeatherForecastImplCopyWith<_$CurrentWeatherForecastImpl>
      get copyWith => throw _privateConstructorUsedError;
}
