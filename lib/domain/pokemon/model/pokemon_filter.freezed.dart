// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonFilter _$PokemonFilterFromJson(Map<String, dynamic> json) {
  return _PokemonFilter.fromJson(json);
}

/// @nodoc
mixin _$PokemonFilter {
  Set<PokemonAttribute> get types => throw _privateConstructorUsedError;
  Set<PokemonAttribute> get colors => throw _privateConstructorUsedError;
  Set<PokemonAttribute> get generations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonFilterCopyWith<PokemonFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonFilterCopyWith<$Res> {
  factory $PokemonFilterCopyWith(
          PokemonFilter value, $Res Function(PokemonFilter) then) =
      _$PokemonFilterCopyWithImpl<$Res, PokemonFilter>;
  @useResult
  $Res call(
      {Set<PokemonAttribute> types,
      Set<PokemonAttribute> colors,
      Set<PokemonAttribute> generations});
}

/// @nodoc
class _$PokemonFilterCopyWithImpl<$Res, $Val extends PokemonFilter>
    implements $PokemonFilterCopyWith<$Res> {
  _$PokemonFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? types = null,
    Object? colors = null,
    Object? generations = null,
  }) {
    return _then(_value.copyWith(
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as Set<PokemonAttribute>,
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as Set<PokemonAttribute>,
      generations: null == generations
          ? _value.generations
          : generations // ignore: cast_nullable_to_non_nullable
              as Set<PokemonAttribute>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonFilterImplCopyWith<$Res>
    implements $PokemonFilterCopyWith<$Res> {
  factory _$$PokemonFilterImplCopyWith(
          _$PokemonFilterImpl value, $Res Function(_$PokemonFilterImpl) then) =
      __$$PokemonFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Set<PokemonAttribute> types,
      Set<PokemonAttribute> colors,
      Set<PokemonAttribute> generations});
}

/// @nodoc
class __$$PokemonFilterImplCopyWithImpl<$Res>
    extends _$PokemonFilterCopyWithImpl<$Res, _$PokemonFilterImpl>
    implements _$$PokemonFilterImplCopyWith<$Res> {
  __$$PokemonFilterImplCopyWithImpl(
      _$PokemonFilterImpl _value, $Res Function(_$PokemonFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? types = null,
    Object? colors = null,
    Object? generations = null,
  }) {
    return _then(_$PokemonFilterImpl(
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as Set<PokemonAttribute>,
      colors: null == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as Set<PokemonAttribute>,
      generations: null == generations
          ? _value._generations
          : generations // ignore: cast_nullable_to_non_nullable
              as Set<PokemonAttribute>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonFilterImpl implements _PokemonFilter {
  const _$PokemonFilterImpl(
      {final Set<PokemonAttribute> types = const {},
      final Set<PokemonAttribute> colors = const {},
      final Set<PokemonAttribute> generations = const {}})
      : _types = types,
        _colors = colors,
        _generations = generations;

  factory _$PokemonFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonFilterImplFromJson(json);

  final Set<PokemonAttribute> _types;
  @override
  @JsonKey()
  Set<PokemonAttribute> get types {
    if (_types is EqualUnmodifiableSetView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_types);
  }

  final Set<PokemonAttribute> _colors;
  @override
  @JsonKey()
  Set<PokemonAttribute> get colors {
    if (_colors is EqualUnmodifiableSetView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_colors);
  }

  final Set<PokemonAttribute> _generations;
  @override
  @JsonKey()
  Set<PokemonAttribute> get generations {
    if (_generations is EqualUnmodifiableSetView) return _generations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_generations);
  }

  @override
  String toString() {
    return 'PokemonFilter(types: $types, colors: $colors, generations: $generations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonFilterImpl &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            const DeepCollectionEquality()
                .equals(other._generations, _generations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_colors),
      const DeepCollectionEquality().hash(_generations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonFilterImplCopyWith<_$PokemonFilterImpl> get copyWith =>
      __$$PokemonFilterImplCopyWithImpl<_$PokemonFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonFilterImplToJson(
      this,
    );
  }
}

abstract class _PokemonFilter implements PokemonFilter {
  const factory _PokemonFilter(
      {final Set<PokemonAttribute> types,
      final Set<PokemonAttribute> colors,
      final Set<PokemonAttribute> generations}) = _$PokemonFilterImpl;

  factory _PokemonFilter.fromJson(Map<String, dynamic> json) =
      _$PokemonFilterImpl.fromJson;

  @override
  Set<PokemonAttribute> get types;
  @override
  Set<PokemonAttribute> get colors;
  @override
  Set<PokemonAttribute> get generations;
  @override
  @JsonKey(ignore: true)
  _$$PokemonFilterImplCopyWith<_$PokemonFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonAttribute _$PokemonAttributeFromJson(Map<String, dynamic> json) {
  return _PokemonAttribute.fromJson(json);
}

/// @nodoc
mixin _$PokemonAttribute {
  int get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonAttributeCopyWith<PokemonAttribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonAttributeCopyWith<$Res> {
  factory $PokemonAttributeCopyWith(
          PokemonAttribute value, $Res Function(PokemonAttribute) then) =
      _$PokemonAttributeCopyWithImpl<$Res, PokemonAttribute>;
  @useResult
  $Res call({int id, String value});
}

/// @nodoc
class _$PokemonAttributeCopyWithImpl<$Res, $Val extends PokemonAttribute>
    implements $PokemonAttributeCopyWith<$Res> {
  _$PokemonAttributeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonAttributeImplCopyWith<$Res>
    implements $PokemonAttributeCopyWith<$Res> {
  factory _$$PokemonAttributeImplCopyWith(_$PokemonAttributeImpl value,
          $Res Function(_$PokemonAttributeImpl) then) =
      __$$PokemonAttributeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String value});
}

/// @nodoc
class __$$PokemonAttributeImplCopyWithImpl<$Res>
    extends _$PokemonAttributeCopyWithImpl<$Res, _$PokemonAttributeImpl>
    implements _$$PokemonAttributeImplCopyWith<$Res> {
  __$$PokemonAttributeImplCopyWithImpl(_$PokemonAttributeImpl _value,
      $Res Function(_$PokemonAttributeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_$PokemonAttributeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonAttributeImpl implements _PokemonAttribute {
  const _$PokemonAttributeImpl({required this.id, required this.value});

  factory _$PokemonAttributeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonAttributeImplFromJson(json);

  @override
  final int id;
  @override
  final String value;

  @override
  String toString() {
    return 'PokemonAttribute(id: $id, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonAttributeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonAttributeImplCopyWith<_$PokemonAttributeImpl> get copyWith =>
      __$$PokemonAttributeImplCopyWithImpl<_$PokemonAttributeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonAttributeImplToJson(
      this,
    );
  }
}

abstract class _PokemonAttribute implements PokemonAttribute {
  const factory _PokemonAttribute(
      {required final int id,
      required final String value}) = _$PokemonAttributeImpl;

  factory _PokemonAttribute.fromJson(Map<String, dynamic> json) =
      _$PokemonAttributeImpl.fromJson;

  @override
  int get id;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$PokemonAttributeImplCopyWith<_$PokemonAttributeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
