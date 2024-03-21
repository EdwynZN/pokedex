// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sprite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Sprite _$SpriteFromJson(Map<String, dynamic> json) {
  return _Sprite.fromJson(json);
}

/// @nodoc
mixin _$Sprite {
  String get back => throw _privateConstructorUsedError;
  String get front => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpriteCopyWith<Sprite> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpriteCopyWith<$Res> {
  factory $SpriteCopyWith(Sprite value, $Res Function(Sprite) then) =
      _$SpriteCopyWithImpl<$Res, Sprite>;
  @useResult
  $Res call({String back, String front});
}

/// @nodoc
class _$SpriteCopyWithImpl<$Res, $Val extends Sprite>
    implements $SpriteCopyWith<$Res> {
  _$SpriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? back = null,
    Object? front = null,
  }) {
    return _then(_value.copyWith(
      back: null == back
          ? _value.back
          : back // ignore: cast_nullable_to_non_nullable
              as String,
      front: null == front
          ? _value.front
          : front // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpriteImplCopyWith<$Res> implements $SpriteCopyWith<$Res> {
  factory _$$SpriteImplCopyWith(
          _$SpriteImpl value, $Res Function(_$SpriteImpl) then) =
      __$$SpriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String back, String front});
}

/// @nodoc
class __$$SpriteImplCopyWithImpl<$Res>
    extends _$SpriteCopyWithImpl<$Res, _$SpriteImpl>
    implements _$$SpriteImplCopyWith<$Res> {
  __$$SpriteImplCopyWithImpl(
      _$SpriteImpl _value, $Res Function(_$SpriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? back = null,
    Object? front = null,
  }) {
    return _then(_$SpriteImpl(
      back: null == back
          ? _value.back
          : back // ignore: cast_nullable_to_non_nullable
              as String,
      front: null == front
          ? _value.front
          : front // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpriteImpl implements _Sprite {
  const _$SpriteImpl({required this.back, required this.front});

  factory _$SpriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpriteImplFromJson(json);

  @override
  final String back;
  @override
  final String front;

  @override
  String toString() {
    return 'Sprite(back: $back, front: $front)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpriteImpl &&
            (identical(other.back, back) || other.back == back) &&
            (identical(other.front, front) || other.front == front));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, back, front);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpriteImplCopyWith<_$SpriteImpl> get copyWith =>
      __$$SpriteImplCopyWithImpl<_$SpriteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpriteImplToJson(
      this,
    );
  }
}

abstract class _Sprite implements Sprite {
  const factory _Sprite(
      {required final String back, required final String front}) = _$SpriteImpl;

  factory _Sprite.fromJson(Map<String, dynamic> json) = _$SpriteImpl.fromJson;

  @override
  String get back;
  @override
  String get front;
  @override
  @JsonKey(ignore: true)
  _$$SpriteImplCopyWith<_$SpriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
