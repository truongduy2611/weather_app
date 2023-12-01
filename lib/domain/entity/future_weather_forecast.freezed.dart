// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'future_weather_forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FutureWeatherForecast _$FutureWeatherForecastFromJson(
    Map<String, dynamic> json) {
  return _FutureWeatherForecast.fromJson(json);
}

/// @nodoc
mixin _$FutureWeatherForecast {
  List<WeatherForecastDay> get forecastday =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FutureWeatherForecastCopyWith<FutureWeatherForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FutureWeatherForecastCopyWith<$Res> {
  factory $FutureWeatherForecastCopyWith(FutureWeatherForecast value,
          $Res Function(FutureWeatherForecast) then) =
      _$FutureWeatherForecastCopyWithImpl<$Res, FutureWeatherForecast>;
  @useResult
  $Res call({List<WeatherForecastDay> forecastday});
}

/// @nodoc
class _$FutureWeatherForecastCopyWithImpl<$Res,
        $Val extends FutureWeatherForecast>
    implements $FutureWeatherForecastCopyWith<$Res> {
  _$FutureWeatherForecastCopyWithImpl(this._value, this._then);

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
              as List<WeatherForecastDay>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FutureWeatherForecastImplCopyWith<$Res>
    implements $FutureWeatherForecastCopyWith<$Res> {
  factory _$$FutureWeatherForecastImplCopyWith(
          _$FutureWeatherForecastImpl value,
          $Res Function(_$FutureWeatherForecastImpl) then) =
      __$$FutureWeatherForecastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WeatherForecastDay> forecastday});
}

/// @nodoc
class __$$FutureWeatherForecastImplCopyWithImpl<$Res>
    extends _$FutureWeatherForecastCopyWithImpl<$Res,
        _$FutureWeatherForecastImpl>
    implements _$$FutureWeatherForecastImplCopyWith<$Res> {
  __$$FutureWeatherForecastImplCopyWithImpl(_$FutureWeatherForecastImpl _value,
      $Res Function(_$FutureWeatherForecastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastday = null,
  }) {
    return _then(_$FutureWeatherForecastImpl(
      forecastday: null == forecastday
          ? _value._forecastday
          : forecastday // ignore: cast_nullable_to_non_nullable
              as List<WeatherForecastDay>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FutureWeatherForecastImpl extends _FutureWeatherForecast {
  const _$FutureWeatherForecastImpl(
      {required final List<WeatherForecastDay> forecastday})
      : _forecastday = forecastday,
        super._();

  factory _$FutureWeatherForecastImpl.fromJson(Map<String, dynamic> json) =>
      _$$FutureWeatherForecastImplFromJson(json);

  final List<WeatherForecastDay> _forecastday;
  @override
  List<WeatherForecastDay> get forecastday {
    if (_forecastday is EqualUnmodifiableListView) return _forecastday;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forecastday);
  }

  @override
  String toString() {
    return 'FutureWeatherForecast(forecastday: $forecastday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FutureWeatherForecastImpl &&
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
  _$$FutureWeatherForecastImplCopyWith<_$FutureWeatherForecastImpl>
      get copyWith => __$$FutureWeatherForecastImplCopyWithImpl<
          _$FutureWeatherForecastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FutureWeatherForecastImplToJson(
      this,
    );
  }
}

abstract class _FutureWeatherForecast extends FutureWeatherForecast {
  const factory _FutureWeatherForecast(
          {required final List<WeatherForecastDay> forecastday}) =
      _$FutureWeatherForecastImpl;
  const _FutureWeatherForecast._() : super._();

  factory _FutureWeatherForecast.fromJson(Map<String, dynamic> json) =
      _$FutureWeatherForecastImpl.fromJson;

  @override
  List<WeatherForecastDay> get forecastday;
  @override
  @JsonKey(ignore: true)
  _$$FutureWeatherForecastImplCopyWith<_$FutureWeatherForecastImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WeatherForecastDay _$WeatherForecastDayFromJson(Map<String, dynamic> json) {
  return _WeatherForecastDay.fromJson(json);
}

/// @nodoc
mixin _$WeatherForecastDay {
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_epoch')
  int get dateEpoch => throw _privateConstructorUsedError;
  DayWeatherForecast get day => throw _privateConstructorUsedError;
  List<HourWeatherForecast> get hour => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherForecastDayCopyWith<WeatherForecastDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastDayCopyWith<$Res> {
  factory $WeatherForecastDayCopyWith(
          WeatherForecastDay value, $Res Function(WeatherForecastDay) then) =
      _$WeatherForecastDayCopyWithImpl<$Res, WeatherForecastDay>;
  @useResult
  $Res call(
      {String date,
      @JsonKey(name: 'date_epoch') int dateEpoch,
      DayWeatherForecast day,
      List<HourWeatherForecast> hour});

  $DayWeatherForecastCopyWith<$Res> get day;
}

/// @nodoc
class _$WeatherForecastDayCopyWithImpl<$Res, $Val extends WeatherForecastDay>
    implements $WeatherForecastDayCopyWith<$Res> {
  _$WeatherForecastDayCopyWithImpl(this._value, this._then);

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
              as DayWeatherForecast,
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<HourWeatherForecast>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DayWeatherForecastCopyWith<$Res> get day {
    return $DayWeatherForecastCopyWith<$Res>(_value.day, (value) {
      return _then(_value.copyWith(day: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherForecastDayImplCopyWith<$Res>
    implements $WeatherForecastDayCopyWith<$Res> {
  factory _$$WeatherForecastDayImplCopyWith(_$WeatherForecastDayImpl value,
          $Res Function(_$WeatherForecastDayImpl) then) =
      __$$WeatherForecastDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String date,
      @JsonKey(name: 'date_epoch') int dateEpoch,
      DayWeatherForecast day,
      List<HourWeatherForecast> hour});

  @override
  $DayWeatherForecastCopyWith<$Res> get day;
}

/// @nodoc
class __$$WeatherForecastDayImplCopyWithImpl<$Res>
    extends _$WeatherForecastDayCopyWithImpl<$Res, _$WeatherForecastDayImpl>
    implements _$$WeatherForecastDayImplCopyWith<$Res> {
  __$$WeatherForecastDayImplCopyWithImpl(_$WeatherForecastDayImpl _value,
      $Res Function(_$WeatherForecastDayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? dateEpoch = null,
    Object? day = null,
    Object? hour = null,
  }) {
    return _then(_$WeatherForecastDayImpl(
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
              as DayWeatherForecast,
      hour: null == hour
          ? _value._hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<HourWeatherForecast>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WeatherForecastDayImpl extends _WeatherForecastDay {
  const _$WeatherForecastDayImpl(
      {required this.date,
      @JsonKey(name: 'date_epoch') required this.dateEpoch,
      required this.day,
      required final List<HourWeatherForecast> hour})
      : _hour = hour,
        super._();

  factory _$WeatherForecastDayImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherForecastDayImplFromJson(json);

  @override
  final String date;
  @override
  @JsonKey(name: 'date_epoch')
  final int dateEpoch;
  @override
  final DayWeatherForecast day;
  final List<HourWeatherForecast> _hour;
  @override
  List<HourWeatherForecast> get hour {
    if (_hour is EqualUnmodifiableListView) return _hour;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hour);
  }

  @override
  String toString() {
    return 'WeatherForecastDay(date: $date, dateEpoch: $dateEpoch, day: $day, hour: $hour)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherForecastDayImpl &&
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
  _$$WeatherForecastDayImplCopyWith<_$WeatherForecastDayImpl> get copyWith =>
      __$$WeatherForecastDayImplCopyWithImpl<_$WeatherForecastDayImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherForecastDayImplToJson(
      this,
    );
  }
}

abstract class _WeatherForecastDay extends WeatherForecastDay {
  const factory _WeatherForecastDay(
          {required final String date,
          @JsonKey(name: 'date_epoch') required final int dateEpoch,
          required final DayWeatherForecast day,
          required final List<HourWeatherForecast> hour}) =
      _$WeatherForecastDayImpl;
  const _WeatherForecastDay._() : super._();

  factory _WeatherForecastDay.fromJson(Map<String, dynamic> json) =
      _$WeatherForecastDayImpl.fromJson;

  @override
  String get date;
  @override
  @JsonKey(name: 'date_epoch')
  int get dateEpoch;
  @override
  DayWeatherForecast get day;
  @override
  List<HourWeatherForecast> get hour;
  @override
  @JsonKey(ignore: true)
  _$$WeatherForecastDayImplCopyWith<_$WeatherForecastDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
