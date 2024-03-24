// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_base_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailBaseInfo {
  int get pokemonHeight => throw _privateConstructorUsedError;
  int get pokemonWeight => throw _privateConstructorUsedError;
  int get xp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailBaseInfoCopyWith<DetailBaseInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailBaseInfoCopyWith<$Res> {
  factory $DetailBaseInfoCopyWith(
          DetailBaseInfo value, $Res Function(DetailBaseInfo) then) =
      _$DetailBaseInfoCopyWithImpl<$Res, DetailBaseInfo>;
  @useResult
  $Res call({int pokemonHeight, int pokemonWeight, int xp});
}

/// @nodoc
class _$DetailBaseInfoCopyWithImpl<$Res, $Val extends DetailBaseInfo>
    implements $DetailBaseInfoCopyWith<$Res> {
  _$DetailBaseInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonHeight = null,
    Object? pokemonWeight = null,
    Object? xp = null,
  }) {
    return _then(_value.copyWith(
      pokemonHeight: null == pokemonHeight
          ? _value.pokemonHeight
          : pokemonHeight // ignore: cast_nullable_to_non_nullable
              as int,
      pokemonWeight: null == pokemonWeight
          ? _value.pokemonWeight
          : pokemonWeight // ignore: cast_nullable_to_non_nullable
              as int,
      xp: null == xp
          ? _value.xp
          : xp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailBaseInfoImplCopyWith<$Res>
    implements $DetailBaseInfoCopyWith<$Res> {
  factory _$$DetailBaseInfoImplCopyWith(_$DetailBaseInfoImpl value,
          $Res Function(_$DetailBaseInfoImpl) then) =
      __$$DetailBaseInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pokemonHeight, int pokemonWeight, int xp});
}

/// @nodoc
class __$$DetailBaseInfoImplCopyWithImpl<$Res>
    extends _$DetailBaseInfoCopyWithImpl<$Res, _$DetailBaseInfoImpl>
    implements _$$DetailBaseInfoImplCopyWith<$Res> {
  __$$DetailBaseInfoImplCopyWithImpl(
      _$DetailBaseInfoImpl _value, $Res Function(_$DetailBaseInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonHeight = null,
    Object? pokemonWeight = null,
    Object? xp = null,
  }) {
    return _then(_$DetailBaseInfoImpl(
      pokemonHeight: null == pokemonHeight
          ? _value.pokemonHeight
          : pokemonHeight // ignore: cast_nullable_to_non_nullable
              as int,
      pokemonWeight: null == pokemonWeight
          ? _value.pokemonWeight
          : pokemonWeight // ignore: cast_nullable_to_non_nullable
              as int,
      xp: null == xp
          ? _value.xp
          : xp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DetailBaseInfoImpl implements _DetailBaseInfo {
  const _$DetailBaseInfoImpl(
      {required this.pokemonHeight,
      required this.pokemonWeight,
      required this.xp});

  @override
  final int pokemonHeight;
  @override
  final int pokemonWeight;
  @override
  final int xp;

  @override
  String toString() {
    return 'DetailBaseInfo(pokemonHeight: $pokemonHeight, pokemonWeight: $pokemonWeight, xp: $xp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailBaseInfoImpl &&
            (identical(other.pokemonHeight, pokemonHeight) ||
                other.pokemonHeight == pokemonHeight) &&
            (identical(other.pokemonWeight, pokemonWeight) ||
                other.pokemonWeight == pokemonWeight) &&
            (identical(other.xp, xp) || other.xp == xp));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, pokemonHeight, pokemonWeight, xp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailBaseInfoImplCopyWith<_$DetailBaseInfoImpl> get copyWith =>
      __$$DetailBaseInfoImplCopyWithImpl<_$DetailBaseInfoImpl>(
          this, _$identity);
}

abstract class _DetailBaseInfo implements DetailBaseInfo {
  const factory _DetailBaseInfo(
      {required final int pokemonHeight,
      required final int pokemonWeight,
      required final int xp}) = _$DetailBaseInfoImpl;

  @override
  int get pokemonHeight;
  @override
  int get pokemonWeight;
  @override
  int get xp;
  @override
  @JsonKey(ignore: true)
  _$$DetailBaseInfoImplCopyWith<_$DetailBaseInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
