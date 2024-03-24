// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poke_graph_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokeGraphShallowResponse _$PokeGraphShallowResponseFromJson(
    Map<String, dynamic> json) {
  return _PokeGraphShallowResponse.fromJson(json);
}

/// @nodoc
mixin _$PokeGraphShallowResponse {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokeGraphShallowResponseCopyWith<PokeGraphShallowResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeGraphShallowResponseCopyWith<$Res> {
  factory $PokeGraphShallowResponseCopyWith(PokeGraphShallowResponse value,
          $Res Function(PokeGraphShallowResponse) then) =
      _$PokeGraphShallowResponseCopyWithImpl<$Res, PokeGraphShallowResponse>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$PokeGraphShallowResponseCopyWithImpl<$Res,
        $Val extends PokeGraphShallowResponse>
    implements $PokeGraphShallowResponseCopyWith<$Res> {
  _$PokeGraphShallowResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokeGraphShallowResponseImplCopyWith<$Res>
    implements $PokeGraphShallowResponseCopyWith<$Res> {
  factory _$$PokeGraphShallowResponseImplCopyWith(
          _$PokeGraphShallowResponseImpl value,
          $Res Function(_$PokeGraphShallowResponseImpl) then) =
      __$$PokeGraphShallowResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$PokeGraphShallowResponseImplCopyWithImpl<$Res>
    extends _$PokeGraphShallowResponseCopyWithImpl<$Res,
        _$PokeGraphShallowResponseImpl>
    implements _$$PokeGraphShallowResponseImplCopyWith<$Res> {
  __$$PokeGraphShallowResponseImplCopyWithImpl(
      _$PokeGraphShallowResponseImpl _value,
      $Res Function(_$PokeGraphShallowResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$PokeGraphShallowResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokeGraphShallowResponseImpl extends _PokeGraphShallowResponse {
  const _$PokeGraphShallowResponseImpl({required this.id, required this.name})
      : super._();

  factory _$PokeGraphShallowResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokeGraphShallowResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'PokeGraphShallowResponse(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokeGraphShallowResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokeGraphShallowResponseImplCopyWith<_$PokeGraphShallowResponseImpl>
      get copyWith => __$$PokeGraphShallowResponseImplCopyWithImpl<
          _$PokeGraphShallowResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokeGraphShallowResponseImplToJson(
      this,
    );
  }
}

abstract class _PokeGraphShallowResponse extends PokeGraphShallowResponse {
  const factory _PokeGraphShallowResponse(
      {required final int id,
      required final String name}) = _$PokeGraphShallowResponseImpl;
  const _PokeGraphShallowResponse._() : super._();

  factory _PokeGraphShallowResponse.fromJson(Map<String, dynamic> json) =
      _$PokeGraphShallowResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$PokeGraphShallowResponseImplCopyWith<_$PokeGraphShallowResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PokeGraphResponse _$PokeGraphResponseFromJson(Map<String, dynamic> json) {
  return _PokeGraphResponse.fromJson(json);
}

/// @nodoc
mixin _$PokeGraphResponse {
  @JsonKey(disallowNullValue: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(disallowNullValue: true)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(disallowNullValue: true)
  PokeGraphColor get color => throw _privateConstructorUsedError;
  @JsonKey(disallowNullValue: true, readValue: _readDetails)
  PokeGraphDetails get details => throw _privateConstructorUsedError;
  @JsonKey(disallowNullValue: true)
  PokeGraphEvolution get evolutions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokeGraphResponseCopyWith<PokeGraphResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeGraphResponseCopyWith<$Res> {
  factory $PokeGraphResponseCopyWith(
          PokeGraphResponse value, $Res Function(PokeGraphResponse) then) =
      _$PokeGraphResponseCopyWithImpl<$Res, PokeGraphResponse>;
  @useResult
  $Res call(
      {@JsonKey(disallowNullValue: true) int id,
      @JsonKey(disallowNullValue: true) String name,
      @JsonKey(disallowNullValue: true) PokeGraphColor color,
      @JsonKey(disallowNullValue: true, readValue: _readDetails)
      PokeGraphDetails details,
      @JsonKey(disallowNullValue: true) PokeGraphEvolution evolutions});

  $PokeGraphColorCopyWith<$Res> get color;
  $PokeGraphDetailsCopyWith<$Res> get details;
  $PokeGraphEvolutionCopyWith<$Res> get evolutions;
}

/// @nodoc
class _$PokeGraphResponseCopyWithImpl<$Res, $Val extends PokeGraphResponse>
    implements $PokeGraphResponseCopyWith<$Res> {
  _$PokeGraphResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
    Object? details = null,
    Object? evolutions = null,
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
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as PokeGraphColor,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as PokeGraphDetails,
      evolutions: null == evolutions
          ? _value.evolutions
          : evolutions // ignore: cast_nullable_to_non_nullable
              as PokeGraphEvolution,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokeGraphColorCopyWith<$Res> get color {
    return $PokeGraphColorCopyWith<$Res>(_value.color, (value) {
      return _then(_value.copyWith(color: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PokeGraphDetailsCopyWith<$Res> get details {
    return $PokeGraphDetailsCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PokeGraphEvolutionCopyWith<$Res> get evolutions {
    return $PokeGraphEvolutionCopyWith<$Res>(_value.evolutions, (value) {
      return _then(_value.copyWith(evolutions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokeGraphResponseImplCopyWith<$Res>
    implements $PokeGraphResponseCopyWith<$Res> {
  factory _$$PokeGraphResponseImplCopyWith(_$PokeGraphResponseImpl value,
          $Res Function(_$PokeGraphResponseImpl) then) =
      __$$PokeGraphResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(disallowNullValue: true) int id,
      @JsonKey(disallowNullValue: true) String name,
      @JsonKey(disallowNullValue: true) PokeGraphColor color,
      @JsonKey(disallowNullValue: true, readValue: _readDetails)
      PokeGraphDetails details,
      @JsonKey(disallowNullValue: true) PokeGraphEvolution evolutions});

  @override
  $PokeGraphColorCopyWith<$Res> get color;
  @override
  $PokeGraphDetailsCopyWith<$Res> get details;
  @override
  $PokeGraphEvolutionCopyWith<$Res> get evolutions;
}

/// @nodoc
class __$$PokeGraphResponseImplCopyWithImpl<$Res>
    extends _$PokeGraphResponseCopyWithImpl<$Res, _$PokeGraphResponseImpl>
    implements _$$PokeGraphResponseImplCopyWith<$Res> {
  __$$PokeGraphResponseImplCopyWithImpl(_$PokeGraphResponseImpl _value,
      $Res Function(_$PokeGraphResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
    Object? details = null,
    Object? evolutions = null,
  }) {
    return _then(_$PokeGraphResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as PokeGraphColor,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as PokeGraphDetails,
      evolutions: null == evolutions
          ? _value.evolutions
          : evolutions // ignore: cast_nullable_to_non_nullable
              as PokeGraphEvolution,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokeGraphResponseImpl extends _PokeGraphResponse {
  const _$PokeGraphResponseImpl(
      {@JsonKey(disallowNullValue: true) required this.id,
      @JsonKey(disallowNullValue: true) required this.name,
      @JsonKey(disallowNullValue: true) required this.color,
      @JsonKey(disallowNullValue: true, readValue: _readDetails)
      required this.details,
      @JsonKey(disallowNullValue: true) required this.evolutions})
      : super._();

  factory _$PokeGraphResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokeGraphResponseImplFromJson(json);

  @override
  @JsonKey(disallowNullValue: true)
  final int id;
  @override
  @JsonKey(disallowNullValue: true)
  final String name;
  @override
  @JsonKey(disallowNullValue: true)
  final PokeGraphColor color;
  @override
  @JsonKey(disallowNullValue: true, readValue: _readDetails)
  final PokeGraphDetails details;
  @override
  @JsonKey(disallowNullValue: true)
  final PokeGraphEvolution evolutions;

  @override
  String toString() {
    return 'PokeGraphResponse(id: $id, name: $name, color: $color, details: $details, evolutions: $evolutions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokeGraphResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.evolutions, evolutions) ||
                other.evolutions == evolutions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, color, details, evolutions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokeGraphResponseImplCopyWith<_$PokeGraphResponseImpl> get copyWith =>
      __$$PokeGraphResponseImplCopyWithImpl<_$PokeGraphResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokeGraphResponseImplToJson(
      this,
    );
  }
}

abstract class _PokeGraphResponse extends PokeGraphResponse {
  const factory _PokeGraphResponse(
      {@JsonKey(disallowNullValue: true) required final int id,
      @JsonKey(disallowNullValue: true) required final String name,
      @JsonKey(disallowNullValue: true) required final PokeGraphColor color,
      @JsonKey(disallowNullValue: true, readValue: _readDetails)
      required final PokeGraphDetails details,
      @JsonKey(disallowNullValue: true)
      required final PokeGraphEvolution evolutions}) = _$PokeGraphResponseImpl;
  const _PokeGraphResponse._() : super._();

  factory _PokeGraphResponse.fromJson(Map<String, dynamic> json) =
      _$PokeGraphResponseImpl.fromJson;

  @override
  @JsonKey(disallowNullValue: true)
  int get id;
  @override
  @JsonKey(disallowNullValue: true)
  String get name;
  @override
  @JsonKey(disallowNullValue: true)
  PokeGraphColor get color;
  @override
  @JsonKey(disallowNullValue: true, readValue: _readDetails)
  PokeGraphDetails get details;
  @override
  @JsonKey(disallowNullValue: true)
  PokeGraphEvolution get evolutions;
  @override
  @JsonKey(ignore: true)
  _$$PokeGraphResponseImplCopyWith<_$PokeGraphResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokeGraphEvolution _$PokeGraphEvolutionFromJson(Map<String, dynamic> json) {
  return _PokeGraphEvolution.fromJson(json);
}

/// @nodoc
mixin _$PokeGraphEvolution {
  @JsonKey(disallowNullValue: true)
  List<PokemonFromEvolution> get pokemons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokeGraphEvolutionCopyWith<PokeGraphEvolution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeGraphEvolutionCopyWith<$Res> {
  factory $PokeGraphEvolutionCopyWith(
          PokeGraphEvolution value, $Res Function(PokeGraphEvolution) then) =
      _$PokeGraphEvolutionCopyWithImpl<$Res, PokeGraphEvolution>;
  @useResult
  $Res call(
      {@JsonKey(disallowNullValue: true) List<PokemonFromEvolution> pokemons});
}

/// @nodoc
class _$PokeGraphEvolutionCopyWithImpl<$Res, $Val extends PokeGraphEvolution>
    implements $PokeGraphEvolutionCopyWith<$Res> {
  _$PokeGraphEvolutionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemons = null,
  }) {
    return _then(_value.copyWith(
      pokemons: null == pokemons
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonFromEvolution>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokeGraphEvolutionImplCopyWith<$Res>
    implements $PokeGraphEvolutionCopyWith<$Res> {
  factory _$$PokeGraphEvolutionImplCopyWith(_$PokeGraphEvolutionImpl value,
          $Res Function(_$PokeGraphEvolutionImpl) then) =
      __$$PokeGraphEvolutionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(disallowNullValue: true) List<PokemonFromEvolution> pokemons});
}

/// @nodoc
class __$$PokeGraphEvolutionImplCopyWithImpl<$Res>
    extends _$PokeGraphEvolutionCopyWithImpl<$Res, _$PokeGraphEvolutionImpl>
    implements _$$PokeGraphEvolutionImplCopyWith<$Res> {
  __$$PokeGraphEvolutionImplCopyWithImpl(_$PokeGraphEvolutionImpl _value,
      $Res Function(_$PokeGraphEvolutionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemons = null,
  }) {
    return _then(_$PokeGraphEvolutionImpl(
      pokemons: null == pokemons
          ? _value._pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonFromEvolution>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokeGraphEvolutionImpl implements _PokeGraphEvolution {
  const _$PokeGraphEvolutionImpl(
      {@JsonKey(disallowNullValue: true)
      required final List<PokemonFromEvolution> pokemons})
      : _pokemons = pokemons;

  factory _$PokeGraphEvolutionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokeGraphEvolutionImplFromJson(json);

  final List<PokemonFromEvolution> _pokemons;
  @override
  @JsonKey(disallowNullValue: true)
  List<PokemonFromEvolution> get pokemons {
    if (_pokemons is EqualUnmodifiableListView) return _pokemons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemons);
  }

  @override
  String toString() {
    return 'PokeGraphEvolution(pokemons: $pokemons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokeGraphEvolutionImpl &&
            const DeepCollectionEquality().equals(other._pokemons, _pokemons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pokemons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokeGraphEvolutionImplCopyWith<_$PokeGraphEvolutionImpl> get copyWith =>
      __$$PokeGraphEvolutionImplCopyWithImpl<_$PokeGraphEvolutionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokeGraphEvolutionImplToJson(
      this,
    );
  }
}

abstract class _PokeGraphEvolution implements PokeGraphEvolution {
  const factory _PokeGraphEvolution(
          {@JsonKey(disallowNullValue: true)
          required final List<PokemonFromEvolution> pokemons}) =
      _$PokeGraphEvolutionImpl;

  factory _PokeGraphEvolution.fromJson(Map<String, dynamic> json) =
      _$PokeGraphEvolutionImpl.fromJson;

  @override
  @JsonKey(disallowNullValue: true)
  List<PokemonFromEvolution> get pokemons;
  @override
  @JsonKey(ignore: true)
  _$$PokeGraphEvolutionImplCopyWith<_$PokeGraphEvolutionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonFromEvolution _$PokemonFromEvolutionFromJson(Map<String, dynamic> json) {
  return _PokemonFromEvolution.fromJson(json);
}

/// @nodoc
mixin _$PokemonFromEvolution {
  @JsonKey(disallowNullValue: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(disallowNullValue: true)
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonFromEvolutionCopyWith<PokemonFromEvolution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonFromEvolutionCopyWith<$Res> {
  factory $PokemonFromEvolutionCopyWith(PokemonFromEvolution value,
          $Res Function(PokemonFromEvolution) then) =
      _$PokemonFromEvolutionCopyWithImpl<$Res, PokemonFromEvolution>;
  @useResult
  $Res call(
      {@JsonKey(disallowNullValue: true) int id,
      @JsonKey(disallowNullValue: true) String name});
}

/// @nodoc
class _$PokemonFromEvolutionCopyWithImpl<$Res,
        $Val extends PokemonFromEvolution>
    implements $PokemonFromEvolutionCopyWith<$Res> {
  _$PokemonFromEvolutionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonFromEvolutionImplCopyWith<$Res>
    implements $PokemonFromEvolutionCopyWith<$Res> {
  factory _$$PokemonFromEvolutionImplCopyWith(_$PokemonFromEvolutionImpl value,
          $Res Function(_$PokemonFromEvolutionImpl) then) =
      __$$PokemonFromEvolutionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(disallowNullValue: true) int id,
      @JsonKey(disallowNullValue: true) String name});
}

/// @nodoc
class __$$PokemonFromEvolutionImplCopyWithImpl<$Res>
    extends _$PokemonFromEvolutionCopyWithImpl<$Res, _$PokemonFromEvolutionImpl>
    implements _$$PokemonFromEvolutionImplCopyWith<$Res> {
  __$$PokemonFromEvolutionImplCopyWithImpl(_$PokemonFromEvolutionImpl _value,
      $Res Function(_$PokemonFromEvolutionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$PokemonFromEvolutionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonFromEvolutionImpl implements _PokemonFromEvolution {
  const _$PokemonFromEvolutionImpl(
      {@JsonKey(disallowNullValue: true) required this.id,
      @JsonKey(disallowNullValue: true) required this.name});

  factory _$PokemonFromEvolutionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonFromEvolutionImplFromJson(json);

  @override
  @JsonKey(disallowNullValue: true)
  final int id;
  @override
  @JsonKey(disallowNullValue: true)
  final String name;

  @override
  String toString() {
    return 'PokemonFromEvolution(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonFromEvolutionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonFromEvolutionImplCopyWith<_$PokemonFromEvolutionImpl>
      get copyWith =>
          __$$PokemonFromEvolutionImplCopyWithImpl<_$PokemonFromEvolutionImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonFromEvolutionImplToJson(
      this,
    );
  }
}

abstract class _PokemonFromEvolution implements PokemonFromEvolution {
  const factory _PokemonFromEvolution(
          {@JsonKey(disallowNullValue: true) required final int id,
          @JsonKey(disallowNullValue: true) required final String name}) =
      _$PokemonFromEvolutionImpl;

  factory _PokemonFromEvolution.fromJson(Map<String, dynamic> json) =
      _$PokemonFromEvolutionImpl.fromJson;

  @override
  @JsonKey(disallowNullValue: true)
  int get id;
  @override
  @JsonKey(disallowNullValue: true)
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$PokemonFromEvolutionImplCopyWith<_$PokemonFromEvolutionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PokeGraphColor _$PokeGraphColorFromJson(Map<String, dynamic> json) {
  return _PokeGraphColor.fromJson(json);
}

/// @nodoc
mixin _$PokeGraphColor {
  @JsonKey(disallowNullValue: true)
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokeGraphColorCopyWith<PokeGraphColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeGraphColorCopyWith<$Res> {
  factory $PokeGraphColorCopyWith(
          PokeGraphColor value, $Res Function(PokeGraphColor) then) =
      _$PokeGraphColorCopyWithImpl<$Res, PokeGraphColor>;
  @useResult
  $Res call({@JsonKey(disallowNullValue: true) String value});
}

/// @nodoc
class _$PokeGraphColorCopyWithImpl<$Res, $Val extends PokeGraphColor>
    implements $PokeGraphColorCopyWith<$Res> {
  _$PokeGraphColorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokeGraphColorImplCopyWith<$Res>
    implements $PokeGraphColorCopyWith<$Res> {
  factory _$$PokeGraphColorImplCopyWith(_$PokeGraphColorImpl value,
          $Res Function(_$PokeGraphColorImpl) then) =
      __$$PokeGraphColorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(disallowNullValue: true) String value});
}

/// @nodoc
class __$$PokeGraphColorImplCopyWithImpl<$Res>
    extends _$PokeGraphColorCopyWithImpl<$Res, _$PokeGraphColorImpl>
    implements _$$PokeGraphColorImplCopyWith<$Res> {
  __$$PokeGraphColorImplCopyWithImpl(
      _$PokeGraphColorImpl _value, $Res Function(_$PokeGraphColorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$PokeGraphColorImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokeGraphColorImpl implements _PokeGraphColor {
  const _$PokeGraphColorImpl(
      {@JsonKey(disallowNullValue: true) required this.value});

  factory _$PokeGraphColorImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokeGraphColorImplFromJson(json);

  @override
  @JsonKey(disallowNullValue: true)
  final String value;

  @override
  String toString() {
    return 'PokeGraphColor(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokeGraphColorImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokeGraphColorImplCopyWith<_$PokeGraphColorImpl> get copyWith =>
      __$$PokeGraphColorImplCopyWithImpl<_$PokeGraphColorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokeGraphColorImplToJson(
      this,
    );
  }
}

abstract class _PokeGraphColor implements PokeGraphColor {
  const factory _PokeGraphColor(
          {@JsonKey(disallowNullValue: true) required final String value}) =
      _$PokeGraphColorImpl;

  factory _PokeGraphColor.fromJson(Map<String, dynamic> json) =
      _$PokeGraphColorImpl.fromJson;

  @override
  @JsonKey(disallowNullValue: true)
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$PokeGraphColorImplCopyWith<_$PokeGraphColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokeGraphDetails _$PokeGraphDetailsFromJson(Map<String, dynamic> json) {
  return _PokeGraphDetails.fromJson(json);
}

/// @nodoc
mixin _$PokeGraphDetails {
  @JsonKey(disallowNullValue: true)
  int get height => throw _privateConstructorUsedError;
  @JsonKey(disallowNullValue: true)
  int get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_experience', disallowNullValue: true)
  int get baseExperience => throw _privateConstructorUsedError;
  @JsonKey(readValue: _readSprite, disallowNullValue: true)
  PokeGraphSprite get sprites => throw _privateConstructorUsedError;
  List<PokeGraphAbility> get abilities => throw _privateConstructorUsedError;
  @JsonKey(name: 'moves')
  List<PokeGraphMove> get movements => throw _privateConstructorUsedError;
  List<PokeGraphStat> get stats => throw _privateConstructorUsedError;
  List<PokeGraphType> get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokeGraphDetailsCopyWith<PokeGraphDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeGraphDetailsCopyWith<$Res> {
  factory $PokeGraphDetailsCopyWith(
          PokeGraphDetails value, $Res Function(PokeGraphDetails) then) =
      _$PokeGraphDetailsCopyWithImpl<$Res, PokeGraphDetails>;
  @useResult
  $Res call(
      {@JsonKey(disallowNullValue: true) int height,
      @JsonKey(disallowNullValue: true) int weight,
      @JsonKey(name: 'base_experience', disallowNullValue: true)
      int baseExperience,
      @JsonKey(readValue: _readSprite, disallowNullValue: true)
      PokeGraphSprite sprites,
      List<PokeGraphAbility> abilities,
      @JsonKey(name: 'moves') List<PokeGraphMove> movements,
      List<PokeGraphStat> stats,
      List<PokeGraphType> types});

  $PokeGraphSpriteCopyWith<$Res> get sprites;
}

/// @nodoc
class _$PokeGraphDetailsCopyWithImpl<$Res, $Val extends PokeGraphDetails>
    implements $PokeGraphDetailsCopyWith<$Res> {
  _$PokeGraphDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? weight = null,
    Object? baseExperience = null,
    Object? sprites = null,
    Object? abilities = null,
    Object? movements = null,
    Object? stats = null,
    Object? types = null,
  }) {
    return _then(_value.copyWith(
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
              as PokeGraphSprite,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<PokeGraphAbility>,
      movements: null == movements
          ? _value.movements
          : movements // ignore: cast_nullable_to_non_nullable
              as List<PokeGraphMove>,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokeGraphStat>,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokeGraphType>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokeGraphSpriteCopyWith<$Res> get sprites {
    return $PokeGraphSpriteCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokeGraphDetailsImplCopyWith<$Res>
    implements $PokeGraphDetailsCopyWith<$Res> {
  factory _$$PokeGraphDetailsImplCopyWith(_$PokeGraphDetailsImpl value,
          $Res Function(_$PokeGraphDetailsImpl) then) =
      __$$PokeGraphDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(disallowNullValue: true) int height,
      @JsonKey(disallowNullValue: true) int weight,
      @JsonKey(name: 'base_experience', disallowNullValue: true)
      int baseExperience,
      @JsonKey(readValue: _readSprite, disallowNullValue: true)
      PokeGraphSprite sprites,
      List<PokeGraphAbility> abilities,
      @JsonKey(name: 'moves') List<PokeGraphMove> movements,
      List<PokeGraphStat> stats,
      List<PokeGraphType> types});

  @override
  $PokeGraphSpriteCopyWith<$Res> get sprites;
}

/// @nodoc
class __$$PokeGraphDetailsImplCopyWithImpl<$Res>
    extends _$PokeGraphDetailsCopyWithImpl<$Res, _$PokeGraphDetailsImpl>
    implements _$$PokeGraphDetailsImplCopyWith<$Res> {
  __$$PokeGraphDetailsImplCopyWithImpl(_$PokeGraphDetailsImpl _value,
      $Res Function(_$PokeGraphDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? weight = null,
    Object? baseExperience = null,
    Object? sprites = null,
    Object? abilities = null,
    Object? movements = null,
    Object? stats = null,
    Object? types = null,
  }) {
    return _then(_$PokeGraphDetailsImpl(
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
              as PokeGraphSprite,
      abilities: null == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<PokeGraphAbility>,
      movements: null == movements
          ? _value._movements
          : movements // ignore: cast_nullable_to_non_nullable
              as List<PokeGraphMove>,
      stats: null == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokeGraphStat>,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokeGraphType>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokeGraphDetailsImpl implements _PokeGraphDetails {
  const _$PokeGraphDetailsImpl(
      {@JsonKey(disallowNullValue: true) required this.height,
      @JsonKey(disallowNullValue: true) required this.weight,
      @JsonKey(name: 'base_experience', disallowNullValue: true)
      required this.baseExperience,
      @JsonKey(readValue: _readSprite, disallowNullValue: true)
      required this.sprites,
      final List<PokeGraphAbility> abilities = const [],
      @JsonKey(name: 'moves') final List<PokeGraphMove> movements = const [],
      final List<PokeGraphStat> stats = const [],
      final List<PokeGraphType> types = const []})
      : _abilities = abilities,
        _movements = movements,
        _stats = stats,
        _types = types;

  factory _$PokeGraphDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokeGraphDetailsImplFromJson(json);

  @override
  @JsonKey(disallowNullValue: true)
  final int height;
  @override
  @JsonKey(disallowNullValue: true)
  final int weight;
  @override
  @JsonKey(name: 'base_experience', disallowNullValue: true)
  final int baseExperience;
  @override
  @JsonKey(readValue: _readSprite, disallowNullValue: true)
  final PokeGraphSprite sprites;
  final List<PokeGraphAbility> _abilities;
  @override
  @JsonKey()
  List<PokeGraphAbility> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  final List<PokeGraphMove> _movements;
  @override
  @JsonKey(name: 'moves')
  List<PokeGraphMove> get movements {
    if (_movements is EqualUnmodifiableListView) return _movements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movements);
  }

  final List<PokeGraphStat> _stats;
  @override
  @JsonKey()
  List<PokeGraphStat> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  final List<PokeGraphType> _types;
  @override
  @JsonKey()
  List<PokeGraphType> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  String toString() {
    return 'PokeGraphDetails(height: $height, weight: $weight, baseExperience: $baseExperience, sprites: $sprites, abilities: $abilities, movements: $movements, stats: $stats, types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokeGraphDetailsImpl &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.baseExperience, baseExperience) ||
                other.baseExperience == baseExperience) &&
            (identical(other.sprites, sprites) || other.sprites == sprites) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            const DeepCollectionEquality()
                .equals(other._movements, _movements) &&
            const DeepCollectionEquality().equals(other._stats, _stats) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      height,
      weight,
      baseExperience,
      sprites,
      const DeepCollectionEquality().hash(_abilities),
      const DeepCollectionEquality().hash(_movements),
      const DeepCollectionEquality().hash(_stats),
      const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokeGraphDetailsImplCopyWith<_$PokeGraphDetailsImpl> get copyWith =>
      __$$PokeGraphDetailsImplCopyWithImpl<_$PokeGraphDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokeGraphDetailsImplToJson(
      this,
    );
  }
}

abstract class _PokeGraphDetails implements PokeGraphDetails {
  const factory _PokeGraphDetails(
      {@JsonKey(disallowNullValue: true) required final int height,
      @JsonKey(disallowNullValue: true) required final int weight,
      @JsonKey(name: 'base_experience', disallowNullValue: true)
      required final int baseExperience,
      @JsonKey(readValue: _readSprite, disallowNullValue: true)
      required final PokeGraphSprite sprites,
      final List<PokeGraphAbility> abilities,
      @JsonKey(name: 'moves') final List<PokeGraphMove> movements,
      final List<PokeGraphStat> stats,
      final List<PokeGraphType> types}) = _$PokeGraphDetailsImpl;

  factory _PokeGraphDetails.fromJson(Map<String, dynamic> json) =
      _$PokeGraphDetailsImpl.fromJson;

  @override
  @JsonKey(disallowNullValue: true)
  int get height;
  @override
  @JsonKey(disallowNullValue: true)
  int get weight;
  @override
  @JsonKey(name: 'base_experience', disallowNullValue: true)
  int get baseExperience;
  @override
  @JsonKey(readValue: _readSprite, disallowNullValue: true)
  PokeGraphSprite get sprites;
  @override
  List<PokeGraphAbility> get abilities;
  @override
  @JsonKey(name: 'moves')
  List<PokeGraphMove> get movements;
  @override
  List<PokeGraphStat> get stats;
  @override
  List<PokeGraphType> get types;
  @override
  @JsonKey(ignore: true)
  _$$PokeGraphDetailsImplCopyWith<_$PokeGraphDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokeGraphMove _$PokeGraphMoveFromJson(Map<String, dynamic> json) {
  return _PokeGraphMove.fromJson(json);
}

/// @nodoc
mixin _$PokeGraphMove {
  @JsonKey(readValue: _moveWrapper, disallowNullValue: true)
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokeGraphMoveCopyWith<PokeGraphMove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeGraphMoveCopyWith<$Res> {
  factory $PokeGraphMoveCopyWith(
          PokeGraphMove value, $Res Function(PokeGraphMove) then) =
      _$PokeGraphMoveCopyWithImpl<$Res, PokeGraphMove>;
  @useResult
  $Res call(
      {@JsonKey(readValue: _moveWrapper, disallowNullValue: true) String name});
}

/// @nodoc
class _$PokeGraphMoveCopyWithImpl<$Res, $Val extends PokeGraphMove>
    implements $PokeGraphMoveCopyWith<$Res> {
  _$PokeGraphMoveCopyWithImpl(this._value, this._then);

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
abstract class _$$PokeGraphMoveImplCopyWith<$Res>
    implements $PokeGraphMoveCopyWith<$Res> {
  factory _$$PokeGraphMoveImplCopyWith(
          _$PokeGraphMoveImpl value, $Res Function(_$PokeGraphMoveImpl) then) =
      __$$PokeGraphMoveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: _moveWrapper, disallowNullValue: true) String name});
}

/// @nodoc
class __$$PokeGraphMoveImplCopyWithImpl<$Res>
    extends _$PokeGraphMoveCopyWithImpl<$Res, _$PokeGraphMoveImpl>
    implements _$$PokeGraphMoveImplCopyWith<$Res> {
  __$$PokeGraphMoveImplCopyWithImpl(
      _$PokeGraphMoveImpl _value, $Res Function(_$PokeGraphMoveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$PokeGraphMoveImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokeGraphMoveImpl implements _PokeGraphMove {
  const _$PokeGraphMoveImpl(
      {@JsonKey(readValue: _moveWrapper, disallowNullValue: true)
      required this.name});

  factory _$PokeGraphMoveImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokeGraphMoveImplFromJson(json);

  @override
  @JsonKey(readValue: _moveWrapper, disallowNullValue: true)
  final String name;

  @override
  String toString() {
    return 'PokeGraphMove(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokeGraphMoveImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokeGraphMoveImplCopyWith<_$PokeGraphMoveImpl> get copyWith =>
      __$$PokeGraphMoveImplCopyWithImpl<_$PokeGraphMoveImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokeGraphMoveImplToJson(
      this,
    );
  }
}

abstract class _PokeGraphMove implements PokeGraphMove {
  const factory _PokeGraphMove(
      {@JsonKey(readValue: _moveWrapper, disallowNullValue: true)
      required final String name}) = _$PokeGraphMoveImpl;

  factory _PokeGraphMove.fromJson(Map<String, dynamic> json) =
      _$PokeGraphMoveImpl.fromJson;

  @override
  @JsonKey(readValue: _moveWrapper, disallowNullValue: true)
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$PokeGraphMoveImplCopyWith<_$PokeGraphMoveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokeGraphStat _$PokeGraphStatFromJson(Map<String, dynamic> json) {
  return _PokeGraphStat.fromJson(json);
}

/// @nodoc
mixin _$PokeGraphStat {
  @JsonKey(readValue: _statWrapper, disallowNullValue: true)
  String get name => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokeGraphStatCopyWith<PokeGraphStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeGraphStatCopyWith<$Res> {
  factory $PokeGraphStatCopyWith(
          PokeGraphStat value, $Res Function(PokeGraphStat) then) =
      _$PokeGraphStatCopyWithImpl<$Res, PokeGraphStat>;
  @useResult
  $Res call(
      {@JsonKey(readValue: _statWrapper, disallowNullValue: true) String name,
      int value});
}

/// @nodoc
class _$PokeGraphStatCopyWithImpl<$Res, $Val extends PokeGraphStat>
    implements $PokeGraphStatCopyWith<$Res> {
  _$PokeGraphStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokeGraphStatImplCopyWith<$Res>
    implements $PokeGraphStatCopyWith<$Res> {
  factory _$$PokeGraphStatImplCopyWith(
          _$PokeGraphStatImpl value, $Res Function(_$PokeGraphStatImpl) then) =
      __$$PokeGraphStatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: _statWrapper, disallowNullValue: true) String name,
      int value});
}

/// @nodoc
class __$$PokeGraphStatImplCopyWithImpl<$Res>
    extends _$PokeGraphStatCopyWithImpl<$Res, _$PokeGraphStatImpl>
    implements _$$PokeGraphStatImplCopyWith<$Res> {
  __$$PokeGraphStatImplCopyWithImpl(
      _$PokeGraphStatImpl _value, $Res Function(_$PokeGraphStatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$PokeGraphStatImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokeGraphStatImpl implements _PokeGraphStat {
  const _$PokeGraphStatImpl(
      {@JsonKey(readValue: _statWrapper, disallowNullValue: true)
      required this.name,
      required this.value});

  factory _$PokeGraphStatImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokeGraphStatImplFromJson(json);

  @override
  @JsonKey(readValue: _statWrapper, disallowNullValue: true)
  final String name;
  @override
  final int value;

  @override
  String toString() {
    return 'PokeGraphStat(name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokeGraphStatImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokeGraphStatImplCopyWith<_$PokeGraphStatImpl> get copyWith =>
      __$$PokeGraphStatImplCopyWithImpl<_$PokeGraphStatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokeGraphStatImplToJson(
      this,
    );
  }
}

abstract class _PokeGraphStat implements PokeGraphStat {
  const factory _PokeGraphStat(
      {@JsonKey(readValue: _statWrapper, disallowNullValue: true)
      required final String name,
      required final int value}) = _$PokeGraphStatImpl;

  factory _PokeGraphStat.fromJson(Map<String, dynamic> json) =
      _$PokeGraphStatImpl.fromJson;

  @override
  @JsonKey(readValue: _statWrapper, disallowNullValue: true)
  String get name;
  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$PokeGraphStatImplCopyWith<_$PokeGraphStatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokeGraphType _$PokeGraphTypeFromJson(Map<String, dynamic> json) {
  return _PokeGraphType.fromJson(json);
}

/// @nodoc
mixin _$PokeGraphType {
  @JsonKey(readValue: _typeWrapper, disallowNullValue: true)
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokeGraphTypeCopyWith<PokeGraphType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeGraphTypeCopyWith<$Res> {
  factory $PokeGraphTypeCopyWith(
          PokeGraphType value, $Res Function(PokeGraphType) then) =
      _$PokeGraphTypeCopyWithImpl<$Res, PokeGraphType>;
  @useResult
  $Res call(
      {@JsonKey(readValue: _typeWrapper, disallowNullValue: true) String name});
}

/// @nodoc
class _$PokeGraphTypeCopyWithImpl<$Res, $Val extends PokeGraphType>
    implements $PokeGraphTypeCopyWith<$Res> {
  _$PokeGraphTypeCopyWithImpl(this._value, this._then);

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
abstract class _$$PokeGraphTypeImplCopyWith<$Res>
    implements $PokeGraphTypeCopyWith<$Res> {
  factory _$$PokeGraphTypeImplCopyWith(
          _$PokeGraphTypeImpl value, $Res Function(_$PokeGraphTypeImpl) then) =
      __$$PokeGraphTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: _typeWrapper, disallowNullValue: true) String name});
}

/// @nodoc
class __$$PokeGraphTypeImplCopyWithImpl<$Res>
    extends _$PokeGraphTypeCopyWithImpl<$Res, _$PokeGraphTypeImpl>
    implements _$$PokeGraphTypeImplCopyWith<$Res> {
  __$$PokeGraphTypeImplCopyWithImpl(
      _$PokeGraphTypeImpl _value, $Res Function(_$PokeGraphTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$PokeGraphTypeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokeGraphTypeImpl implements _PokeGraphType {
  const _$PokeGraphTypeImpl(
      {@JsonKey(readValue: _typeWrapper, disallowNullValue: true)
      required this.name});

  factory _$PokeGraphTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokeGraphTypeImplFromJson(json);

  @override
  @JsonKey(readValue: _typeWrapper, disallowNullValue: true)
  final String name;

  @override
  String toString() {
    return 'PokeGraphType(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokeGraphTypeImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokeGraphTypeImplCopyWith<_$PokeGraphTypeImpl> get copyWith =>
      __$$PokeGraphTypeImplCopyWithImpl<_$PokeGraphTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokeGraphTypeImplToJson(
      this,
    );
  }
}

abstract class _PokeGraphType implements PokeGraphType {
  const factory _PokeGraphType(
      {@JsonKey(readValue: _typeWrapper, disallowNullValue: true)
      required final String name}) = _$PokeGraphTypeImpl;

  factory _PokeGraphType.fromJson(Map<String, dynamic> json) =
      _$PokeGraphTypeImpl.fromJson;

  @override
  @JsonKey(readValue: _typeWrapper, disallowNullValue: true)
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$PokeGraphTypeImplCopyWith<_$PokeGraphTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokeGraphAbility _$PokeGraphAbilityFromJson(Map<String, dynamic> json) {
  return _PokeGraphAbility.fromJson(json);
}

/// @nodoc
mixin _$PokeGraphAbility {
  @JsonKey(readValue: _abilityWrapper, disallowNullValue: true)
  String get name => throw _privateConstructorUsedError;
  bool get secret => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokeGraphAbilityCopyWith<PokeGraphAbility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeGraphAbilityCopyWith<$Res> {
  factory $PokeGraphAbilityCopyWith(
          PokeGraphAbility value, $Res Function(PokeGraphAbility) then) =
      _$PokeGraphAbilityCopyWithImpl<$Res, PokeGraphAbility>;
  @useResult
  $Res call(
      {@JsonKey(readValue: _abilityWrapper, disallowNullValue: true)
      String name,
      bool secret});
}

/// @nodoc
class _$PokeGraphAbilityCopyWithImpl<$Res, $Val extends PokeGraphAbility>
    implements $PokeGraphAbilityCopyWith<$Res> {
  _$PokeGraphAbilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? secret = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokeGraphAbilityImplCopyWith<$Res>
    implements $PokeGraphAbilityCopyWith<$Res> {
  factory _$$PokeGraphAbilityImplCopyWith(_$PokeGraphAbilityImpl value,
          $Res Function(_$PokeGraphAbilityImpl) then) =
      __$$PokeGraphAbilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: _abilityWrapper, disallowNullValue: true)
      String name,
      bool secret});
}

/// @nodoc
class __$$PokeGraphAbilityImplCopyWithImpl<$Res>
    extends _$PokeGraphAbilityCopyWithImpl<$Res, _$PokeGraphAbilityImpl>
    implements _$$PokeGraphAbilityImplCopyWith<$Res> {
  __$$PokeGraphAbilityImplCopyWithImpl(_$PokeGraphAbilityImpl _value,
      $Res Function(_$PokeGraphAbilityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? secret = null,
  }) {
    return _then(_$PokeGraphAbilityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokeGraphAbilityImpl implements _PokeGraphAbility {
  const _$PokeGraphAbilityImpl(
      {@JsonKey(readValue: _abilityWrapper, disallowNullValue: true)
      required this.name,
      required this.secret});

  factory _$PokeGraphAbilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokeGraphAbilityImplFromJson(json);

  @override
  @JsonKey(readValue: _abilityWrapper, disallowNullValue: true)
  final String name;
  @override
  final bool secret;

  @override
  String toString() {
    return 'PokeGraphAbility(name: $name, secret: $secret)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokeGraphAbilityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.secret, secret) || other.secret == secret));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, secret);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokeGraphAbilityImplCopyWith<_$PokeGraphAbilityImpl> get copyWith =>
      __$$PokeGraphAbilityImplCopyWithImpl<_$PokeGraphAbilityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokeGraphAbilityImplToJson(
      this,
    );
  }
}

abstract class _PokeGraphAbility implements PokeGraphAbility {
  const factory _PokeGraphAbility(
      {@JsonKey(readValue: _abilityWrapper, disallowNullValue: true)
      required final String name,
      required final bool secret}) = _$PokeGraphAbilityImpl;

  factory _PokeGraphAbility.fromJson(Map<String, dynamic> json) =
      _$PokeGraphAbilityImpl.fromJson;

  @override
  @JsonKey(readValue: _abilityWrapper, disallowNullValue: true)
  String get name;
  @override
  bool get secret;
  @override
  @JsonKey(ignore: true)
  _$$PokeGraphAbilityImplCopyWith<_$PokeGraphAbilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokeGraphSprite _$PokeGraphSpriteFromJson(Map<String, dynamic> json) {
  return _PokeGraphSprite.fromJson(json);
}

/// @nodoc
mixin _$PokeGraphSprite {
  @JsonKey(name: 'front_default', disallowNullValue: true)
  String get front => throw _privateConstructorUsedError;
  @JsonKey(name: 'back_default', disallowNullValue: true)
  String get back => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_shiny')
  String? get frontShiny => throw _privateConstructorUsedError;
  @JsonKey(name: 'back_shiny')
  String? get backShiny => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_female')
  String? get frontFemale => throw _privateConstructorUsedError;
  @JsonKey(name: 'back_female')
  String? get backFemale => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_shiny_female')
  String? get frontShinyFemale => throw _privateConstructorUsedError;
  @JsonKey(name: 'back_shiny_female')
  String? get backShinyFemale => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokeGraphSpriteCopyWith<PokeGraphSprite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeGraphSpriteCopyWith<$Res> {
  factory $PokeGraphSpriteCopyWith(
          PokeGraphSprite value, $Res Function(PokeGraphSprite) then) =
      _$PokeGraphSpriteCopyWithImpl<$Res, PokeGraphSprite>;
  @useResult
  $Res call(
      {@JsonKey(name: 'front_default', disallowNullValue: true) String front,
      @JsonKey(name: 'back_default', disallowNullValue: true) String back,
      @JsonKey(name: 'front_shiny') String? frontShiny,
      @JsonKey(name: 'back_shiny') String? backShiny,
      @JsonKey(name: 'front_female') String? frontFemale,
      @JsonKey(name: 'back_female') String? backFemale,
      @JsonKey(name: 'front_shiny_female') String? frontShinyFemale,
      @JsonKey(name: 'back_shiny_female') String? backShinyFemale});
}

/// @nodoc
class _$PokeGraphSpriteCopyWithImpl<$Res, $Val extends PokeGraphSprite>
    implements $PokeGraphSpriteCopyWith<$Res> {
  _$PokeGraphSpriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? front = null,
    Object? back = null,
    Object? frontShiny = freezed,
    Object? backShiny = freezed,
    Object? frontFemale = freezed,
    Object? backFemale = freezed,
    Object? frontShinyFemale = freezed,
    Object? backShinyFemale = freezed,
  }) {
    return _then(_value.copyWith(
      front: null == front
          ? _value.front
          : front // ignore: cast_nullable_to_non_nullable
              as String,
      back: null == back
          ? _value.back
          : back // ignore: cast_nullable_to_non_nullable
              as String,
      frontShiny: freezed == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String?,
      backShiny: freezed == backShiny
          ? _value.backShiny
          : backShiny // ignore: cast_nullable_to_non_nullable
              as String?,
      frontFemale: freezed == frontFemale
          ? _value.frontFemale
          : frontFemale // ignore: cast_nullable_to_non_nullable
              as String?,
      backFemale: freezed == backFemale
          ? _value.backFemale
          : backFemale // ignore: cast_nullable_to_non_nullable
              as String?,
      frontShinyFemale: freezed == frontShinyFemale
          ? _value.frontShinyFemale
          : frontShinyFemale // ignore: cast_nullable_to_non_nullable
              as String?,
      backShinyFemale: freezed == backShinyFemale
          ? _value.backShinyFemale
          : backShinyFemale // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokeGraphSpriteImplCopyWith<$Res>
    implements $PokeGraphSpriteCopyWith<$Res> {
  factory _$$PokeGraphSpriteImplCopyWith(_$PokeGraphSpriteImpl value,
          $Res Function(_$PokeGraphSpriteImpl) then) =
      __$$PokeGraphSpriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'front_default', disallowNullValue: true) String front,
      @JsonKey(name: 'back_default', disallowNullValue: true) String back,
      @JsonKey(name: 'front_shiny') String? frontShiny,
      @JsonKey(name: 'back_shiny') String? backShiny,
      @JsonKey(name: 'front_female') String? frontFemale,
      @JsonKey(name: 'back_female') String? backFemale,
      @JsonKey(name: 'front_shiny_female') String? frontShinyFemale,
      @JsonKey(name: 'back_shiny_female') String? backShinyFemale});
}

/// @nodoc
class __$$PokeGraphSpriteImplCopyWithImpl<$Res>
    extends _$PokeGraphSpriteCopyWithImpl<$Res, _$PokeGraphSpriteImpl>
    implements _$$PokeGraphSpriteImplCopyWith<$Res> {
  __$$PokeGraphSpriteImplCopyWithImpl(
      _$PokeGraphSpriteImpl _value, $Res Function(_$PokeGraphSpriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? front = null,
    Object? back = null,
    Object? frontShiny = freezed,
    Object? backShiny = freezed,
    Object? frontFemale = freezed,
    Object? backFemale = freezed,
    Object? frontShinyFemale = freezed,
    Object? backShinyFemale = freezed,
  }) {
    return _then(_$PokeGraphSpriteImpl(
      front: null == front
          ? _value.front
          : front // ignore: cast_nullable_to_non_nullable
              as String,
      back: null == back
          ? _value.back
          : back // ignore: cast_nullable_to_non_nullable
              as String,
      frontShiny: freezed == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String?,
      backShiny: freezed == backShiny
          ? _value.backShiny
          : backShiny // ignore: cast_nullable_to_non_nullable
              as String?,
      frontFemale: freezed == frontFemale
          ? _value.frontFemale
          : frontFemale // ignore: cast_nullable_to_non_nullable
              as String?,
      backFemale: freezed == backFemale
          ? _value.backFemale
          : backFemale // ignore: cast_nullable_to_non_nullable
              as String?,
      frontShinyFemale: freezed == frontShinyFemale
          ? _value.frontShinyFemale
          : frontShinyFemale // ignore: cast_nullable_to_non_nullable
              as String?,
      backShinyFemale: freezed == backShinyFemale
          ? _value.backShinyFemale
          : backShinyFemale // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokeGraphSpriteImpl implements _PokeGraphSprite {
  const _$PokeGraphSpriteImpl(
      {@JsonKey(name: 'front_default', disallowNullValue: true)
      required this.front,
      @JsonKey(name: 'back_default', disallowNullValue: true)
      required this.back,
      @JsonKey(name: 'front_shiny') this.frontShiny,
      @JsonKey(name: 'back_shiny') this.backShiny,
      @JsonKey(name: 'front_female') this.frontFemale,
      @JsonKey(name: 'back_female') this.backFemale,
      @JsonKey(name: 'front_shiny_female') this.frontShinyFemale,
      @JsonKey(name: 'back_shiny_female') this.backShinyFemale});

  factory _$PokeGraphSpriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokeGraphSpriteImplFromJson(json);

  @override
  @JsonKey(name: 'front_default', disallowNullValue: true)
  final String front;
  @override
  @JsonKey(name: 'back_default', disallowNullValue: true)
  final String back;
  @override
  @JsonKey(name: 'front_shiny')
  final String? frontShiny;
  @override
  @JsonKey(name: 'back_shiny')
  final String? backShiny;
  @override
  @JsonKey(name: 'front_female')
  final String? frontFemale;
  @override
  @JsonKey(name: 'back_female')
  final String? backFemale;
  @override
  @JsonKey(name: 'front_shiny_female')
  final String? frontShinyFemale;
  @override
  @JsonKey(name: 'back_shiny_female')
  final String? backShinyFemale;

  @override
  String toString() {
    return 'PokeGraphSprite(front: $front, back: $back, frontShiny: $frontShiny, backShiny: $backShiny, frontFemale: $frontFemale, backFemale: $backFemale, frontShinyFemale: $frontShinyFemale, backShinyFemale: $backShinyFemale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokeGraphSpriteImpl &&
            (identical(other.front, front) || other.front == front) &&
            (identical(other.back, back) || other.back == back) &&
            (identical(other.frontShiny, frontShiny) ||
                other.frontShiny == frontShiny) &&
            (identical(other.backShiny, backShiny) ||
                other.backShiny == backShiny) &&
            (identical(other.frontFemale, frontFemale) ||
                other.frontFemale == frontFemale) &&
            (identical(other.backFemale, backFemale) ||
                other.backFemale == backFemale) &&
            (identical(other.frontShinyFemale, frontShinyFemale) ||
                other.frontShinyFemale == frontShinyFemale) &&
            (identical(other.backShinyFemale, backShinyFemale) ||
                other.backShinyFemale == backShinyFemale));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, front, back, frontShiny,
      backShiny, frontFemale, backFemale, frontShinyFemale, backShinyFemale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokeGraphSpriteImplCopyWith<_$PokeGraphSpriteImpl> get copyWith =>
      __$$PokeGraphSpriteImplCopyWithImpl<_$PokeGraphSpriteImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokeGraphSpriteImplToJson(
      this,
    );
  }
}

abstract class _PokeGraphSprite implements PokeGraphSprite {
  const factory _PokeGraphSprite(
          {@JsonKey(name: 'front_default', disallowNullValue: true)
          required final String front,
          @JsonKey(name: 'back_default', disallowNullValue: true)
          required final String back,
          @JsonKey(name: 'front_shiny') final String? frontShiny,
          @JsonKey(name: 'back_shiny') final String? backShiny,
          @JsonKey(name: 'front_female') final String? frontFemale,
          @JsonKey(name: 'back_female') final String? backFemale,
          @JsonKey(name: 'front_shiny_female') final String? frontShinyFemale,
          @JsonKey(name: 'back_shiny_female') final String? backShinyFemale}) =
      _$PokeGraphSpriteImpl;

  factory _PokeGraphSprite.fromJson(Map<String, dynamic> json) =
      _$PokeGraphSpriteImpl.fromJson;

  @override
  @JsonKey(name: 'front_default', disallowNullValue: true)
  String get front;
  @override
  @JsonKey(name: 'back_default', disallowNullValue: true)
  String get back;
  @override
  @JsonKey(name: 'front_shiny')
  String? get frontShiny;
  @override
  @JsonKey(name: 'back_shiny')
  String? get backShiny;
  @override
  @JsonKey(name: 'front_female')
  String? get frontFemale;
  @override
  @JsonKey(name: 'back_female')
  String? get backFemale;
  @override
  @JsonKey(name: 'front_shiny_female')
  String? get frontShinyFemale;
  @override
  @JsonKey(name: 'back_shiny_female')
  String? get backShinyFemale;
  @override
  @JsonKey(ignore: true)
  _$$PokeGraphSpriteImplCopyWith<_$PokeGraphSpriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
