// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_weather_forecast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentWeatherForecastModel _$CurrentWeatherForecastModelFromJson(
    Map<String, dynamic> json) {
  return _CurrentWeatherForecastModel.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeatherForecastModel {
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
  ConditionModel get condition => throw _privateConstructorUsedError;
  double get uv => throw _privateConstructorUsedError;
  double get humidity => throw _privateConstructorUsedError;
  int get cloud => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherForecastModelCopyWith<CurrentWeatherForecastModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherForecastModelCopyWith<$Res> {
  factory $CurrentWeatherForecastModelCopyWith(
          CurrentWeatherForecastModel value,
          $Res Function(CurrentWeatherForecastModel) then) =
      _$CurrentWeatherForecastModelCopyWithImpl<$Res,
          CurrentWeatherForecastModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'last_updated_epoch') int lastUpdatedEpoch,
      @JsonKey(name: 'last_updated') String lastUpdated,
      @JsonKey(name: 'temp_c') double tempC,
      @JsonKey(name: 'temp_f') double tempF,
      @JsonKey(name: 'feelslike_f') double feelsLikeF,
      @JsonKey(name: 'feelslike_c') double feelsLikeC,
      @JsonKey(name: 'precip_mm', defaultValue: 0) double precipMm,
      ConditionModel condition,
      double uv,
      double humidity,
      int cloud});

  $ConditionModelCopyWith<$Res> get condition;
}

/// @nodoc
class _$CurrentWeatherForecastModelCopyWithImpl<$Res,
        $Val extends CurrentWeatherForecastModel>
    implements $CurrentWeatherForecastModelCopyWith<$Res> {
  _$CurrentWeatherForecastModelCopyWithImpl(this._value, this._then);

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
    Object? condition = null,
    Object? uv = null,
    Object? humidity = null,
    Object? cloud = null,
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
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ConditionModel,
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
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConditionModelCopyWith<$Res> get condition {
    return $ConditionModelCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentWeatherForecastModelImplCopyWith<$Res>
    implements $CurrentWeatherForecastModelCopyWith<$Res> {
  factory _$$CurrentWeatherForecastModelImplCopyWith(
          _$CurrentWeatherForecastModelImpl value,
          $Res Function(_$CurrentWeatherForecastModelImpl) then) =
      __$$CurrentWeatherForecastModelImplCopyWithImpl<$Res>;
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
      ConditionModel condition,
      double uv,
      double humidity,
      int cloud});

  @override
  $ConditionModelCopyWith<$Res> get condition;
}

/// @nodoc
class __$$CurrentWeatherForecastModelImplCopyWithImpl<$Res>
    extends _$CurrentWeatherForecastModelCopyWithImpl<$Res,
        _$CurrentWeatherForecastModelImpl>
    implements _$$CurrentWeatherForecastModelImplCopyWith<$Res> {
  __$$CurrentWeatherForecastModelImplCopyWithImpl(
      _$CurrentWeatherForecastModelImpl _value,
      $Res Function(_$CurrentWeatherForecastModelImpl) _then)
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
    Object? condition = null,
    Object? uv = null,
    Object? humidity = null,
    Object? cloud = null,
  }) {
    return _then(_$CurrentWeatherForecastModelImpl(
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
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ConditionModel,
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
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CurrentWeatherForecastModelImpl extends _CurrentWeatherForecastModel {
  const _$CurrentWeatherForecastModelImpl(
      {@JsonKey(name: 'last_updated_epoch') required this.lastUpdatedEpoch,
      @JsonKey(name: 'last_updated') required this.lastUpdated,
      @JsonKey(name: 'temp_c') required this.tempC,
      @JsonKey(name: 'temp_f') required this.tempF,
      @JsonKey(name: 'feelslike_f') required this.feelsLikeF,
      @JsonKey(name: 'feelslike_c') required this.feelsLikeC,
      @JsonKey(name: 'precip_mm', defaultValue: 0) required this.precipMm,
      required this.condition,
      required this.uv,
      required this.humidity,
      required this.cloud})
      : super._();

  factory _$CurrentWeatherForecastModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CurrentWeatherForecastModelImplFromJson(json);

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
  final ConditionModel condition;
  @override
  final double uv;
  @override
  final double humidity;
  @override
  final int cloud;

  @override
  String toString() {
    return 'CurrentWeatherForecastModel(lastUpdatedEpoch: $lastUpdatedEpoch, lastUpdated: $lastUpdated, tempC: $tempC, tempF: $tempF, feelsLikeF: $feelsLikeF, feelsLikeC: $feelsLikeC, precipMm: $precipMm, condition: $condition, uv: $uv, humidity: $humidity, cloud: $cloud)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherForecastModelImpl &&
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
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.uv, uv) || other.uv == uv) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.cloud, cloud) || other.cloud == cloud));
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
      condition,
      uv,
      humidity,
      cloud);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWeatherForecastModelImplCopyWith<_$CurrentWeatherForecastModelImpl>
      get copyWith => __$$CurrentWeatherForecastModelImplCopyWithImpl<
          _$CurrentWeatherForecastModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentWeatherForecastModelImplToJson(
      this,
    );
  }
}

abstract class _CurrentWeatherForecastModel
    extends CurrentWeatherForecastModel {
  const factory _CurrentWeatherForecastModel(
      {@JsonKey(name: 'last_updated_epoch') required final int lastUpdatedEpoch,
      @JsonKey(name: 'last_updated') required final String lastUpdated,
      @JsonKey(name: 'temp_c') required final double tempC,
      @JsonKey(name: 'temp_f') required final double tempF,
      @JsonKey(name: 'feelslike_f') required final double feelsLikeF,
      @JsonKey(name: 'feelslike_c') required final double feelsLikeC,
      @JsonKey(name: 'precip_mm', defaultValue: 0)
      required final double precipMm,
      required final ConditionModel condition,
      required final double uv,
      required final double humidity,
      required final int cloud}) = _$CurrentWeatherForecastModelImpl;
  const _CurrentWeatherForecastModel._() : super._();

  factory _CurrentWeatherForecastModel.fromJson(Map<String, dynamic> json) =
      _$CurrentWeatherForecastModelImpl.fromJson;

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
  ConditionModel get condition;
  @override
  double get uv;
  @override
  double get humidity;
  @override
  int get cloud;
  @override
  @JsonKey(ignore: true)
  _$$CurrentWeatherForecastModelImplCopyWith<_$CurrentWeatherForecastModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HourWeatherForecastModel _$HourWeatherForecastModelFromJson(
    Map<String, dynamic> json) {
  return _HourWeatherForecastModel.fromJson(json);
}

/// @nodoc
mixin _$HourWeatherForecastModel {
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
  ConditionModel get condition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourWeatherForecastModelCopyWith<HourWeatherForecastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourWeatherForecastModelCopyWith<$Res> {
  factory $HourWeatherForecastModelCopyWith(HourWeatherForecastModel value,
          $Res Function(HourWeatherForecastModel) then) =
      _$HourWeatherForecastModelCopyWithImpl<$Res, HourWeatherForecastModel>;
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
      ConditionModel condition});

  $ConditionModelCopyWith<$Res> get condition;
}

/// @nodoc
class _$HourWeatherForecastModelCopyWithImpl<$Res,
        $Val extends HourWeatherForecastModel>
    implements $HourWeatherForecastModelCopyWith<$Res> {
  _$HourWeatherForecastModelCopyWithImpl(this._value, this._then);

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
              as ConditionModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConditionModelCopyWith<$Res> get condition {
    return $ConditionModelCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HourWeatherForecastModelImplCopyWith<$Res>
    implements $HourWeatherForecastModelCopyWith<$Res> {
  factory _$$HourWeatherForecastModelImplCopyWith(
          _$HourWeatherForecastModelImpl value,
          $Res Function(_$HourWeatherForecastModelImpl) then) =
      __$$HourWeatherForecastModelImplCopyWithImpl<$Res>;
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
      ConditionModel condition});

  @override
  $ConditionModelCopyWith<$Res> get condition;
}

/// @nodoc
class __$$HourWeatherForecastModelImplCopyWithImpl<$Res>
    extends _$HourWeatherForecastModelCopyWithImpl<$Res,
        _$HourWeatherForecastModelImpl>
    implements _$$HourWeatherForecastModelImplCopyWith<$Res> {
  __$$HourWeatherForecastModelImplCopyWithImpl(
      _$HourWeatherForecastModelImpl _value,
      $Res Function(_$HourWeatherForecastModelImpl) _then)
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
    return _then(_$HourWeatherForecastModelImpl(
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
              as ConditionModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$HourWeatherForecastModelImpl extends _HourWeatherForecastModel {
  const _$HourWeatherForecastModelImpl(
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

  factory _$HourWeatherForecastModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourWeatherForecastModelImplFromJson(json);

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
  final ConditionModel condition;

  @override
  String toString() {
    return 'HourWeatherForecastModel(time: $time, timeEpoch: $timeEpoch, tempC: $tempC, tempF: $tempF, feelsLikeF: $feelsLikeF, feelsLikeC: $feelsLikeC, chanceOfRain: $chanceOfRain, uv: $uv, humidity: $humidity, cloud: $cloud, condition: $condition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourWeatherForecastModelImpl &&
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
  _$$HourWeatherForecastModelImplCopyWith<_$HourWeatherForecastModelImpl>
      get copyWith => __$$HourWeatherForecastModelImplCopyWithImpl<
          _$HourWeatherForecastModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourWeatherForecastModelImplToJson(
      this,
    );
  }
}

abstract class _HourWeatherForecastModel extends HourWeatherForecastModel {
  const factory _HourWeatherForecastModel(
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
          required final ConditionModel condition}) =
      _$HourWeatherForecastModelImpl;
  const _HourWeatherForecastModel._() : super._();

  factory _HourWeatherForecastModel.fromJson(Map<String, dynamic> json) =
      _$HourWeatherForecastModelImpl.fromJson;

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
  ConditionModel get condition;
  @override
  @JsonKey(ignore: true)
  _$$HourWeatherForecastModelImplCopyWith<_$HourWeatherForecastModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DayWeatherForecastModel _$DayWeatherForecastModelFromJson(
    Map<String, dynamic> json) {
  return _DayWeatherForecastModel.fromJson(json);
}

/// @nodoc
mixin _$DayWeatherForecastModel {
  @JsonKey(name: 'maxtemp_c')
  double get maxTempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxtemp_f')
  double get maxTempF => throw _privateConstructorUsedError;
  @JsonKey(name: 'mintemp_c')
  double get minTempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'mintemp_f')
  double get minTempF => throw _privateConstructorUsedError;
  double get uv => throw _privateConstructorUsedError;
  ConditionModel get condition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayWeatherForecastModelCopyWith<DayWeatherForecastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayWeatherForecastModelCopyWith<$Res> {
  factory $DayWeatherForecastModelCopyWith(DayWeatherForecastModel value,
          $Res Function(DayWeatherForecastModel) then) =
      _$DayWeatherForecastModelCopyWithImpl<$Res, DayWeatherForecastModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'maxtemp_c') double maxTempC,
      @JsonKey(name: 'maxtemp_f') double maxTempF,
      @JsonKey(name: 'mintemp_c') double minTempC,
      @JsonKey(name: 'mintemp_f') double minTempF,
      double uv,
      ConditionModel condition});

  $ConditionModelCopyWith<$Res> get condition;
}

/// @nodoc
class _$DayWeatherForecastModelCopyWithImpl<$Res,
        $Val extends DayWeatherForecastModel>
    implements $DayWeatherForecastModelCopyWith<$Res> {
  _$DayWeatherForecastModelCopyWithImpl(this._value, this._then);

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
              as ConditionModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConditionModelCopyWith<$Res> get condition {
    return $ConditionModelCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DayWeatherForecastModelImplCopyWith<$Res>
    implements $DayWeatherForecastModelCopyWith<$Res> {
  factory _$$DayWeatherForecastModelImplCopyWith(
          _$DayWeatherForecastModelImpl value,
          $Res Function(_$DayWeatherForecastModelImpl) then) =
      __$$DayWeatherForecastModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'maxtemp_c') double maxTempC,
      @JsonKey(name: 'maxtemp_f') double maxTempF,
      @JsonKey(name: 'mintemp_c') double minTempC,
      @JsonKey(name: 'mintemp_f') double minTempF,
      double uv,
      ConditionModel condition});

  @override
  $ConditionModelCopyWith<$Res> get condition;
}

/// @nodoc
class __$$DayWeatherForecastModelImplCopyWithImpl<$Res>
    extends _$DayWeatherForecastModelCopyWithImpl<$Res,
        _$DayWeatherForecastModelImpl>
    implements _$$DayWeatherForecastModelImplCopyWith<$Res> {
  __$$DayWeatherForecastModelImplCopyWithImpl(
      _$DayWeatherForecastModelImpl _value,
      $Res Function(_$DayWeatherForecastModelImpl) _then)
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
    return _then(_$DayWeatherForecastModelImpl(
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
              as ConditionModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$DayWeatherForecastModelImpl extends _DayWeatherForecastModel {
  const _$DayWeatherForecastModelImpl(
      {@JsonKey(name: 'maxtemp_c') required this.maxTempC,
      @JsonKey(name: 'maxtemp_f') required this.maxTempF,
      @JsonKey(name: 'mintemp_c') required this.minTempC,
      @JsonKey(name: 'mintemp_f') required this.minTempF,
      required this.uv,
      required this.condition})
      : super._();

  factory _$DayWeatherForecastModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayWeatherForecastModelImplFromJson(json);

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
  final ConditionModel condition;

  @override
  String toString() {
    return 'DayWeatherForecastModel(maxTempC: $maxTempC, maxTempF: $maxTempF, minTempC: $minTempC, minTempF: $minTempF, uv: $uv, condition: $condition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayWeatherForecastModelImpl &&
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
  _$$DayWeatherForecastModelImplCopyWith<_$DayWeatherForecastModelImpl>
      get copyWith => __$$DayWeatherForecastModelImplCopyWithImpl<
          _$DayWeatherForecastModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayWeatherForecastModelImplToJson(
      this,
    );
  }
}

abstract class _DayWeatherForecastModel extends DayWeatherForecastModel {
  const factory _DayWeatherForecastModel(
      {@JsonKey(name: 'maxtemp_c') required final double maxTempC,
      @JsonKey(name: 'maxtemp_f') required final double maxTempF,
      @JsonKey(name: 'mintemp_c') required final double minTempC,
      @JsonKey(name: 'mintemp_f') required final double minTempF,
      required final double uv,
      required final ConditionModel condition}) = _$DayWeatherForecastModelImpl;
  const _DayWeatherForecastModel._() : super._();

  factory _DayWeatherForecastModel.fromJson(Map<String, dynamic> json) =
      _$DayWeatherForecastModelImpl.fromJson;

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
  ConditionModel get condition;
  @override
  @JsonKey(ignore: true)
  _$$DayWeatherForecastModelImplCopyWith<_$DayWeatherForecastModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
