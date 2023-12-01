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
  final ConditionModel condition;
  @override
  final double uv;
  @override
  final double humidity;
  @override
  final int cloud;

  @override
  String toString() {
    return 'CurrentWeatherForecastModel(lastUpdatedEpoch: $lastUpdatedEpoch, lastUpdated: $lastUpdated, tempC: $tempC, tempF: $tempF, feelsLikeF: $feelsLikeF, feelsLikeC: $feelsLikeC, condition: $condition, uv: $uv, humidity: $humidity, cloud: $cloud)';
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
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.uv, uv) || other.uv == uv) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.cloud, cloud) || other.cloud == cloud));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lastUpdatedEpoch, lastUpdated,
      tempC, tempF, feelsLikeF, feelsLikeC, condition, uv, humidity, cloud);

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
