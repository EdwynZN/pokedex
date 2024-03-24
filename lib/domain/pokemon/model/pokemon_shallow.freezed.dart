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
  switch (json['runtimeType']) {
    case 'default':
      return _PokemonShallow.fromJson(json);
    case 'evolution':
      return PokemonEvolution.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PokemonShallow',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PokemonShallow {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, String name, String image, bool isFavorite)
        $default, {
    required TResult Function(
            int id, String name, String image, bool isFavorite)
        evolution,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, String name, String image, bool isFavorite)?
        $default, {
    TResult? Function(int id, String name, String image, bool isFavorite)?
        evolution,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, String name, String image, bool isFavorite)?
        $default, {
    TResult Function(int id, String name, String image, bool isFavorite)?
        evolution,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PokemonShallow value) $default, {
    required TResult Function(PokemonEvolution value) evolution,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PokemonShallow value)? $default, {
    TResult? Function(PokemonEvolution value)? evolution,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PokemonShallow value)? $default, {
    TResult Function(PokemonEvolution value)? evolution,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  $Res call({int id, String name, String image, bool isFavorite});
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
    Object? isFavorite = null,
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
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call({int id, String name, String image, bool isFavorite});
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
    Object? isFavorite = null,
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
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonShallowImpl implements _PokemonShallow {
  const _$PokemonShallowImpl(
      {required this.id,
      required this.name,
      required this.image,
      required this.isFavorite,
      final String? $type})
      : $type = $type ?? 'default';

  factory _$PokemonShallowImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonShallowImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String image;
  @override
  final bool isFavorite;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PokemonShallow(id: $id, name: $name, image: $image, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonShallowImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonShallowImplCopyWith<_$PokemonShallowImpl> get copyWith =>
      __$$PokemonShallowImplCopyWithImpl<_$PokemonShallowImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, String name, String image, bool isFavorite)
        $default, {
    required TResult Function(
            int id, String name, String image, bool isFavorite)
        evolution,
  }) {
    return $default(id, name, image, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, String name, String image, bool isFavorite)?
        $default, {
    TResult? Function(int id, String name, String image, bool isFavorite)?
        evolution,
  }) {
    return $default?.call(id, name, image, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, String name, String image, bool isFavorite)?
        $default, {
    TResult Function(int id, String name, String image, bool isFavorite)?
        evolution,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, name, image, isFavorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PokemonShallow value) $default, {
    required TResult Function(PokemonEvolution value) evolution,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PokemonShallow value)? $default, {
    TResult? Function(PokemonEvolution value)? evolution,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PokemonShallow value)? $default, {
    TResult Function(PokemonEvolution value)? evolution,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

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
      required final String image,
      required final bool isFavorite}) = _$PokemonShallowImpl;

  factory _PokemonShallow.fromJson(Map<String, dynamic> json) =
      _$PokemonShallowImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get image;
  @override
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$PokemonShallowImplCopyWith<_$PokemonShallowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PokemonEvolutionImplCopyWith<$Res>
    implements $PokemonShallowCopyWith<$Res> {
  factory _$$PokemonEvolutionImplCopyWith(_$PokemonEvolutionImpl value,
          $Res Function(_$PokemonEvolutionImpl) then) =
      __$$PokemonEvolutionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String image, bool isFavorite});
}

/// @nodoc
class __$$PokemonEvolutionImplCopyWithImpl<$Res>
    extends _$PokemonShallowCopyWithImpl<$Res, _$PokemonEvolutionImpl>
    implements _$$PokemonEvolutionImplCopyWith<$Res> {
  __$$PokemonEvolutionImplCopyWithImpl(_$PokemonEvolutionImpl _value,
      $Res Function(_$PokemonEvolutionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? isFavorite = null,
  }) {
    return _then(_$PokemonEvolutionImpl(
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
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonEvolutionImpl implements PokemonEvolution {
  const _$PokemonEvolutionImpl(
      {required this.id,
      required this.name,
      required this.image,
      required this.isFavorite,
      final String? $type})
      : $type = $type ?? 'evolution';

  factory _$PokemonEvolutionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonEvolutionImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String image;
  @override
  final bool isFavorite;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PokemonShallow.evolution(id: $id, name: $name, image: $image, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonEvolutionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonEvolutionImplCopyWith<_$PokemonEvolutionImpl> get copyWith =>
      __$$PokemonEvolutionImplCopyWithImpl<_$PokemonEvolutionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, String name, String image, bool isFavorite)
        $default, {
    required TResult Function(
            int id, String name, String image, bool isFavorite)
        evolution,
  }) {
    return evolution(id, name, image, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, String name, String image, bool isFavorite)?
        $default, {
    TResult? Function(int id, String name, String image, bool isFavorite)?
        evolution,
  }) {
    return evolution?.call(id, name, image, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, String name, String image, bool isFavorite)?
        $default, {
    TResult Function(int id, String name, String image, bool isFavorite)?
        evolution,
    required TResult orElse(),
  }) {
    if (evolution != null) {
      return evolution(id, name, image, isFavorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PokemonShallow value) $default, {
    required TResult Function(PokemonEvolution value) evolution,
  }) {
    return evolution(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PokemonShallow value)? $default, {
    TResult? Function(PokemonEvolution value)? evolution,
  }) {
    return evolution?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PokemonShallow value)? $default, {
    TResult Function(PokemonEvolution value)? evolution,
    required TResult orElse(),
  }) {
    if (evolution != null) {
      return evolution(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonEvolutionImplToJson(
      this,
    );
  }
}

abstract class PokemonEvolution implements PokemonShallow {
  const factory PokemonEvolution(
      {required final int id,
      required final String name,
      required final String image,
      required final bool isFavorite}) = _$PokemonEvolutionImpl;

  factory PokemonEvolution.fromJson(Map<String, dynamic> json) =
      _$PokemonEvolutionImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get image;
  @override
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$PokemonEvolutionImplCopyWith<_$PokemonEvolutionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
