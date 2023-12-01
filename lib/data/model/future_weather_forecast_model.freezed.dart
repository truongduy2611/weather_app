// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'future_weather_forecast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FutureWeatherForecastModel _$FutureWeatherForecastModelFromJson(
    Map<String, dynamic> json) {
  return _FutureWeatherForecastModel.fromJson(json);
}

/// @nodoc
mixin _$FutureWeatherForecastModel {
  List<WeatherForecastDayModel> get forecastday =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FutureWeatherForecastModelCopyWith<FutureWeatherForecastModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FutureWeatherForecastModelCopyWith<$Res> {
  factory $FutureWeatherForecastModelCopyWith(FutureWeatherForecastModel value,
          $Res Function(FutureWeatherForecastModel) then) =
      _$FutureWeatherForecastModelCopyWithImpl<$Res,
          FutureWeatherForecastModel>;
  @useResult
  $Res call({List<WeatherForecastDayModel> forecastday});
}

/// @nodoc
class _$FutureWeatherForecastModelCopyWithImpl<$Res,
        $Val extends FutureWeatherForecastModel>
    implements $FutureWeatherForecastModelCopyWith<$Res> {
  _$FutureWeatherForecastModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastday = null,
  }) {
    return _then(_value.copyWith(
      forecastday: null == forecastday
          ? _value.forecastday
          : forecastday // ignore: cast_nullable_to_non_nullable
              as List<WeatherForecastDayModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FutureWeatherForecastModelImplCopyWith<$Res>
    implements $FutureWeatherForecastModelCopyWith<$Res> {
  factory _$$FutureWeatherForecastModelImplCopyWith(
          _$FutureWeatherForecastModelImpl value,
          $Res Function(_$FutureWeatherForecastModelImpl) then) =
      __$$FutureWeatherForecastModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WeatherForecastDayModel> forecastday});
}

/// @nodoc
class __$$FutureWeatherForecastModelImplCopyWithImpl<$Res>
    extends _$FutureWeatherForecastModelCopyWithImpl<$Res,
        _$FutureWeatherForecastModelImpl>
    implements _$$FutureWeatherForecastModelImplCopyWith<$Res> {
  __$$FutureWeatherForecastModelImplCopyWithImpl(
      _$FutureWeatherForecastModelImpl _value,
      $Res Function(_$FutureWeatherForecastModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastday = null,
  }) {
    return _then(_$FutureWeatherForecastModelImpl(
      forecastday: null == forecastday
          ? _value._forecastday
          : forecastday // ignore: cast_nullable_to_non_nullable
              as List<WeatherForecastDayModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FutureWeatherForecastModelImpl extends _FutureWeatherForecastModel {
  const _$FutureWeatherForecastModelImpl(
      {required final List<WeatherForecastDayModel> forecastday})
      : _forecastday = forecastday,
        super._();

  factory _$FutureWeatherForecastModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FutureWeatherForecastModelImplFromJson(json);

  final List<WeatherForecastDayModel> _forecastday;
  @override
  List<WeatherForecastDayModel> get forecastday {
    if (_forecastday is EqualUnmodifiableListView) return _forecastday;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forecastday);
  }

  @override
  String toString() {
    return 'FutureWeatherForecastModel(forecastday: $forecastday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FutureWeatherForecastModelImpl &&
            const DeepCollectionEquality()
                .equals(other._forecastday, _forecastday));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_forecastday));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FutureWeatherForecastModelImplCopyWith<_$FutureWeatherForecastModelImpl>
      get copyWith => __$$FutureWeatherForecastModelImplCopyWithImpl<
          _$FutureWeatherForecastModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FutureWeatherForecastModelImplToJson(
      this,
    );
  }
}

abstract class _FutureWeatherForecastModel extends FutureWeatherForecastModel {
  const factory _FutureWeatherForecastModel(
          {required final List<WeatherForecastDayModel> forecastday}) =
      _$FutureWeatherForecastModelImpl;
  const _FutureWeatherForecastModel._() : super._();

  factory _FutureWeatherForecastModel.fromJson(Map<String, dynamic> json) =
      _$FutureWeatherForecastModelImpl.fromJson;

  @override
  List<WeatherForecastDayModel> get forecastday;
  @override
  @JsonKey(ignore: true)
  _$$FutureWeatherForecastModelImplCopyWith<_$FutureWeatherForecastModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WeatherForecastDayModel _$WeatherForecastDayModelFromJson(
    Map<String, dynamic> json) {
  return _WeatherForecastDayModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherForecastDayModel {
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_epoch')
  int get dateEpoch => throw _privateConstructorUsedError;
  DayWeatherForecastModel get day => throw _privateConstructorUsedError;
  List<HourWeatherForecastModel> get hour => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherForecastDayModelCopyWith<WeatherForecastDayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastDayModelCopyWith<$Res> {
  factory $WeatherForecastDayModelCopyWith(WeatherForecastDayModel value,
          $Res Function(WeatherForecastDayModel) then) =
      _$WeatherForecastDayModelCopyWithImpl<$Res, WeatherForecastDayModel>;
  @useResult
  $Res call(
      {String date,
      @JsonKey(name: 'date_epoch') int dateEpoch,
      DayWeatherForecastModel day,
      List<HourWeatherForecastModel> hour});

  $DayWeatherForecastModelCopyWith<$Res> get day;
}

/// @nodoc
class _$WeatherForecastDayModelCopyWithImpl<$Res,
        $Val extends WeatherForecastDayModel>
    implements $WeatherForecastDayModelCopyWith<$Res> {
  _$WeatherForecastDayModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? dateEpoch = null,
    Object? day = null,
    Object? hour = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      dateEpoch: null == dateEpoch
          ? _value.dateEpoch
          : dateEpoch // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DayWeatherForecastModel,
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<HourWeatherForecastModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DayWeatherForecastModelCopyWith<$Res> get day {
    return $DayWeatherForecastModelCopyWith<$Res>(_value.day, (value) {
      return _then(_value.copyWith(day: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherForecastDayModelImplCopyWith<$Res>
    implements $WeatherForecastDayModelCopyWith<$Res> {
  factory _$$WeatherForecastDayModelImplCopyWith(
          _$WeatherForecastDayModelImpl value,
          $Res Function(_$WeatherForecastDayModelImpl) then) =
      __$$WeatherForecastDayModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String date,
      @JsonKey(name: 'date_epoch') int dateEpoch,
      DayWeatherForecastModel day,
      List<HourWeatherForecastModel> hour});

  @override
  $DayWeatherForecastModelCopyWith<$Res> get day;
}

/// @nodoc
class __$$WeatherForecastDayModelImplCopyWithImpl<$Res>
    extends _$WeatherForecastDayModelCopyWithImpl<$Res,
        _$WeatherForecastDayModelImpl>
    implements _$$WeatherForecastDayModelImplCopyWith<$Res> {
  __$$WeatherForecastDayModelImplCopyWithImpl(
      _$WeatherForecastDayModelImpl _value,
      $Res Function(_$WeatherForecastDayModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? dateEpoch = null,
    Object? day = null,
    Object? hour = null,
  }) {
    return _then(_$WeatherForecastDayModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      dateEpoch: null == dateEpoch
          ? _value.dateEpoch
          : dateEpoch // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DayWeatherForecastModel,
      hour: null == hour
          ? _value._hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<HourWeatherForecastModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WeatherForecastDayModelImpl extends _WeatherForecastDayModel {
  const _$WeatherForecastDayModelImpl(
      {required this.date,
      @JsonKey(name: 'date_epoch') required this.dateEpoch,
      required this.day,
      required final List<HourWeatherForecastModel> hour})
      : _hour = hour,
        super._();

  factory _$WeatherForecastDayModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherForecastDayModelImplFromJson(json);

  @override
  final String date;
  @override
  @JsonKey(name: 'date_epoch')
  final int dateEpoch;
  @override
  final DayWeatherForecastModel day;
  final List<HourWeatherForecastModel> _hour;
  @override
  List<HourWeatherForecastModel> get hour {
    if (_hour is EqualUnmodifiableListView) return _hour;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hour);
  }

  @override
  String toString() {
    return 'WeatherForecastDayModel(date: $date, dateEpoch: $dateEpoch, day: $day, hour: $hour)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherForecastDayModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dateEpoch, dateEpoch) ||
                other.dateEpoch == dateEpoch) &&
            (identical(other.day, day) || other.day == day) &&
            const DeepCollectionEquality().equals(other._hour, _hour));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, dateEpoch, day,
      const DeepCollectionEquality().hash(_hour));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherForecastDayModelImplCopyWith<_$WeatherForecastDayModelImpl>
      get copyWith => __$$WeatherForecastDayModelImplCopyWithImpl<
          _$WeatherForecastDayModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherForecastDayModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherForecastDayModel extends WeatherForecastDayModel {
  const factory _WeatherForecastDayModel(
          {required final String date,
          @JsonKey(name: 'date_epoch') required final int dateEpoch,
          required final DayWeatherForecastModel day,
          required final List<HourWeatherForecastModel> hour}) =
      _$WeatherForecastDayModelImpl;
  const _WeatherForecastDayModel._() : super._();

  factory _WeatherForecastDayModel.fromJson(Map<String, dynamic> json) =
      _$WeatherForecastDayModelImpl.fromJson;

  @override
  String get date;
  @override
  @JsonKey(name: 'date_epoch')
  int get dateEpoch;
  @override
  DayWeatherForecastModel get day;
  @override
  List<HourWeatherForecastModel> get hour;
  @override
  @JsonKey(ignore: true)
  _$$WeatherForecastDayModelImplCopyWith<_$WeatherForecastDayModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
