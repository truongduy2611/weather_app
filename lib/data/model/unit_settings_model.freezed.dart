// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnitSettingsModel _$UnitSettingsModelFromJson(Map<String, dynamic> json) {
  return _UnitSettingsModel.fromJson(json);
}

/// @nodoc
mixin _$UnitSettingsModel {
  bool get useCelsius => throw _privateConstructorUsedError;
  bool get useMetric => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitSettingsModelCopyWith<UnitSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitSettingsModelCopyWith<$Res> {
  factory $UnitSettingsModelCopyWith(
          UnitSettingsModel value, $Res Function(UnitSettingsModel) then) =
      _$UnitSettingsModelCopyWithImpl<$Res, UnitSettingsModel>;
  @useResult
  $Res call({bool useCelsius, bool useMetric});
}

/// @nodoc
class _$UnitSettingsModelCopyWithImpl<$Res, $Val extends UnitSettingsModel>
    implements $UnitSettingsModelCopyWith<$Res> {
  _$UnitSettingsModelCopyWithImpl(this._value, this._then);

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
abstract class _$$UnitSettingsModelImplCopyWith<$Res>
    implements $UnitSettingsModelCopyWith<$Res> {
  factory _$$UnitSettingsModelImplCopyWith(_$UnitSettingsModelImpl value,
          $Res Function(_$UnitSettingsModelImpl) then) =
      __$$UnitSettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool useCelsius, bool useMetric});
}

/// @nodoc
class __$$UnitSettingsModelImplCopyWithImpl<$Res>
    extends _$UnitSettingsModelCopyWithImpl<$Res, _$UnitSettingsModelImpl>
    implements _$$UnitSettingsModelImplCopyWith<$Res> {
  __$$UnitSettingsModelImplCopyWithImpl(_$UnitSettingsModelImpl _value,
      $Res Function(_$UnitSettingsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? useCelsius = null,
    Object? useMetric = null,
  }) {
    return _then(_$UnitSettingsModelImpl(
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
class _$UnitSettingsModelImpl extends _UnitSettingsModel {
  const _$UnitSettingsModelImpl(
      {required this.useCelsius, required this.useMetric})
      : super._();

  factory _$UnitSettingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnitSettingsModelImplFromJson(json);

  @override
  final bool useCelsius;
  @override
  final bool useMetric;

  @override
  String toString() {
    return 'UnitSettingsModel(useCelsius: $useCelsius, useMetric: $useMetric)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitSettingsModelImpl &&
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
  _$$UnitSettingsModelImplCopyWith<_$UnitSettingsModelImpl> get copyWith =>
      __$$UnitSettingsModelImplCopyWithImpl<_$UnitSettingsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitSettingsModelImplToJson(
      this,
    );
  }
}

abstract class _UnitSettingsModel extends UnitSettingsModel {
  const factory _UnitSettingsModel(
      {required final bool useCelsius,
      required final bool useMetric}) = _$UnitSettingsModelImpl;
  const _UnitSettingsModel._() : super._();

  factory _UnitSettingsModel.fromJson(Map<String, dynamic> json) =
      _$UnitSettingsModelImpl.fromJson;

  @override
  bool get useCelsius;
  @override
  bool get useMetric;
  @override
  @JsonKey(ignore: true)
  _$$UnitSettingsModelImplCopyWith<_$UnitSettingsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
