// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ob_local_pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ObLocalPokemon {
  @Id(assignable: true)
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ObLocalPokemonCopyWith<ObLocalPokemon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObLocalPokemonCopyWith<$Res> {
  factory $ObLocalPokemonCopyWith(
          ObLocalPokemon value, $Res Function(ObLocalPokemon) then) =
      _$ObLocalPokemonCopyWithImpl<$Res, ObLocalPokemon>;
  @useResult
  $Res call(
      {@Id(assignable: true) int id,
      String name,
      bool isFavorite,
      String image});
}

/// @nodoc
class _$ObLocalPokemonCopyWithImpl<$Res, $Val extends ObLocalPokemon>
    implements $ObLocalPokemonCopyWith<$Res> {
  _$ObLocalPokemonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isFavorite = null,
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
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ObLocalPokemonImplCopyWith<$Res>
    implements $ObLocalPokemonCopyWith<$Res> {
  factory _$$ObLocalPokemonImplCopyWith(_$ObLocalPokemonImpl value,
          $Res Function(_$ObLocalPokemonImpl) then) =
      __$$ObLocalPokemonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@Id(assignable: true) int id,
      String name,
      bool isFavorite,
      String image});
}

/// @nodoc
class __$$ObLocalPokemonImplCopyWithImpl<$Res>
    extends _$ObLocalPokemonCopyWithImpl<$Res, _$ObLocalPokemonImpl>
    implements _$$ObLocalPokemonImplCopyWith<$Res> {
  __$$ObLocalPokemonImplCopyWithImpl(
      _$ObLocalPokemonImpl _value, $Res Function(_$ObLocalPokemonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isFavorite = null,
    Object? image = null,
  }) {
    return _then(_$ObLocalPokemonImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Entity(realClass: ObLocalPokemon)
class _$ObLocalPokemonImpl implements _ObLocalPokemon {
  const _$ObLocalPokemonImpl(
      {@Id(assignable: true) required this.id,
      required this.name,
      required this.isFavorite,
      required this.image});

  @override
  @Id(assignable: true)
  final int id;
  @override
  final String name;
  @override
  final bool isFavorite;
  @override
  final String image;

  @override
  String toString() {
    return 'ObLocalPokemon(id: $id, name: $name, isFavorite: $isFavorite, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObLocalPokemonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, isFavorite, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ObLocalPokemonImplCopyWith<_$ObLocalPokemonImpl> get copyWith =>
      __$$ObLocalPokemonImplCopyWithImpl<_$ObLocalPokemonImpl>(
          this, _$identity);
}

abstract class _ObLocalPokemon implements ObLocalPokemon {
  const factory _ObLocalPokemon(
      {@Id(assignable: true) required final int id,
      required final String name,
      required final bool isFavorite,
      required final String image}) = _$ObLocalPokemonImpl;

  @override
  @Id(assignable: true)
  int get id;
  @override
  String get name;
  @override
  bool get isFavorite;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$ObLocalPokemonImplCopyWith<_$ObLocalPokemonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
