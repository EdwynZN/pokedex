// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FieldOption<T> {
  String get label => throw _privateConstructorUsedError;
  T get data => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FieldOptionCopyWith<T, FieldOption<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldOptionCopyWith<T, $Res> {
  factory $FieldOptionCopyWith(
          FieldOption<T> value, $Res Function(FieldOption<T>) then) =
      _$FieldOptionCopyWithImpl<T, $Res, FieldOption<T>>;
  @useResult
  $Res call({String label, T data, bool isSelected});
}

/// @nodoc
class _$FieldOptionCopyWithImpl<T, $Res, $Val extends FieldOption<T>>
    implements $FieldOptionCopyWith<T, $Res> {
  _$FieldOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? data = freezed,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FieldOptionImplCopyWith<T, $Res>
    implements $FieldOptionCopyWith<T, $Res> {
  factory _$$FieldOptionImplCopyWith(_$FieldOptionImpl<T> value,
          $Res Function(_$FieldOptionImpl<T>) then) =
      __$$FieldOptionImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String label, T data, bool isSelected});
}

/// @nodoc
class __$$FieldOptionImplCopyWithImpl<T, $Res>
    extends _$FieldOptionCopyWithImpl<T, $Res, _$FieldOptionImpl<T>>
    implements _$$FieldOptionImplCopyWith<T, $Res> {
  __$$FieldOptionImplCopyWithImpl(
      _$FieldOptionImpl<T> _value, $Res Function(_$FieldOptionImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? data = freezed,
    Object? isSelected = null,
  }) {
    return _then(_$FieldOptionImpl<T>(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FieldOptionImpl<T> implements _FieldOption<T> {
  const _$FieldOptionImpl(
      {required this.label, required this.data, required this.isSelected});

  @override
  final String label;
  @override
  final T data;
  @override
  final bool isSelected;

  @override
  String toString() {
    return 'FieldOption<$T>(label: $label, data: $data, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldOptionImpl<T> &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label,
      const DeepCollectionEquality().hash(data), isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldOptionImplCopyWith<T, _$FieldOptionImpl<T>> get copyWith =>
      __$$FieldOptionImplCopyWithImpl<T, _$FieldOptionImpl<T>>(
          this, _$identity);
}

abstract class _FieldOption<T> implements FieldOption<T> {
  const factory _FieldOption(
      {required final String label,
      required final T data,
      required final bool isSelected}) = _$FieldOptionImpl<T>;

  @override
  String get label;
  @override
  T get data;
  @override
  bool get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$FieldOptionImplCopyWith<T, _$FieldOptionImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
