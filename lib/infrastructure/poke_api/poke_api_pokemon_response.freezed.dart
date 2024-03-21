// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poke_api_pokemon_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokeApiWrapperResponse _$PokeApiWrapperResponseFromJson(
    Map<String, dynamic> json) {
  return _PokeApiWrapperResponse.fromJson(json);
}

/// @nodoc
mixin _$PokeApiWrapperResponse {
  List<PokeApiListValue> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokeApiWrapperResponseCopyWith<PokeApiWrapperResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeApiWrapperResponseCopyWith<$Res> {
  factory $PokeApiWrapperResponseCopyWith(PokeApiWrapperResponse value,
          $Res Function(PokeApiWrapperResponse) then) =
      _$PokeApiWrapperResponseCopyWithImpl<$Res, PokeApiWrapperResponse>;
  @useResult
  $Res call({List<PokeApiListValue> results});
}

/// @nodoc
class _$PokeApiWrapperResponseCopyWithImpl<$Res,
        $Val extends PokeApiWrapperResponse>
    implements $PokeApiWrapperResponseCopyWith<$Res> {
  _$PokeApiWrapperResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokeApiListValue>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokeApiWrapperResponseImplCopyWith<$Res>
    implements $PokeApiWrapperResponseCopyWith<$Res> {
  factory _$$PokeApiWrapperResponseImplCopyWith(
          _$PokeApiWrapperResponseImpl value,
          $Res Function(_$PokeApiWrapperResponseImpl) then) =
      __$$PokeApiWrapperResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PokeApiListValue> results});
}

/// @nodoc
class __$$PokeApiWrapperResponseImplCopyWithImpl<$Res>
    extends _$PokeApiWrapperResponseCopyWithImpl<$Res,
        _$PokeApiWrapperResponseImpl>
    implements _$$PokeApiWrapperResponseImplCopyWith<$Res> {
  __$$PokeApiWrapperResponseImplCopyWithImpl(
      _$PokeApiWrapperResponseImpl _value,
      $Res Function(_$PokeApiWrapperResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$PokeApiWrapperResponseImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokeApiListValue>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokeApiWrapperResponseImpl implements _PokeApiWrapperResponse {
  const _$PokeApiWrapperResponseImpl(
      {required final List<PokeApiListValue> results})
      : _results = results;

  factory _$PokeApiWrapperResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokeApiWrapperResponseImplFromJson(json);

  final List<PokeApiListValue> _results;
  @override
  List<PokeApiListValue> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PokeApiWrapperResponse(results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokeApiWrapperResponseImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokeApiWrapperResponseImplCopyWith<_$PokeApiWrapperResponseImpl>
      get copyWith => __$$PokeApiWrapperResponseImplCopyWithImpl<
          _$PokeApiWrapperResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokeApiWrapperResponseImplToJson(
      this,
    );
  }
}

abstract class _PokeApiWrapperResponse implements PokeApiWrapperResponse {
  const factory _PokeApiWrapperResponse(
          {required final List<PokeApiListValue> results}) =
      _$PokeApiWrapperResponseImpl;

  factory _PokeApiWrapperResponse.fromJson(Map<String, dynamic> json) =
      _$PokeApiWrapperResponseImpl.fromJson;

  @override
  List<PokeApiListValue> get results;
  @override
  @JsonKey(ignore: true)
  _$$PokeApiWrapperResponseImplCopyWith<_$PokeApiWrapperResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PokeApiListValue _$PokeApiListValueFromJson(Map<String, dynamic> json) {
  return _PokeApiListValue.fromJson(json);
}

/// @nodoc
mixin _$PokeApiListValue {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokeApiListValueCopyWith<PokeApiListValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeApiListValueCopyWith<$Res> {
  factory $PokeApiListValueCopyWith(
          PokeApiListValue value, $Res Function(PokeApiListValue) then) =
      _$PokeApiListValueCopyWithImpl<$Res, PokeApiListValue>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokeApiListValueCopyWithImpl<$Res, $Val extends PokeApiListValue>
    implements $PokeApiListValueCopyWith<$Res> {
  _$PokeApiListValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokeApiListValueImplCopyWith<$Res>
    implements $PokeApiListValueCopyWith<$Res> {
  factory _$$PokeApiListValueImplCopyWith(_$PokeApiListValueImpl value,
          $Res Function(_$PokeApiListValueImpl) then) =
      __$$PokeApiListValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$PokeApiListValueImplCopyWithImpl<$Res>
    extends _$PokeApiListValueCopyWithImpl<$Res, _$PokeApiListValueImpl>
    implements _$$PokeApiListValueImplCopyWith<$Res> {
  __$$PokeApiListValueImplCopyWithImpl(_$PokeApiListValueImpl _value,
      $Res Function(_$PokeApiListValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$PokeApiListValueImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokeApiListValueImpl implements _PokeApiListValue {
  const _$PokeApiListValueImpl({required this.name, required this.url});

  factory _$PokeApiListValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokeApiListValueImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokeApiListValue(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokeApiListValueImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokeApiListValueImplCopyWith<_$PokeApiListValueImpl> get copyWith =>
      __$$PokeApiListValueImplCopyWithImpl<_$PokeApiListValueImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokeApiListValueImplToJson(
      this,
    );
  }
}

abstract class _PokeApiListValue implements PokeApiListValue {
  const factory _PokeApiListValue(
      {required final String name,
      required final String url}) = _$PokeApiListValueImpl;

  factory _PokeApiListValue.fromJson(Map<String, dynamic> json) =
      _$PokeApiListValueImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$PokeApiListValueImplCopyWith<_$PokeApiListValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokeApiPokemonResponse _$PokeApiPokemonResponseFromJson(
    Map<String, dynamic> json) {
  return _PokeApiPokemonResponse.fromJson(json);
}

/// @nodoc
mixin _$PokeApiPokemonResponse {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_experience')
  int get baseExperience => throw _privateConstructorUsedError;
  PokeApiSprite get sprites => throw _privateConstructorUsedError;
  List<PokeApiMove> get moves => throw _privateConstructorUsedError;
  List<PokeApiType> get types => throw _privateConstructorUsedError;
  List<PokeApiAbility> get abilities => throw _privateConstructorUsedError;
  List<PokeApiStat> get stats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokeApiPokemonResponseCopyWith<PokeApiPokemonResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeApiPokemonResponseCopyWith<$Res> {
  factory $PokeApiPokemonResponseCopyWith(PokeApiPokemonResponse value,
          $Res Function(PokeApiPokemonResponse) then) =
      _$PokeApiPokemonResponseCopyWithImpl<$Res, PokeApiPokemonResponse>;
  @useResult
  $Res call(
      {int id,
      String name,
      int height,
      int weight,
      @JsonKey(name: 'base_experience') int baseExperience,
      PokeApiSprite sprites,
      List<PokeApiMove> moves,
      List<PokeApiType> types,
      List<PokeApiAbility> abilities,
      List<PokeApiStat> stats});

  $PokeApiSpriteCopyWith<$Res> get sprites;
}

/// @nodoc
class _$PokeApiPokemonResponseCopyWithImpl<$Res,
        $Val extends PokeApiPokemonResponse>
    implements $PokeApiPokemonResponseCopyWith<$Res> {
  _$PokeApiPokemonResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? baseExperience = null,
    Object? sprites = null,
    Object? moves = null,
    Object? types = null,
    Object? abilities = null,
    Object? stats = null,
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
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      baseExperience: null == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokeApiSprite,
      moves: null == moves
          ? _value.moves
          : moves // ignore: cast_nullable_to_non_nullable
              as List<PokeApiMove>,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokeApiType>,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<PokeApiAbility>,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokeApiStat>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokeApiSpriteCopyWith<$Res> get sprites {
    return $PokeApiSpriteCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokeApiPokemonResponseImplCopyWith<$Res>
    implements $PokeApiPokemonResponseCopyWith<$Res> {
  factory _$$PokeApiPokemonResponseImplCopyWith(
          _$PokeApiPokemonResponseImpl value,
          $Res Function(_$PokeApiPokemonResponseImpl) then) =
      __$$PokeApiPokemonResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int height,
      int weight,
      @JsonKey(name: 'base_experience') int baseExperience,
      PokeApiSprite sprites,
      List<PokeApiMove> moves,
      List<PokeApiType> types,
      List<PokeApiAbility> abilities,
      List<PokeApiStat> stats});

  @override
  $PokeApiSpriteCopyWith<$Res> get sprites;
}

/// @nodoc
class __$$PokeApiPokemonResponseImplCopyWithImpl<$Res>
    extends _$PokeApiPokemonResponseCopyWithImpl<$Res,
        _$PokeApiPokemonResponseImpl>
    implements _$$PokeApiPokemonResponseImplCopyWith<$Res> {
  __$$PokeApiPokemonResponseImplCopyWithImpl(
      _$PokeApiPokemonResponseImpl _value,
      $Res Function(_$PokeApiPokemonResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? baseExperience = null,
    Object? sprites = null,
    Object? moves = null,
    Object? types = null,
    Object? abilities = null,
    Object? stats = null,
  }) {
    return _then(_$PokeApiPokemonResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      baseExperience: null == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokeApiSprite,
      moves: null == moves
          ? _value._moves
          : moves // ignore: cast_nullable_to_non_nullable
              as List<PokeApiMove>,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokeApiType>,
      abilities: null == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<PokeApiAbility>,
      stats: null == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokeApiStat>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokeApiPokemonResponseImpl extends _PokeApiPokemonResponse {
  const _$PokeApiPokemonResponseImpl(
      {required this.id,
      required this.name,
      required this.height,
      required this.weight,
      @JsonKey(name: 'base_experience') required this.baseExperience,
      required this.sprites,
      required final List<PokeApiMove> moves,
      required final List<PokeApiType> types,
      required final List<PokeApiAbility> abilities,
      required final List<PokeApiStat> stats})
      : _moves = moves,
        _types = types,
        _abilities = abilities,
        _stats = stats,
        super._();

  factory _$PokeApiPokemonResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokeApiPokemonResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int height;
  @override
  final int weight;
  @override
  @JsonKey(name: 'base_experience')
  final int baseExperience;
  @override
  final PokeApiSprite sprites;
  final List<PokeApiMove> _moves;
  @override
  List<PokeApiMove> get moves {
    if (_moves is EqualUnmodifiableListView) return _moves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moves);
  }

  final List<PokeApiType> _types;
  @override
  List<PokeApiType> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final List<PokeApiAbility> _abilities;
  @override
  List<PokeApiAbility> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  final List<PokeApiStat> _stats;
  @override
  List<PokeApiStat> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  @override
  String toString() {
    return 'PokeApiPokemonResponse(id: $id, name: $name, height: $height, weight: $weight, baseExperience: $baseExperience, sprites: $sprites, moves: $moves, types: $types, abilities: $abilities, stats: $stats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokeApiPokemonResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.baseExperience, baseExperience) ||
                other.baseExperience == baseExperience) &&
            (identical(other.sprites, sprites) || other.sprites == sprites) &&
            const DeepCollectionEquality().equals(other._moves, _moves) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            const DeepCollectionEquality().equals(other._stats, _stats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      height,
      weight,
      baseExperience,
      sprites,
      const DeepCollectionEquality().hash(_moves),
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_abilities),
      const DeepCollectionEquality().hash(_stats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokeApiPokemonResponseImplCopyWith<_$PokeApiPokemonResponseImpl>
      get copyWith => __$$PokeApiPokemonResponseImplCopyWithImpl<
          _$PokeApiPokemonResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokeApiPokemonResponseImplToJson(
      this,
    );
  }
}

abstract class _PokeApiPokemonResponse extends PokeApiPokemonResponse {
  const factory _PokeApiPokemonResponse(
      {required final int id,
      required final String name,
      required final int height,
      required final int weight,
      @JsonKey(name: 'base_experience') required final int baseExperience,
      required final PokeApiSprite sprites,
      required final List<PokeApiMove> moves,
      required final List<PokeApiType> types,
      required final List<PokeApiAbility> abilities,
      required final List<PokeApiStat> stats}) = _$PokeApiPokemonResponseImpl;
  const _PokeApiPokemonResponse._() : super._();

  factory _PokeApiPokemonResponse.fromJson(Map<String, dynamic> json) =
      _$PokeApiPokemonResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get height;
  @override
  int get weight;
  @override
  @JsonKey(name: 'base_experience')
  int get baseExperience;
  @override
  PokeApiSprite get sprites;
  @override
  List<PokeApiMove> get moves;
  @override
  List<PokeApiType> get types;
  @override
  List<PokeApiAbility> get abilities;
  @override
  List<PokeApiStat> get stats;
  @override
  @JsonKey(ignore: true)
  _$$PokeApiPokemonResponseImplCopyWith<_$PokeApiPokemonResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PokeApiSprite _$PokeApiSpriteFromJson(Map<String, dynamic> json) {
  return _PokeApiSprite.fromJson(json);
}

/// @nodoc
mixin _$PokeApiSprite {
  @JsonKey(name: 'back_default')
  String get back => throw _privateConstructorUsedError;
  @JsonKey(name: 'back_female')
  String? get backFemale => throw _privateConstructorUsedError;
  @JsonKey(name: 'back_shiny')
  String? get backShiny => throw _privateConstructorUsedError;
  @JsonKey(name: 'back_shiny_female')
  String? get backShinyFemale => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_default')
  String get front => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_female')
  String? get frontFemale => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_shiny')
  String? get frontShiny => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_shiny_female')
  String? get frontShinyFemale => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokeApiSpriteCopyWith<PokeApiSprite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeApiSpriteCopyWith<$Res> {
  factory $PokeApiSpriteCopyWith(
          PokeApiSprite value, $Res Function(PokeApiSprite) then) =
      _$PokeApiSpriteCopyWithImpl<$Res, PokeApiSprite>;
  @useResult
  $Res call(
      {@JsonKey(name: 'back_default') String back,
      @JsonKey(name: 'back_female') String? backFemale,
      @JsonKey(name: 'back_shiny') String? backShiny,
      @JsonKey(name: 'back_shiny_female') String? backShinyFemale,
      @JsonKey(name: 'front_default') String front,
      @JsonKey(name: 'front_female') String? frontFemale,
      @JsonKey(name: 'front_shiny') String? frontShiny,
      @JsonKey(name: 'front_shiny_female') String? frontShinyFemale});
}

/// @nodoc
class _$PokeApiSpriteCopyWithImpl<$Res, $Val extends PokeApiSprite>
    implements $PokeApiSpriteCopyWith<$Res> {
  _$PokeApiSpriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? back = null,
    Object? backFemale = freezed,
    Object? backShiny = freezed,
    Object? backShinyFemale = freezed,
    Object? front = null,
    Object? frontFemale = freezed,
    Object? frontShiny = freezed,
    Object? frontShinyFemale = freezed,
  }) {
    return _then(_value.copyWith(
      back: null == back
          ? _value.back
          : back // ignore: cast_nullable_to_non_nullable
              as String,
      backFemale: freezed == backFemale
          ? _value.backFemale
          : backFemale // ignore: cast_nullable_to_non_nullable
              as String?,
      backShiny: freezed == backShiny
          ? _value.backShiny
          : backShiny // ignore: cast_nullable_to_non_nullable
              as String?,
      backShinyFemale: freezed == backShinyFemale
          ? _value.backShinyFemale
          : backShinyFemale // ignore: cast_nullable_to_non_nullable
              as String?,
      front: null == front
          ? _value.front
          : front // ignore: cast_nullable_to_non_nullable
              as String,
      frontFemale: freezed == frontFemale
          ? _value.frontFemale
          : frontFemale // ignore: cast_nullable_to_non_nullable
              as String?,
      frontShiny: freezed == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String?,
      frontShinyFemale: freezed == frontShinyFemale
          ? _value.frontShinyFemale
          : frontShinyFemale // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokeApiSpriteImplCopyWith<$Res>
    implements $PokeApiSpriteCopyWith<$Res> {
  factory _$$PokeApiSpriteImplCopyWith(
          _$PokeApiSpriteImpl value, $Res Function(_$PokeApiSpriteImpl) then) =
      __$$PokeApiSpriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'back_default') String back,
      @JsonKey(name: 'back_female') String? backFemale,
      @JsonKey(name: 'back_shiny') String? backShiny,
      @JsonKey(name: 'back_shiny_female') String? backShinyFemale,
      @JsonKey(name: 'front_default') String front,
      @JsonKey(name: 'front_female') String? frontFemale,
      @JsonKey(name: 'front_shiny') String? frontShiny,
      @JsonKey(name: 'front_shiny_female') String? frontShinyFemale});
}

/// @nodoc
class __$$PokeApiSpriteImplCopyWithImpl<$Res>
    extends _$PokeApiSpriteCopyWithImpl<$Res, _$PokeApiSpriteImpl>
    implements _$$PokeApiSpriteImplCopyWith<$Res> {
  __$$PokeApiSpriteImplCopyWithImpl(
      _$PokeApiSpriteImpl _value, $Res Function(_$PokeApiSpriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? back = null,
    Object? backFemale = freezed,
    Object? backShiny = freezed,
    Object? backShinyFemale = freezed,
    Object? front = null,
    Object? frontFemale = freezed,
    Object? frontShiny = freezed,
    Object? frontShinyFemale = freezed,
  }) {
    return _then(_$PokeApiSpriteImpl(
      back: null == back
          ? _value.back
          : back // ignore: cast_nullable_to_non_nullable
              as String,
      backFemale: freezed == backFemale
          ? _value.backFemale
          : backFemale // ignore: cast_nullable_to_non_nullable
              as String?,
      backShiny: freezed == backShiny
          ? _value.backShiny
          : backShiny // ignore: cast_nullable_to_non_nullable
              as String?,
      backShinyFemale: freezed == backShinyFemale
          ? _value.backShinyFemale
          : backShinyFemale // ignore: cast_nullable_to_non_nullable
              as String?,
      front: null == front
          ? _value.front
          : front // ignore: cast_nullable_to_non_nullable
              as String,
      frontFemale: freezed == frontFemale
          ? _value.frontFemale
          : frontFemale // ignore: cast_nullable_to_non_nullable
              as String?,
      frontShiny: freezed == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String?,
      frontShinyFemale: freezed == frontShinyFemale
          ? _value.frontShinyFemale
          : frontShinyFemale // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokeApiSpriteImpl implements _PokeApiSprite {
  const _$PokeApiSpriteImpl(
      {@JsonKey(name: 'back_default') required this.back,
      @JsonKey(name: 'back_female') this.backFemale,
      @JsonKey(name: 'back_shiny') this.backShiny,
      @JsonKey(name: 'back_shiny_female') this.backShinyFemale,
      @JsonKey(name: 'front_default') required this.front,
      @JsonKey(name: 'front_female') this.frontFemale,
      @JsonKey(name: 'front_shiny') this.frontShiny,
      @JsonKey(name: 'front_shiny_female') this.frontShinyFemale});

  factory _$PokeApiSpriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokeApiSpriteImplFromJson(json);

  @override
  @JsonKey(name: 'back_default')
  final String back;
  @override
  @JsonKey(name: 'back_female')
  final String? backFemale;
  @override
  @JsonKey(name: 'back_shiny')
  final String? backShiny;
  @override
  @JsonKey(name: 'back_shiny_female')
  final String? backShinyFemale;
  @override
  @JsonKey(name: 'front_default')
  final String front;
  @override
  @JsonKey(name: 'front_female')
  final String? frontFemale;
  @override
  @JsonKey(name: 'front_shiny')
  final String? frontShiny;
  @override
  @JsonKey(name: 'front_shiny_female')
  final String? frontShinyFemale;

  @override
  String toString() {
    return 'PokeApiSprite(back: $back, backFemale: $backFemale, backShiny: $backShiny, backShinyFemale: $backShinyFemale, front: $front, frontFemale: $frontFemale, frontShiny: $frontShiny, frontShinyFemale: $frontShinyFemale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokeApiSpriteImpl &&
            (identical(other.back, back) || other.back == back) &&
            (identical(other.backFemale, backFemale) ||
                other.backFemale == backFemale) &&
            (identical(other.backShiny, backShiny) ||
                other.backShiny == backShiny) &&
            (identical(other.backShinyFemale, backShinyFemale) ||
                other.backShinyFemale == backShinyFemale) &&
            (identical(other.front, front) || other.front == front) &&
            (identical(other.frontFemale, frontFemale) ||
                other.frontFemale == frontFemale) &&
            (identical(other.frontShiny, frontShiny) ||
                other.frontShiny == frontShiny) &&
            (identical(other.frontShinyFemale, frontShinyFemale) ||
                other.frontShinyFemale == frontShinyFemale));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, back, backFemale, backShiny,
      backShinyFemale, front, frontFemale, frontShiny, frontShinyFemale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokeApiSpriteImplCopyWith<_$PokeApiSpriteImpl> get copyWith =>
      __$$PokeApiSpriteImplCopyWithImpl<_$PokeApiSpriteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokeApiSpriteImplToJson(
      this,
    );
  }
}

abstract class _PokeApiSprite implements PokeApiSprite {
  const factory _PokeApiSprite(
      {@JsonKey(name: 'back_default') required final String back,
      @JsonKey(name: 'back_female') final String? backFemale,
      @JsonKey(name: 'back_shiny') final String? backShiny,
      @JsonKey(name: 'back_shiny_female') final String? backShinyFemale,
      @JsonKey(name: 'front_default') required final String front,
      @JsonKey(name: 'front_female') final String? frontFemale,
      @JsonKey(name: 'front_shiny') final String? frontShiny,
      @JsonKey(name: 'front_shiny_female')
      final String? frontShinyFemale}) = _$PokeApiSpriteImpl;

  factory _PokeApiSprite.fromJson(Map<String, dynamic> json) =
      _$PokeApiSpriteImpl.fromJson;

  @override
  @JsonKey(name: 'back_default')
  String get back;
  @override
  @JsonKey(name: 'back_female')
  String? get backFemale;
  @override
  @JsonKey(name: 'back_shiny')
  String? get backShiny;
  @override
  @JsonKey(name: 'back_shiny_female')
  String? get backShinyFemale;
  @override
  @JsonKey(name: 'front_default')
  String get front;
  @override
  @JsonKey(name: 'front_female')
  String? get frontFemale;
  @override
  @JsonKey(name: 'front_shiny')
  String? get frontShiny;
  @override
  @JsonKey(name: 'front_shiny_female')
  String? get frontShinyFemale;
  @override
  @JsonKey(ignore: true)
  _$$PokeApiSpriteImplCopyWith<_$PokeApiSpriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokeApiMove _$PokeApiMoveFromJson(Map<String, dynamic> json) {
  return _PokeApiMove.fromJson(json);
}

/// @nodoc
mixin _$PokeApiMove {
  PokeApiNameWrapper get move => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokeApiMoveCopyWith<PokeApiMove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeApiMoveCopyWith<$Res> {
  factory $PokeApiMoveCopyWith(
          PokeApiMove value, $Res Function(PokeApiMove) then) =
      _$PokeApiMoveCopyWithImpl<$Res, PokeApiMove>;
  @useResult
  $Res call({PokeApiNameWrapper move});

  $PokeApiNameWrapperCopyWith<$Res> get move;
}

/// @nodoc
class _$PokeApiMoveCopyWithImpl<$Res, $Val extends PokeApiMove>
    implements $PokeApiMoveCopyWith<$Res> {
  _$PokeApiMoveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? move = null,
  }) {
    return _then(_value.copyWith(
      move: null == move
          ? _value.move
          : move // ignore: cast_nullable_to_non_nullable
              as PokeApiNameWrapper,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokeApiNameWrapperCopyWith<$Res> get move {
    return $PokeApiNameWrapperCopyWith<$Res>(_value.move, (value) {
      return _then(_value.copyWith(move: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokeApiMoveImplCopyWith<$Res>
    implements $PokeApiMoveCopyWith<$Res> {
  factory _$$PokeApiMoveImplCopyWith(
          _$PokeApiMoveImpl value, $Res Function(_$PokeApiMoveImpl) then) =
      __$$PokeApiMoveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PokeApiNameWrapper move});

  @override
  $PokeApiNameWrapperCopyWith<$Res> get move;
}

/// @nodoc
class __$$PokeApiMoveImplCopyWithImpl<$Res>
    extends _$PokeApiMoveCopyWithImpl<$Res, _$PokeApiMoveImpl>
    implements _$$PokeApiMoveImplCopyWith<$Res> {
  __$$PokeApiMoveImplCopyWithImpl(
      _$PokeApiMoveImpl _value, $Res Function(_$PokeApiMoveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? move = null,
  }) {
    return _then(_$PokeApiMoveImpl(
      move: null == move
          ? _value.move
          : move // ignore: cast_nullable_to_non_nullable
              as PokeApiNameWrapper,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokeApiMoveImpl implements _PokeApiMove {
  const _$PokeApiMoveImpl({required this.move});

  factory _$PokeApiMoveImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokeApiMoveImplFromJson(json);

  @override
  final PokeApiNameWrapper move;

  @override
  String toString() {
    return 'PokeApiMove(move: $move)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokeApiMoveImpl &&
            (identical(other.move, move) || other.move == move));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, move);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokeApiMoveImplCopyWith<_$PokeApiMoveImpl> get copyWith =>
      __$$PokeApiMoveImplCopyWithImpl<_$PokeApiMoveImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokeApiMoveImplToJson(
      this,
    );
  }
}

abstract class _PokeApiMove implements PokeApiMove {
  const factory _PokeApiMove({required final PokeApiNameWrapper move}) =
      _$PokeApiMoveImpl;

  factory _PokeApiMove.fromJson(Map<String, dynamic> json) =
      _$PokeApiMoveImpl.fromJson;

  @override
  PokeApiNameWrapper get move;
  @override
  @JsonKey(ignore: true)
  _$$PokeApiMoveImplCopyWith<_$PokeApiMoveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokeApiAbility _$PokeApiAbilityFromJson(Map<String, dynamic> json) {
  return _PokeApiAbility.fromJson(json);
}

/// @nodoc
mixin _$PokeApiAbility {
  PokeApiNameWrapper get ability => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_hidden')
  bool get isHidden => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokeApiAbilityCopyWith<PokeApiAbility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeApiAbilityCopyWith<$Res> {
  factory $PokeApiAbilityCopyWith(
          PokeApiAbility value, $Res Function(PokeApiAbility) then) =
      _$PokeApiAbilityCopyWithImpl<$Res, PokeApiAbility>;
  @useResult
  $Res call(
      {PokeApiNameWrapper ability, @JsonKey(name: 'is_hidden') bool isHidden});

  $PokeApiNameWrapperCopyWith<$Res> get ability;
}

/// @nodoc
class _$PokeApiAbilityCopyWithImpl<$Res, $Val extends PokeApiAbility>
    implements $PokeApiAbilityCopyWith<$Res> {
  _$PokeApiAbilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = null,
    Object? isHidden = null,
  }) {
    return _then(_value.copyWith(
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as PokeApiNameWrapper,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokeApiNameWrapperCopyWith<$Res> get ability {
    return $PokeApiNameWrapperCopyWith<$Res>(_value.ability, (value) {
      return _then(_value.copyWith(ability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokeApiAbilityImplCopyWith<$Res>
    implements $PokeApiAbilityCopyWith<$Res> {
  factory _$$PokeApiAbilityImplCopyWith(_$PokeApiAbilityImpl value,
          $Res Function(_$PokeApiAbilityImpl) then) =
      __$$PokeApiAbilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PokeApiNameWrapper ability, @JsonKey(name: 'is_hidden') bool isHidden});

  @override
  $PokeApiNameWrapperCopyWith<$Res> get ability;
}

/// @nodoc
class __$$PokeApiAbilityImplCopyWithImpl<$Res>
    extends _$PokeApiAbilityCopyWithImpl<$Res, _$PokeApiAbilityImpl>
    implements _$$PokeApiAbilityImplCopyWith<$Res> {
  __$$PokeApiAbilityImplCopyWithImpl(
      _$PokeApiAbilityImpl _value, $Res Function(_$PokeApiAbilityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = null,
    Object? isHidden = null,
  }) {
    return _then(_$PokeApiAbilityImpl(
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as PokeApiNameWrapper,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokeApiAbilityImpl implements _PokeApiAbility {
  const _$PokeApiAbilityImpl(
      {required this.ability,
      @JsonKey(name: 'is_hidden') required this.isHidden});

  factory _$PokeApiAbilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokeApiAbilityImplFromJson(json);

  @override
  final PokeApiNameWrapper ability;
  @override
  @JsonKey(name: 'is_hidden')
  final bool isHidden;

  @override
  String toString() {
    return 'PokeApiAbility(ability: $ability, isHidden: $isHidden)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokeApiAbilityImpl &&
            (identical(other.ability, ability) || other.ability == ability) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ability, isHidden);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokeApiAbilityImplCopyWith<_$PokeApiAbilityImpl> get copyWith =>
      __$$PokeApiAbilityImplCopyWithImpl<_$PokeApiAbilityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokeApiAbilityImplToJson(
      this,
    );
  }
}

abstract class _PokeApiAbility implements PokeApiAbility {
  const factory _PokeApiAbility(
          {required final PokeApiNameWrapper ability,
          @JsonKey(name: 'is_hidden') required final bool isHidden}) =
      _$PokeApiAbilityImpl;

  factory _PokeApiAbility.fromJson(Map<String, dynamic> json) =
      _$PokeApiAbilityImpl.fromJson;

  @override
  PokeApiNameWrapper get ability;
  @override
  @JsonKey(name: 'is_hidden')
  bool get isHidden;
  @override
  @JsonKey(ignore: true)
  _$$PokeApiAbilityImplCopyWith<_$PokeApiAbilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokeApiType _$PokeApiTypeFromJson(Map<String, dynamic> json) {
  return _PokeApiType.fromJson(json);
}

/// @nodoc
mixin _$PokeApiType {
  PokeApiNameWrapper get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokeApiTypeCopyWith<PokeApiType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeApiTypeCopyWith<$Res> {
  factory $PokeApiTypeCopyWith(
          PokeApiType value, $Res Function(PokeApiType) then) =
      _$PokeApiTypeCopyWithImpl<$Res, PokeApiType>;
  @useResult
  $Res call({PokeApiNameWrapper type});

  $PokeApiNameWrapperCopyWith<$Res> get type;
}

/// @nodoc
class _$PokeApiTypeCopyWithImpl<$Res, $Val extends PokeApiType>
    implements $PokeApiTypeCopyWith<$Res> {
  _$PokeApiTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokeApiNameWrapper,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokeApiNameWrapperCopyWith<$Res> get type {
    return $PokeApiNameWrapperCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokeApiTypeImplCopyWith<$Res>
    implements $PokeApiTypeCopyWith<$Res> {
  factory _$$PokeApiTypeImplCopyWith(
          _$PokeApiTypeImpl value, $Res Function(_$PokeApiTypeImpl) then) =
      __$$PokeApiTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PokeApiNameWrapper type});

  @override
  $PokeApiNameWrapperCopyWith<$Res> get type;
}

/// @nodoc
class __$$PokeApiTypeImplCopyWithImpl<$Res>
    extends _$PokeApiTypeCopyWithImpl<$Res, _$PokeApiTypeImpl>
    implements _$$PokeApiTypeImplCopyWith<$Res> {
  __$$PokeApiTypeImplCopyWithImpl(
      _$PokeApiTypeImpl _value, $Res Function(_$PokeApiTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$PokeApiTypeImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokeApiNameWrapper,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokeApiTypeImpl implements _PokeApiType {
  const _$PokeApiTypeImpl({required this.type});

  factory _$PokeApiTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokeApiTypeImplFromJson(json);

  @override
  final PokeApiNameWrapper type;

  @override
  String toString() {
    return 'PokeApiType(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokeApiTypeImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokeApiTypeImplCopyWith<_$PokeApiTypeImpl> get copyWith =>
      __$$PokeApiTypeImplCopyWithImpl<_$PokeApiTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokeApiTypeImplToJson(
      this,
    );
  }
}

abstract class _PokeApiType implements PokeApiType {
  const factory _PokeApiType({required final PokeApiNameWrapper type}) =
      _$PokeApiTypeImpl;

  factory _PokeApiType.fromJson(Map<String, dynamic> json) =
      _$PokeApiTypeImpl.fromJson;

  @override
  PokeApiNameWrapper get type;
  @override
  @JsonKey(ignore: true)
  _$$PokeApiTypeImplCopyWith<_$PokeApiTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokeApiStat _$PokeApiStatFromJson(Map<String, dynamic> json) {
  return _PokeApiStat.fromJson(json);
}

/// @nodoc
mixin _$PokeApiStat {
  PokeApiNameWrapper get stat => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_stat')
  int get baseStat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokeApiStatCopyWith<PokeApiStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeApiStatCopyWith<$Res> {
  factory $PokeApiStatCopyWith(
          PokeApiStat value, $Res Function(PokeApiStat) then) =
      _$PokeApiStatCopyWithImpl<$Res, PokeApiStat>;
  @useResult
  $Res call(
      {PokeApiNameWrapper stat, @JsonKey(name: 'base_stat') int baseStat});

  $PokeApiNameWrapperCopyWith<$Res> get stat;
}

/// @nodoc
class _$PokeApiStatCopyWithImpl<$Res, $Val extends PokeApiStat>
    implements $PokeApiStatCopyWith<$Res> {
  _$PokeApiStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stat = null,
    Object? baseStat = null,
  }) {
    return _then(_value.copyWith(
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as PokeApiNameWrapper,
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokeApiNameWrapperCopyWith<$Res> get stat {
    return $PokeApiNameWrapperCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokeApiStatImplCopyWith<$Res>
    implements $PokeApiStatCopyWith<$Res> {
  factory _$$PokeApiStatImplCopyWith(
          _$PokeApiStatImpl value, $Res Function(_$PokeApiStatImpl) then) =
      __$$PokeApiStatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PokeApiNameWrapper stat, @JsonKey(name: 'base_stat') int baseStat});

  @override
  $PokeApiNameWrapperCopyWith<$Res> get stat;
}

/// @nodoc
class __$$PokeApiStatImplCopyWithImpl<$Res>
    extends _$PokeApiStatCopyWithImpl<$Res, _$PokeApiStatImpl>
    implements _$$PokeApiStatImplCopyWith<$Res> {
  __$$PokeApiStatImplCopyWithImpl(
      _$PokeApiStatImpl _value, $Res Function(_$PokeApiStatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stat = null,
    Object? baseStat = null,
  }) {
    return _then(_$PokeApiStatImpl(
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as PokeApiNameWrapper,
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokeApiStatImpl implements _PokeApiStat {
  const _$PokeApiStatImpl(
      {required this.stat, @JsonKey(name: 'base_stat') required this.baseStat});

  factory _$PokeApiStatImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokeApiStatImplFromJson(json);

  @override
  final PokeApiNameWrapper stat;
  @override
  @JsonKey(name: 'base_stat')
  final int baseStat;

  @override
  String toString() {
    return 'PokeApiStat(stat: $stat, baseStat: $baseStat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokeApiStatImpl &&
            (identical(other.stat, stat) || other.stat == stat) &&
            (identical(other.baseStat, baseStat) ||
                other.baseStat == baseStat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, stat, baseStat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokeApiStatImplCopyWith<_$PokeApiStatImpl> get copyWith =>
      __$$PokeApiStatImplCopyWithImpl<_$PokeApiStatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokeApiStatImplToJson(
      this,
    );
  }
}

abstract class _PokeApiStat implements PokeApiStat {
  const factory _PokeApiStat(
          {required final PokeApiNameWrapper stat,
          @JsonKey(name: 'base_stat') required final int baseStat}) =
      _$PokeApiStatImpl;

  factory _PokeApiStat.fromJson(Map<String, dynamic> json) =
      _$PokeApiStatImpl.fromJson;

  @override
  PokeApiNameWrapper get stat;
  @override
  @JsonKey(name: 'base_stat')
  int get baseStat;
  @override
  @JsonKey(ignore: true)
  _$$PokeApiStatImplCopyWith<_$PokeApiStatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokeApiNameWrapper _$PokeApiNameWrapperFromJson(Map<String, dynamic> json) {
  return _PokeApiNameWrapper.fromJson(json);
}

/// @nodoc
mixin _$PokeApiNameWrapper {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokeApiNameWrapperCopyWith<PokeApiNameWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeApiNameWrapperCopyWith<$Res> {
  factory $PokeApiNameWrapperCopyWith(
          PokeApiNameWrapper value, $Res Function(PokeApiNameWrapper) then) =
      _$PokeApiNameWrapperCopyWithImpl<$Res, PokeApiNameWrapper>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$PokeApiNameWrapperCopyWithImpl<$Res, $Val extends PokeApiNameWrapper>
    implements $PokeApiNameWrapperCopyWith<$Res> {
  _$PokeApiNameWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokeApiNameWrapperImplCopyWith<$Res>
    implements $PokeApiNameWrapperCopyWith<$Res> {
  factory _$$PokeApiNameWrapperImplCopyWith(_$PokeApiNameWrapperImpl value,
          $Res Function(_$PokeApiNameWrapperImpl) then) =
      __$$PokeApiNameWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$PokeApiNameWrapperImplCopyWithImpl<$Res>
    extends _$PokeApiNameWrapperCopyWithImpl<$Res, _$PokeApiNameWrapperImpl>
    implements _$$PokeApiNameWrapperImplCopyWith<$Res> {
  __$$PokeApiNameWrapperImplCopyWithImpl(_$PokeApiNameWrapperImpl _value,
      $Res Function(_$PokeApiNameWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$PokeApiNameWrapperImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokeApiNameWrapperImpl implements _PokeApiNameWrapper {
  const _$PokeApiNameWrapperImpl({required this.name});

  factory _$PokeApiNameWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokeApiNameWrapperImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'PokeApiNameWrapper(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokeApiNameWrapperImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokeApiNameWrapperImplCopyWith<_$PokeApiNameWrapperImpl> get copyWith =>
      __$$PokeApiNameWrapperImplCopyWithImpl<_$PokeApiNameWrapperImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokeApiNameWrapperImplToJson(
      this,
    );
  }
}

abstract class _PokeApiNameWrapper implements PokeApiNameWrapper {
  const factory _PokeApiNameWrapper({required final String name}) =
      _$PokeApiNameWrapperImpl;

  factory _PokeApiNameWrapper.fromJson(Map<String, dynamic> json) =
      _$PokeApiNameWrapperImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$PokeApiNameWrapperImplCopyWith<_$PokeApiNameWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
