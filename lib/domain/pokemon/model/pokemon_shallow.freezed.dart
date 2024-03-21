// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_shallow.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonShallow _$PokemonShallowFromJson(Map<String, dynamic> json) {
  return _PokemonShallow.fromJson(json);
}

/// @nodoc
mixin _$PokemonShallow {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonShallowCopyWith<PokemonShallow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonShallowCopyWith<$Res> {
  factory $PokemonShallowCopyWith(
          PokemonShallow value, $Res Function(PokemonShallow) then) =
      _$PokemonShallowCopyWithImpl<$Res, PokemonShallow>;
  @useResult
  $Res call({int id, String name, String image});
}

/// @nodoc
class _$PokemonShallowCopyWithImpl<$Res, $Val extends PokemonShallow>
    implements $PokemonShallowCopyWith<$Res> {
  _$PokemonShallowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonShallowImplCopyWith<$Res>
    implements $PokemonShallowCopyWith<$Res> {
  factory _$$PokemonShallowImplCopyWith(_$PokemonShallowImpl value,
          $Res Function(_$PokemonShallowImpl) then) =
      __$$PokemonShallowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String image});
}

/// @nodoc
class __$$PokemonShallowImplCopyWithImpl<$Res>
    extends _$PokemonShallowCopyWithImpl<$Res, _$PokemonShallowImpl>
    implements _$$PokemonShallowImplCopyWith<$Res> {
  __$$PokemonShallowImplCopyWithImpl(
      _$PokemonShallowImpl _value, $Res Function(_$PokemonShallowImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_$PokemonShallowImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonShallowImpl implements _PokemonShallow {
  const _$PokemonShallowImpl(
      {required this.id, required this.name, required this.image});

  factory _$PokemonShallowImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonShallowImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String image;

  @override
  String toString() {
    return 'PokemonShallow(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonShallowImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonShallowImplCopyWith<_$PokemonShallowImpl> get copyWith =>
      __$$PokemonShallowImplCopyWithImpl<_$PokemonShallowImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonShallowImplToJson(
      this,
    );
  }
}

abstract class _PokemonShallow implements PokemonShallow {
  const factory _PokemonShallow(
      {required final int id,
      required final String name,
      required final String image}) = _$PokemonShallowImpl;

  factory _PokemonShallow.fromJson(Map<String, dynamic> json) =
      _$PokemonShallowImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$PokemonShallowImplCopyWith<_$PokemonShallowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
