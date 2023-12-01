// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_forecast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherForecastModel _$WeatherForecastModelFromJson(Map<String, dynamic> json) {
  return _WeatherForecastModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherForecastModel {
  CurrentWeatherForecastModel get current => throw _privateConstructorUsedError;
  WeatherLocationModel get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherForecastModelCopyWith<WeatherForecastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastModelCopyWith<$Res> {
  factory $WeatherForecastModelCopyWith(WeatherForecastModel value,
          $Res Function(WeatherForecastModel) then) =
      _$WeatherForecastModelCopyWithImpl<$Res, WeatherForecastModel>;
  @useResult
  $Res call(
      {CurrentWeatherForecastModel current, WeatherLocationModel location});

  $CurrentWeatherForecastModelCopyWith<$Res> get current;
  $WeatherLocationModelCopyWith<$Res> get location;
}

/// @nodoc
class _$WeatherForecastModelCopyWithImpl<$Res,
        $Val extends WeatherForecastModel>
    implements $WeatherForecastModelCopyWith<$Res> {
  _$WeatherForecastModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeatherForecastModel,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as WeatherLocationModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherForecastModelCopyWith<$Res> get current {
    return $CurrentWeatherForecastModelCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherLocationModelCopyWith<$Res> get location {
    return $WeatherLocationModelCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherForecastModelImplCopyWith<$Res>
    implements $WeatherForecastModelCopyWith<$Res> {
  factory _$$WeatherForecastModelImplCopyWith(_$WeatherForecastModelImpl value,
          $Res Function(_$WeatherForecastModelImpl) then) =
      __$$WeatherForecastModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CurrentWeatherForecastModel current, WeatherLocationModel location});

  @override
  $CurrentWeatherForecastModelCopyWith<$Res> get current;
  @override
  $WeatherLocationModelCopyWith<$Res> get location;
}

/// @nodoc
class __$$WeatherForecastModelImplCopyWithImpl<$Res>
    extends _$WeatherForecastModelCopyWithImpl<$Res, _$WeatherForecastModelImpl>
    implements _$$WeatherForecastModelImplCopyWith<$Res> {
  __$$WeatherForecastModelImplCopyWithImpl(_$WeatherForecastModelImpl _value,
      $Res Function(_$WeatherForecastModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? location = null,
  }) {
    return _then(_$WeatherForecastModelImpl(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeatherForecastModel,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as WeatherLocationModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherForecastModelImpl extends _WeatherForecastModel {
  const _$WeatherForecastModelImpl(
      {required this.current, required this.location})
      : super._();

  factory _$WeatherForecastModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherForecastModelImplFromJson(json);

  @override
  final CurrentWeatherForecastModel current;
  @override
  final WeatherLocationModel location;

  @override
  String toString() {
    return 'WeatherForecastModel(current: $current, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherForecastModelImpl &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, current, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherForecastModelImplCopyWith<_$WeatherForecastModelImpl>
      get copyWith =>
          __$$WeatherForecastModelImplCopyWithImpl<_$WeatherForecastModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherForecastModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherForecastModel extends WeatherForecastModel {
  const factory _WeatherForecastModel(
          {required final CurrentWeatherForecastModel current,
          required final WeatherLocationModel location}) =
      _$WeatherForecastModelImpl;
  const _WeatherForecastModel._() : super._();

  factory _WeatherForecastModel.fromJson(Map<String, dynamic> json) =
      _$WeatherForecastModelImpl.fromJson;

  @override
  CurrentWeatherForecastModel get current;
  @override
  WeatherLocationModel get location;
  @override
  @JsonKey(ignore: true)
  _$$WeatherForecastModelImplCopyWith<_$WeatherForecastModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
