// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Result<T> {
  T? get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultCopyWith<T, Result<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, $Res> {
  factory $ResultCopyWith(Result<T> value, $Res Function(Result<T>) then) =
      _$ResultCopyWithImpl<T, $Res, Result<T>>;
  @useResult
  $Res call({T? result});
}

/// @nodoc
class _$ResultCopyWithImpl<T, $Res, $Val extends Result<T>>
    implements $ResultCopyWith<T, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<T, $Res>
    implements $ResultCopyWith<T, $Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl<T> value, $Res Function(_$ResultImpl<T>) then) =
      __$$ResultImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? result});
}

/// @nodoc
class __$$ResultImplCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$ResultImpl<T>>
    implements _$$ResultImplCopyWith<T, $Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl<T> _value, $Res Function(_$ResultImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$ResultImpl<T>(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$ResultImpl<T> implements _Result<T> {
  const _$ResultImpl({required this.result});

  @override
  final T? result;

  @override
  String toString() {
    return 'Result<$T>(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl<T> &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<T, _$ResultImpl<T>> get copyWith =>
      __$$ResultImplCopyWithImpl<T, _$ResultImpl<T>>(this, _$identity);
}

abstract class _Result<T> implements Result<T> {
  const factory _Result({required final T? result}) = _$ResultImpl<T>;

  @override
  T? get result;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<T, _$ResultImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
