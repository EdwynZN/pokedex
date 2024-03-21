// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ItemFailure {
  String get message => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemFailureCopyWith<ItemFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemFailureCopyWith<$Res> {
  factory $ItemFailureCopyWith(
          ItemFailure value, $Res Function(ItemFailure) then) =
      _$ItemFailureCopyWithImpl<$Res, ItemFailure>;
  @useResult
  $Res call({String message, String name});
}

/// @nodoc
class _$ItemFailureCopyWithImpl<$Res, $Val extends ItemFailure>
    implements $ItemFailureCopyWith<$Res> {
  _$ItemFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemFailureImplCopyWith<$Res>
    implements $ItemFailureCopyWith<$Res> {
  factory _$$ItemFailureImplCopyWith(
          _$ItemFailureImpl value, $Res Function(_$ItemFailureImpl) then) =
      __$$ItemFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String name});
}

/// @nodoc
class __$$ItemFailureImplCopyWithImpl<$Res>
    extends _$ItemFailureCopyWithImpl<$Res, _$ItemFailureImpl>
    implements _$$ItemFailureImplCopyWith<$Res> {
  __$$ItemFailureImplCopyWithImpl(
      _$ItemFailureImpl _value, $Res Function(_$ItemFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? name = null,
  }) {
    return _then(_$ItemFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ItemFailureImpl implements _ItemFailure {
  const _$ItemFailureImpl({required this.message, required this.name});

  @override
  final String message;
  @override
  final String name;

  @override
  String toString() {
    return 'ItemFailure(message: $message, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemFailureImplCopyWith<_$ItemFailureImpl> get copyWith =>
      __$$ItemFailureImplCopyWithImpl<_$ItemFailureImpl>(this, _$identity);
}

abstract class _ItemFailure implements ItemFailure {
  const factory _ItemFailure(
      {required final String message,
      required final String name}) = _$ItemFailureImpl;

  @override
  String get message;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ItemFailureImplCopyWith<_$ItemFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UnknownFailure {
  Object get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnknownFailureCopyWith<UnknownFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnknownFailureCopyWith<$Res> {
  factory $UnknownFailureCopyWith(
          UnknownFailure value, $Res Function(UnknownFailure) then) =
      _$UnknownFailureCopyWithImpl<$Res, UnknownFailure>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class _$UnknownFailureCopyWithImpl<$Res, $Val extends UnknownFailure>
    implements $UnknownFailureCopyWith<$Res> {
  _$UnknownFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnknownFailureImplCopyWith<$Res>
    implements $UnknownFailureCopyWith<$Res> {
  factory _$$UnknownFailureImplCopyWith(_$UnknownFailureImpl value,
          $Res Function(_$UnknownFailureImpl) then) =
      __$$UnknownFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$UnknownFailureImplCopyWithImpl<$Res>
    extends _$UnknownFailureCopyWithImpl<$Res, _$UnknownFailureImpl>
    implements _$$UnknownFailureImplCopyWith<$Res> {
  __$$UnknownFailureImplCopyWithImpl(
      _$UnknownFailureImpl _value, $Res Function(_$UnknownFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$UnknownFailureImpl(
      error: null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$UnknownFailureImpl implements _UnknownFailure {
  const _$UnknownFailureImpl({required this.error});

  @override
  final Object error;

  @override
  String toString() {
    return 'UnknownFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownFailureImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      __$$UnknownFailureImplCopyWithImpl<_$UnknownFailureImpl>(
          this, _$identity);
}

abstract class _UnknownFailure implements UnknownFailure {
  const factory _UnknownFailure({required final Object error}) =
      _$UnknownFailureImpl;

  @override
  Object get error;
  @override
  @JsonKey(ignore: true)
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NetworkFailure {
  String get message => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int statusCode) request,
    required TResult Function(String message, int statusCode) server,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int statusCode)? request,
    TResult? Function(String message, int statusCode)? server,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int statusCode)? request,
    TResult Function(String message, int statusCode)? server,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkRequestFailure value) request,
    required TResult Function(ServerFailure value) server,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkRequestFailure value)? request,
    TResult? Function(ServerFailure value)? server,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkRequestFailure value)? request,
    TResult Function(ServerFailure value)? server,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkFailureCopyWith<NetworkFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res, NetworkFailure>;
  @useResult
  $Res call({String message, int statusCode});
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res, $Val extends NetworkFailure>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NetworkRequestFailureImplCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$NetworkRequestFailureImplCopyWith(
          _$NetworkRequestFailureImpl value,
          $Res Function(_$NetworkRequestFailureImpl) then) =
      __$$NetworkRequestFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int statusCode});
}

/// @nodoc
class __$$NetworkRequestFailureImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$NetworkRequestFailureImpl>
    implements _$$NetworkRequestFailureImplCopyWith<$Res> {
  __$$NetworkRequestFailureImplCopyWithImpl(_$NetworkRequestFailureImpl _value,
      $Res Function(_$NetworkRequestFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$NetworkRequestFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NetworkRequestFailureImpl implements NetworkRequestFailure {
  const _$NetworkRequestFailureImpl(
      {required this.message, required this.statusCode});

  @override
  final String message;
  @override
  final int statusCode;

  @override
  String toString() {
    return 'NetworkFailure.request(message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkRequestFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkRequestFailureImplCopyWith<_$NetworkRequestFailureImpl>
      get copyWith => __$$NetworkRequestFailureImplCopyWithImpl<
          _$NetworkRequestFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int statusCode) request,
    required TResult Function(String message, int statusCode) server,
  }) {
    return request(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int statusCode)? request,
    TResult? Function(String message, int statusCode)? server,
  }) {
    return request?.call(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int statusCode)? request,
    TResult Function(String message, int statusCode)? server,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(message, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkRequestFailure value) request,
    required TResult Function(ServerFailure value) server,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkRequestFailure value)? request,
    TResult? Function(ServerFailure value)? server,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkRequestFailure value)? request,
    TResult Function(ServerFailure value)? server,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }
}

abstract class NetworkRequestFailure implements NetworkFailure {
  const factory NetworkRequestFailure(
      {required final String message,
      required final int statusCode}) = _$NetworkRequestFailureImpl;

  @override
  String get message;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$NetworkRequestFailureImplCopyWith<_$NetworkRequestFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int statusCode});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$ServerFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl implements ServerFailure {
  const _$ServerFailureImpl({required this.message, required this.statusCode});

  @override
  final String message;
  @override
  final int statusCode;

  @override
  String toString() {
    return 'NetworkFailure.server(message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int statusCode) request,
    required TResult Function(String message, int statusCode) server,
  }) {
    return server(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int statusCode)? request,
    TResult? Function(String message, int statusCode)? server,
  }) {
    return server?.call(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int statusCode)? request,
    TResult Function(String message, int statusCode)? server,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkRequestFailure value) request,
    required TResult Function(ServerFailure value) server,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkRequestFailure value)? request,
    TResult? Function(ServerFailure value)? server,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkRequestFailure value)? request,
    TResult Function(ServerFailure value)? server,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements NetworkFailure {
  const factory ServerFailure(
      {required final String message,
      required final int statusCode}) = _$ServerFailureImpl;

  @override
  String get message;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
