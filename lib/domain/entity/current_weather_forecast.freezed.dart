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
  @JsonKey(name: 'precip_mm', defaultValue: 0)
  double get precipMm => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'precip_mm', defaultValue: 0) double precipMm,
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
    Object? precipMm = null,
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
      precipMm: null == precipMm
          ? _value.precipMm
          : precipMm // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'precip_mm', defaultValue: 0) double precipMm,
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
    Object? precipMm = null,
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
      precipMm: null == precipMm
          ? _value.precipMm
          : precipMm // ignore: cast_nullable_to_non_nullable
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

@JsonSerializable(explicitToJson: true)
class _$CurrentWeatherForecastImpl extends _CurrentWeatherForecast {
  const _$CurrentWeatherForecastImpl(
      {@JsonKey(name: 'last_updated_epoch') required this.lastUpdatedEpoch,
      @JsonKey(name: 'last_updated') required this.lastUpdated,
      @JsonKey(name: 'temp_c') required this.tempC,
      @JsonKey(name: 'temp_f') required this.tempF,
      @JsonKey(name: 'feelslike_f') required this.feelsLikeF,
      @JsonKey(name: 'feelslike_c') required this.feelsLikeC,
      @JsonKey(name: 'precip_mm', defaultValue: 0) required this.precipMm,
      required this.uv,
      required this.humidity,
      required this.cloud,
      required this.condition})
      : super._();

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
  @JsonKey(name: 'precip_mm', defaultValue: 0)
  final double precipMm;
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
    return 'CurrentWeatherForecast(lastUpdatedEpoch: $lastUpdatedEpoch, lastUpdated: $lastUpdated, tempC: $tempC, tempF: $tempF, feelsLikeF: $feelsLikeF, feelsLikeC: $feelsLikeC, precipMm: $precipMm, uv: $uv, humidity: $humidity, cloud: $cloud, condition: $condition)';
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
            (identical(other.precipMm, precipMm) ||
                other.precipMm == precipMm) &&
            (identical(other.uv, uv) || other.uv == uv) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.cloud, cloud) || other.cloud == cloud) &&
            (identical(other.condition, condition) ||
                other.condition == condition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lastUpdatedEpoch,
      lastUpdated,
      tempC,
      tempF,
      feelsLikeF,
      feelsLikeC,
      precipMm,
      uv,
      humidity,
      cloud,
      condition);

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

abstract class _CurrentWeatherForecast extends CurrentWeatherForecast {
  const factory _CurrentWeatherForecast(
      {@JsonKey(name: 'last_updated_epoch') required final int lastUpdatedEpoch,
      @JsonKey(name: 'last_updated') required final String lastUpdated,
      @JsonKey(name: 'temp_c') required final double tempC,
      @JsonKey(name: 'temp_f') required final double tempF,
      @JsonKey(name: 'feelslike_f') required final double feelsLikeF,
      @JsonKey(name: 'feelslike_c') required final double feelsLikeC,
      @JsonKey(name: 'precip_mm', defaultValue: 0)
      required final double precipMm,
      required final double uv,
      required final double humidity,
      required final int cloud,
      required final Condition condition}) = _$CurrentWeatherForecastImpl;
  const _CurrentWeatherForecast._() : super._();

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
  @JsonKey(name: 'precip_mm', defaultValue: 0)
  double get precipMm;
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

HourWeatherForecast _$HourWeatherForecastFromJson(Map<String, dynamic> json) {
  return _HourWeatherForecast.fromJson(json);
}

/// @nodoc
mixin _$HourWeatherForecast {
  String get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_epoch')
  int get timeEpoch => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_c')
  double get tempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_f')
  double get tempF => throw _privateConstructorUsedError;
  @JsonKey(name: 'feelslike_f')
  double get feelsLikeF => throw _privateConstructorUsedError;
  @JsonKey(name: 'feelslike_c')
  double get feelsLikeC => throw _privateConstructorUsedError;
  @JsonKey(name: 'chance_of_rain')
  int get chanceOfRain => throw _privateConstructorUsedError;
  double get uv => throw _privateConstructorUsedError;
  double get humidity => throw _privateConstructorUsedError;
  int get cloud => throw _privateConstructorUsedError;
  Condition get condition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourWeatherForecastCopyWith<HourWeatherForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourWeatherForecastCopyWith<$Res> {
  factory $HourWeatherForecastCopyWith(
          HourWeatherForecast value, $Res Function(HourWeatherForecast) then) =
      _$HourWeatherForecastCopyWithImpl<$Res, HourWeatherForecast>;
  @useResult
  $Res call(
      {String time,
      @JsonKey(name: 'time_epoch') int timeEpoch,
      @JsonKey(name: 'temp_c') double tempC,
      @JsonKey(name: 'temp_f') double tempF,
      @JsonKey(name: 'feelslike_f') double feelsLikeF,
      @JsonKey(name: 'feelslike_c') double feelsLikeC,
      @JsonKey(name: 'chance_of_rain') int chanceOfRain,
      double uv,
      double humidity,
      int cloud,
      Condition condition});

  $ConditionCopyWith<$Res> get condition;
}

/// @nodoc
class _$HourWeatherForecastCopyWithImpl<$Res, $Val extends HourWeatherForecast>
    implements $HourWeatherForecastCopyWith<$Res> {
  _$HourWeatherForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? timeEpoch = null,
    Object? tempC = null,
    Object? tempF = null,
    Object? feelsLikeF = null,
    Object? feelsLikeC = null,
    Object? chanceOfRain = null,
    Object? uv = null,
    Object? humidity = null,
    Object? cloud = null,
    Object? condition = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      timeEpoch: null == timeEpoch
          ? _value.timeEpoch
          : timeEpoch // ignore: cast_nullable_to_non_nullable
              as int,
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
      chanceOfRain: null == chanceOfRain
          ? _value.chanceOfRain
          : chanceOfRain // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$HourWeatherForecastImplCopyWith<$Res>
    implements $HourWeatherForecastCopyWith<$Res> {
  factory _$$HourWeatherForecastImplCopyWith(_$HourWeatherForecastImpl value,
          $Res Function(_$HourWeatherForecastImpl) then) =
      __$$HourWeatherForecastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String time,
      @JsonKey(name: 'time_epoch') int timeEpoch,
      @JsonKey(name: 'temp_c') double tempC,
      @JsonKey(name: 'temp_f') double tempF,
      @JsonKey(name: 'feelslike_f') double feelsLikeF,
      @JsonKey(name: 'feelslike_c') double feelsLikeC,
      @JsonKey(name: 'chance_of_rain') int chanceOfRain,
      double uv,
      double humidity,
      int cloud,
      Condition condition});

  @override
  $ConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$$HourWeatherForecastImplCopyWithImpl<$Res>
    extends _$HourWeatherForecastCopyWithImpl<$Res, _$HourWeatherForecastImpl>
    implements _$$HourWeatherForecastImplCopyWith<$Res> {
  __$$HourWeatherForecastImplCopyWithImpl(_$HourWeatherForecastImpl _value,
      $Res Function(_$HourWeatherForecastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? timeEpoch = null,
    Object? tempC = null,
    Object? tempF = null,
    Object? feelsLikeF = null,
    Object? feelsLikeC = null,
    Object? chanceOfRain = null,
    Object? uv = null,
    Object? humidity = null,
    Object? cloud = null,
    Object? condition = null,
  }) {
    return _then(_$HourWeatherForecastImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      timeEpoch: null == timeEpoch
          ? _value.timeEpoch
          : timeEpoch // ignore: cast_nullable_to_non_nullable
              as int,
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
      chanceOfRain: null == chanceOfRain
          ? _value.chanceOfRain
          : chanceOfRain // ignore: cast_nullable_to_non_nullable
              as int,
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

@JsonSerializable(explicitToJson: true)
class _$HourWeatherForecastImpl extends _HourWeatherForecast {
  const _$HourWeatherForecastImpl(
      {required this.time,
      @JsonKey(name: 'time_epoch') required this.timeEpoch,
      @JsonKey(name: 'temp_c') required this.tempC,
      @JsonKey(name: 'temp_f') required this.tempF,
      @JsonKey(name: 'feelslike_f') required this.feelsLikeF,
      @JsonKey(name: 'feelslike_c') required this.feelsLikeC,
      @JsonKey(name: 'chance_of_rain') required this.chanceOfRain,
      required this.uv,
      required this.humidity,
      required this.cloud,
      required this.condition})
      : super._();

  factory _$HourWeatherForecastImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourWeatherForecastImplFromJson(json);

  @override
  final String time;
  @override
  @JsonKey(name: 'time_epoch')
  final int timeEpoch;
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
  @JsonKey(name: 'chance_of_rain')
  final int chanceOfRain;
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
    return 'HourWeatherForecast(time: $time, timeEpoch: $timeEpoch, tempC: $tempC, tempF: $tempF, feelsLikeF: $feelsLikeF, feelsLikeC: $feelsLikeC, chanceOfRain: $chanceOfRain, uv: $uv, humidity: $humidity, cloud: $cloud, condition: $condition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourWeatherForecastImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.timeEpoch, timeEpoch) ||
                other.timeEpoch == timeEpoch) &&
            (identical(other.tempC, tempC) || other.tempC == tempC) &&
            (identical(other.tempF, tempF) || other.tempF == tempF) &&
            (identical(other.feelsLikeF, feelsLikeF) ||
                other.feelsLikeF == feelsLikeF) &&
            (identical(other.feelsLikeC, feelsLikeC) ||
                other.feelsLikeC == feelsLikeC) &&
            (identical(other.chanceOfRain, chanceOfRain) ||
                other.chanceOfRain == chanceOfRain) &&
            (identical(other.uv, uv) || other.uv == uv) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.cloud, cloud) || other.cloud == cloud) &&
            (identical(other.condition, condition) ||
                other.condition == condition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, timeEpoch, tempC, tempF,
      feelsLikeF, feelsLikeC, chanceOfRain, uv, humidity, cloud, condition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HourWeatherForecastImplCopyWith<_$HourWeatherForecastImpl> get copyWith =>
      __$$HourWeatherForecastImplCopyWithImpl<_$HourWeatherForecastImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourWeatherForecastImplToJson(
      this,
    );
  }
}

abstract class _HourWeatherForecast extends HourWeatherForecast {
  const factory _HourWeatherForecast(
      {required final String time,
      @JsonKey(name: 'time_epoch') required final int timeEpoch,
      @JsonKey(name: 'temp_c') required final double tempC,
      @JsonKey(name: 'temp_f') required final double tempF,
      @JsonKey(name: 'feelslike_f') required final double feelsLikeF,
      @JsonKey(name: 'feelslike_c') required final double feelsLikeC,
      @JsonKey(name: 'chance_of_rain') required final int chanceOfRain,
      required final double uv,
      required final double humidity,
      required final int cloud,
      required final Condition condition}) = _$HourWeatherForecastImpl;
  const _HourWeatherForecast._() : super._();

  factory _HourWeatherForecast.fromJson(Map<String, dynamic> json) =
      _$HourWeatherForecastImpl.fromJson;

  @override
  String get time;
  @override
  @JsonKey(name: 'time_epoch')
  int get timeEpoch;
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
  @JsonKey(name: 'chance_of_rain')
  int get chanceOfRain;
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
  _$$HourWeatherForecastImplCopyWith<_$HourWeatherForecastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DayWeatherForecast _$DayWeatherForecastFromJson(Map<String, dynamic> json) {
  return _DayWeatherForecast.fromJson(json);
}

/// @nodoc
mixin _$DayWeatherForecast {
  @JsonKey(name: 'maxtemp_c')
  double get maxTempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxtemp_f')
  double get maxTempF => throw _privateConstructorUsedError;
  @JsonKey(name: 'mintemp_c')
  double get minTempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'mintemp_f')
  double get minTempF => throw _privateConstructorUsedError;
  double get uv => throw _privateConstructorUsedError;
  Condition get condition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayWeatherForecastCopyWith<DayWeatherForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayWeatherForecastCopyWith<$Res> {
  factory $DayWeatherForecastCopyWith(
          DayWeatherForecast value, $Res Function(DayWeatherForecast) then) =
      _$DayWeatherForecastCopyWithImpl<$Res, DayWeatherForecast>;
  @useResult
  $Res call(
      {@JsonKey(name: 'maxtemp_c') double maxTempC,
      @JsonKey(name: 'maxtemp_f') double maxTempF,
      @JsonKey(name: 'mintemp_c') double minTempC,
      @JsonKey(name: 'mintemp_f') double minTempF,
      double uv,
      Condition condition});

  $ConditionCopyWith<$Res> get condition;
}

/// @nodoc
class _$DayWeatherForecastCopyWithImpl<$Res, $Val extends DayWeatherForecast>
    implements $DayWeatherForecastCopyWith<$Res> {
  _$DayWeatherForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxTempC = null,
    Object? maxTempF = null,
    Object? minTempC = null,
    Object? minTempF = null,
    Object? uv = null,
    Object? condition = null,
  }) {
    return _then(_value.copyWith(
      maxTempC: null == maxTempC
          ? _value.maxTempC
          : maxTempC // ignore: cast_nullable_to_non_nullable
              as double,
      maxTempF: null == maxTempF
          ? _value.maxTempF
          : maxTempF // ignore: cast_nullable_to_non_nullable
              as double,
      minTempC: null == minTempC
          ? _value.minTempC
          : minTempC // ignore: cast_nullable_to_non_nullable
              as double,
      minTempF: null == minTempF
          ? _value.minTempF
          : minTempF // ignore: cast_nullable_to_non_nullable
              as double,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
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
abstract class _$$DayWeatherForecastImplCopyWith<$Res>
    implements $DayWeatherForecastCopyWith<$Res> {
  factory _$$DayWeatherForecastImplCopyWith(_$DayWeatherForecastImpl value,
          $Res Function(_$DayWeatherForecastImpl) then) =
      __$$DayWeatherForecastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'maxtemp_c') double maxTempC,
      @JsonKey(name: 'maxtemp_f') double maxTempF,
      @JsonKey(name: 'mintemp_c') double minTempC,
      @JsonKey(name: 'mintemp_f') double minTempF,
      double uv,
      Condition condition});

  @override
  $ConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$$DayWeatherForecastImplCopyWithImpl<$Res>
    extends _$DayWeatherForecastCopyWithImpl<$Res, _$DayWeatherForecastImpl>
    implements _$$DayWeatherForecastImplCopyWith<$Res> {
  __$$DayWeatherForecastImplCopyWithImpl(_$DayWeatherForecastImpl _value,
      $Res Function(_$DayWeatherForecastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxTempC = null,
    Object? maxTempF = null,
    Object? minTempC = null,
    Object? minTempF = null,
    Object? uv = null,
    Object? condition = null,
  }) {
    return _then(_$DayWeatherForecastImpl(
      maxTempC: null == maxTempC
          ? _value.maxTempC
          : maxTempC // ignore: cast_nullable_to_non_nullable
              as double,
      maxTempF: null == maxTempF
          ? _value.maxTempF
          : maxTempF // ignore: cast_nullable_to_non_nullable
              as double,
      minTempC: null == minTempC
          ? _value.minTempC
          : minTempC // ignore: cast_nullable_to_non_nullable
              as double,
      minTempF: null == minTempF
          ? _value.minTempF
          : minTempF // ignore: cast_nullable_to_non_nullable
              as double,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$DayWeatherForecastImpl extends _DayWeatherForecast {
  const _$DayWeatherForecastImpl(
      {@JsonKey(name: 'maxtemp_c') required this.maxTempC,
      @JsonKey(name: 'maxtemp_f') required this.maxTempF,
      @JsonKey(name: 'mintemp_c') required this.minTempC,
      @JsonKey(name: 'mintemp_f') required this.minTempF,
      required this.uv,
      required this.condition})
      : super._();

  factory _$DayWeatherForecastImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayWeatherForecastImplFromJson(json);

  @override
  @JsonKey(name: 'maxtemp_c')
  final double maxTempC;
  @override
  @JsonKey(name: 'maxtemp_f')
  final double maxTempF;
  @override
  @JsonKey(name: 'mintemp_c')
  final double minTempC;
  @override
  @JsonKey(name: 'mintemp_f')
  final double minTempF;
  @override
  final double uv;
  @override
  final Condition condition;

  @override
  String toString() {
    return 'DayWeatherForecast(maxTempC: $maxTempC, maxTempF: $maxTempF, minTempC: $minTempC, minTempF: $minTempF, uv: $uv, condition: $condition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayWeatherForecastImpl &&
            (identical(other.maxTempC, maxTempC) ||
                other.maxTempC == maxTempC) &&
            (identical(other.maxTempF, maxTempF) ||
                other.maxTempF == maxTempF) &&
            (identical(other.minTempC, minTempC) ||
                other.minTempC == minTempC) &&
            (identical(other.minTempF, minTempF) ||
                other.minTempF == minTempF) &&
            (identical(other.uv, uv) || other.uv == uv) &&
            (identical(other.condition, condition) ||
                other.condition == condition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, maxTempC, maxTempF, minTempC, minTempF, uv, condition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayWeatherForecastImplCopyWith<_$DayWeatherForecastImpl> get copyWith =>
      __$$DayWeatherForecastImplCopyWithImpl<_$DayWeatherForecastImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayWeatherForecastImplToJson(
      this,
    );
  }
}

abstract class _DayWeatherForecast extends DayWeatherForecast {
  const factory _DayWeatherForecast(
      {@JsonKey(name: 'maxtemp_c') required final double maxTempC,
      @JsonKey(name: 'maxtemp_f') required final double maxTempF,
      @JsonKey(name: 'mintemp_c') required final double minTempC,
      @JsonKey(name: 'mintemp_f') required final double minTempF,
      required final double uv,
      required final Condition condition}) = _$DayWeatherForecastImpl;
  const _DayWeatherForecast._() : super._();

  factory _DayWeatherForecast.fromJson(Map<String, dynamic> json) =
      _$DayWeatherForecastImpl.fromJson;

  @override
  @JsonKey(name: 'maxtemp_c')
  double get maxTempC;
  @override
  @JsonKey(name: 'maxtemp_f')
  double get maxTempF;
  @override
  @JsonKey(name: 'mintemp_c')
  double get minTempC;
  @override
  @JsonKey(name: 'mintemp_f')
  double get minTempF;
  @override
  double get uv;
  @override
  Condition get condition;
  @override
  @JsonKey(ignore: true)
  _$$DayWeatherForecastImplCopyWith<_$DayWeatherForecastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
