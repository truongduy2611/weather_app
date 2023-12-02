// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnitSettings _$UnitSettingsFromJson(Map<String, dynamic> json) {
  return _UnitSettings.fromJson(json);
}

/// @nodoc
mixin _$UnitSettings {
  bool get useCelsius => throw _privateConstructorUsedError;
  bool get useMetric => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitSettingsCopyWith<UnitSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitSettingsCopyWith<$Res> {
  factory $UnitSettingsCopyWith(
          UnitSettings value, $Res Function(UnitSettings) then) =
      _$UnitSettingsCopyWithImpl<$Res, UnitSettings>;
  @useResult
  $Res call({bool useCelsius, bool useMetric});
}

/// @nodoc
class _$UnitSettingsCopyWithImpl<$Res, $Val extends UnitSettings>
    implements $UnitSettingsCopyWith<$Res> {
  _$UnitSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? useCelsius = null,
    Object? useMetric = null,
  }) {
    return _then(_value.copyWith(
      useCelsius: null == useCelsius
          ? _value.useCelsius
          : useCelsius // ignore: cast_nullable_to_non_nullable
              as bool,
      useMetric: null == useMetric
          ? _value.useMetric
          : useMetric // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnitSettingsImplCopyWith<$Res>
    implements $UnitSettingsCopyWith<$Res> {
  factory _$$UnitSettingsImplCopyWith(
          _$UnitSettingsImpl value, $Res Function(_$UnitSettingsImpl) then) =
      __$$UnitSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool useCelsius, bool useMetric});
}

/// @nodoc
class __$$UnitSettingsImplCopyWithImpl<$Res>
    extends _$UnitSettingsCopyWithImpl<$Res, _$UnitSettingsImpl>
    implements _$$UnitSettingsImplCopyWith<$Res> {
  __$$UnitSettingsImplCopyWithImpl(
      _$UnitSettingsImpl _value, $Res Function(_$UnitSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? useCelsius = null,
    Object? useMetric = null,
  }) {
    return _then(_$UnitSettingsImpl(
      useCelsius: null == useCelsius
          ? _value.useCelsius
          : useCelsius // ignore: cast_nullable_to_non_nullable
              as bool,
      useMetric: null == useMetric
          ? _value.useMetric
          : useMetric // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnitSettingsImpl extends _UnitSettings {
  const _$UnitSettingsImpl({required this.useCelsius, required this.useMetric})
      : super._();

  factory _$UnitSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnitSettingsImplFromJson(json);

  @override
  final bool useCelsius;
  @override
  final bool useMetric;

  @override
  String toString() {
    return 'UnitSettings(useCelsius: $useCelsius, useMetric: $useMetric)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitSettingsImpl &&
            (identical(other.useCelsius, useCelsius) ||
                other.useCelsius == useCelsius) &&
            (identical(other.useMetric, useMetric) ||
                other.useMetric == useMetric));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, useCelsius, useMetric);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitSettingsImplCopyWith<_$UnitSettingsImpl> get copyWith =>
      __$$UnitSettingsImplCopyWithImpl<_$UnitSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitSettingsImplToJson(
      this,
    );
  }
}

abstract class _UnitSettings extends UnitSettings {
  const factory _UnitSettings(
      {required final bool useCelsius,
      required final bool useMetric}) = _$UnitSettingsImpl;
  const _UnitSettings._() : super._();

  factory _UnitSettings.fromJson(Map<String, dynamic> json) =
      _$UnitSettingsImpl.fromJson;

  @override
  bool get useCelsius;
  @override
  bool get useMetric;
  @override
  @JsonKey(ignore: true)
  _$$UnitSettingsImplCopyWith<_$UnitSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
