// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rest_client_base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ApiErrorTearOff {
  const _$ApiErrorTearOff();

  MessageApiError<E> response<E>(
      {E? response, required int code, Exception? exception, Error? error}) {
    return MessageApiError<E>(
      response: response,
      code: code,
      exception: exception,
      error: error,
    );
  }

  TimeoutApiError<E> timeout<E>({Exception? exception, Error? error}) {
    return TimeoutApiError<E>(
      exception: exception,
      error: error,
    );
  }

  ConnectionApiError<E> connection<E>({Exception? exception, Error? error}) {
    return ConnectionApiError<E>(
      exception: exception,
      error: error,
    );
  }

  CancelApiError<E> cancel<E>({Exception? exception, Error? error}) {
    return CancelApiError<E>(
      exception: exception,
      error: error,
    );
  }

  OtherApiError<E> other<E>(String? msg, {Exception? exception, Error? error}) {
    return OtherApiError<E>(
      msg,
      exception: exception,
      error: error,
    );
  }
}

/// @nodoc
const $ApiError = _$ApiErrorTearOff();

/// @nodoc
mixin _$ApiError<E> {
  Exception? get exception => throw _privateConstructorUsedError;
  Error? get error => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            E? response, int code, Exception? exception, Error? error)
        response,
    required TResult Function(Exception? exception, Error? error) timeout,
    required TResult Function(Exception? exception, Error? error) connection,
    required TResult Function(Exception? exception, Error? error) cancel,
    required TResult Function(String? msg, Exception? exception, Error? error)
        other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(E? response, int code, Exception? exception, Error? error)?
        response,
    TResult Function(Exception? exception, Error? error)? timeout,
    TResult Function(Exception? exception, Error? error)? connection,
    TResult Function(Exception? exception, Error? error)? cancel,
    TResult Function(String? msg, Exception? exception, Error? error)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(E? response, int code, Exception? exception, Error? error)?
        response,
    TResult Function(Exception? exception, Error? error)? timeout,
    TResult Function(Exception? exception, Error? error)? connection,
    TResult Function(Exception? exception, Error? error)? cancel,
    TResult Function(String? msg, Exception? exception, Error? error)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageApiError<E> value) response,
    required TResult Function(TimeoutApiError<E> value) timeout,
    required TResult Function(ConnectionApiError<E> value) connection,
    required TResult Function(CancelApiError<E> value) cancel,
    required TResult Function(OtherApiError<E> value) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessageApiError<E> value)? response,
    TResult Function(TimeoutApiError<E> value)? timeout,
    TResult Function(ConnectionApiError<E> value)? connection,
    TResult Function(CancelApiError<E> value)? cancel,
    TResult Function(OtherApiError<E> value)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageApiError<E> value)? response,
    TResult Function(TimeoutApiError<E> value)? timeout,
    TResult Function(ConnectionApiError<E> value)? connection,
    TResult Function(CancelApiError<E> value)? cancel,
    TResult Function(OtherApiError<E> value)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiErrorCopyWith<E, ApiError<E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiErrorCopyWith<E, $Res> {
  factory $ApiErrorCopyWith(
          ApiError<E> value, $Res Function(ApiError<E>) then) =
      _$ApiErrorCopyWithImpl<E, $Res>;
  $Res call({Exception? exception, Error? error});
}

/// @nodoc
class _$ApiErrorCopyWithImpl<E, $Res> implements $ApiErrorCopyWith<E, $Res> {
  _$ApiErrorCopyWithImpl(this._value, this._then);

  final ApiError<E> _value;
  // ignore: unused_field
  final $Res Function(ApiError<E>) _then;

  @override
  $Res call({
    Object? exception = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }
}

/// @nodoc
abstract class $MessageApiErrorCopyWith<E, $Res>
    implements $ApiErrorCopyWith<E, $Res> {
  factory $MessageApiErrorCopyWith(
          MessageApiError<E> value, $Res Function(MessageApiError<E>) then) =
      _$MessageApiErrorCopyWithImpl<E, $Res>;
  @override
  $Res call({E? response, int code, Exception? exception, Error? error});
}

/// @nodoc
class _$MessageApiErrorCopyWithImpl<E, $Res>
    extends _$ApiErrorCopyWithImpl<E, $Res>
    implements $MessageApiErrorCopyWith<E, $Res> {
  _$MessageApiErrorCopyWithImpl(
      MessageApiError<E> _value, $Res Function(MessageApiError<E>) _then)
      : super(_value, (v) => _then(v as MessageApiError<E>));

  @override
  MessageApiError<E> get _value => super._value as MessageApiError<E>;

  @override
  $Res call({
    Object? response = freezed,
    Object? code = freezed,
    Object? exception = freezed,
    Object? error = freezed,
  }) {
    return _then(MessageApiError<E>(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as E?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }
}

/// @nodoc

class _$MessageApiError<E> extends MessageApiError<E> {
  const _$MessageApiError(
      {this.response, required this.code, this.exception, this.error})
      : super._();

  @override
  final E? response;
  @override
  final int code;
  @override
  final Exception? exception;
  @override
  final Error? error;

  @override
  String toString() {
    return 'ApiError<$E>.response(response: $response, code: $code, exception: $exception, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessageApiError<E> &&
            const DeepCollectionEquality().equals(other.response, response) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.exception, exception) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(response),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(exception),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $MessageApiErrorCopyWith<E, MessageApiError<E>> get copyWith =>
      _$MessageApiErrorCopyWithImpl<E, MessageApiError<E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            E? response, int code, Exception? exception, Error? error)
        response,
    required TResult Function(Exception? exception, Error? error) timeout,
    required TResult Function(Exception? exception, Error? error) connection,
    required TResult Function(Exception? exception, Error? error) cancel,
    required TResult Function(String? msg, Exception? exception, Error? error)
        other,
  }) {
    return response(this.response, code, exception, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(E? response, int code, Exception? exception, Error? error)?
        response,
    TResult Function(Exception? exception, Error? error)? timeout,
    TResult Function(Exception? exception, Error? error)? connection,
    TResult Function(Exception? exception, Error? error)? cancel,
    TResult Function(String? msg, Exception? exception, Error? error)? other,
  }) {
    return response?.call(this.response, code, exception, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(E? response, int code, Exception? exception, Error? error)?
        response,
    TResult Function(Exception? exception, Error? error)? timeout,
    TResult Function(Exception? exception, Error? error)? connection,
    TResult Function(Exception? exception, Error? error)? cancel,
    TResult Function(String? msg, Exception? exception, Error? error)? other,
    required TResult orElse(),
  }) {
    if (response != null) {
      return response(this.response, code, exception, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageApiError<E> value) response,
    required TResult Function(TimeoutApiError<E> value) timeout,
    required TResult Function(ConnectionApiError<E> value) connection,
    required TResult Function(CancelApiError<E> value) cancel,
    required TResult Function(OtherApiError<E> value) other,
  }) {
    return response(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessageApiError<E> value)? response,
    TResult Function(TimeoutApiError<E> value)? timeout,
    TResult Function(ConnectionApiError<E> value)? connection,
    TResult Function(CancelApiError<E> value)? cancel,
    TResult Function(OtherApiError<E> value)? other,
  }) {
    return response?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageApiError<E> value)? response,
    TResult Function(TimeoutApiError<E> value)? timeout,
    TResult Function(ConnectionApiError<E> value)? connection,
    TResult Function(CancelApiError<E> value)? cancel,
    TResult Function(OtherApiError<E> value)? other,
    required TResult orElse(),
  }) {
    if (response != null) {
      return response(this);
    }
    return orElse();
  }
}

abstract class MessageApiError<E> extends ApiError<E> {
  const factory MessageApiError(
      {E? response,
      required int code,
      Exception? exception,
      Error? error}) = _$MessageApiError<E>;
  const MessageApiError._() : super._();

  E? get response;
  int get code;
  @override
  Exception? get exception;
  @override
  Error? get error;
  @override
  @JsonKey(ignore: true)
  $MessageApiErrorCopyWith<E, MessageApiError<E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeoutApiErrorCopyWith<E, $Res>
    implements $ApiErrorCopyWith<E, $Res> {
  factory $TimeoutApiErrorCopyWith(
          TimeoutApiError<E> value, $Res Function(TimeoutApiError<E>) then) =
      _$TimeoutApiErrorCopyWithImpl<E, $Res>;
  @override
  $Res call({Exception? exception, Error? error});
}

/// @nodoc
class _$TimeoutApiErrorCopyWithImpl<E, $Res>
    extends _$ApiErrorCopyWithImpl<E, $Res>
    implements $TimeoutApiErrorCopyWith<E, $Res> {
  _$TimeoutApiErrorCopyWithImpl(
      TimeoutApiError<E> _value, $Res Function(TimeoutApiError<E>) _then)
      : super(_value, (v) => _then(v as TimeoutApiError<E>));

  @override
  TimeoutApiError<E> get _value => super._value as TimeoutApiError<E>;

  @override
  $Res call({
    Object? exception = freezed,
    Object? error = freezed,
  }) {
    return _then(TimeoutApiError<E>(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }
}

/// @nodoc

class _$TimeoutApiError<E> extends TimeoutApiError<E> {
  const _$TimeoutApiError({this.exception, this.error}) : super._();

  @override
  final Exception? exception;
  @override
  final Error? error;

  @override
  String toString() {
    return 'ApiError<$E>.timeout(exception: $exception, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TimeoutApiError<E> &&
            const DeepCollectionEquality().equals(other.exception, exception) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(exception),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $TimeoutApiErrorCopyWith<E, TimeoutApiError<E>> get copyWith =>
      _$TimeoutApiErrorCopyWithImpl<E, TimeoutApiError<E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            E? response, int code, Exception? exception, Error? error)
        response,
    required TResult Function(Exception? exception, Error? error) timeout,
    required TResult Function(Exception? exception, Error? error) connection,
    required TResult Function(Exception? exception, Error? error) cancel,
    required TResult Function(String? msg, Exception? exception, Error? error)
        other,
  }) {
    return timeout(exception, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(E? response, int code, Exception? exception, Error? error)?
        response,
    TResult Function(Exception? exception, Error? error)? timeout,
    TResult Function(Exception? exception, Error? error)? connection,
    TResult Function(Exception? exception, Error? error)? cancel,
    TResult Function(String? msg, Exception? exception, Error? error)? other,
  }) {
    return timeout?.call(exception, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(E? response, int code, Exception? exception, Error? error)?
        response,
    TResult Function(Exception? exception, Error? error)? timeout,
    TResult Function(Exception? exception, Error? error)? connection,
    TResult Function(Exception? exception, Error? error)? cancel,
    TResult Function(String? msg, Exception? exception, Error? error)? other,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(exception, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageApiError<E> value) response,
    required TResult Function(TimeoutApiError<E> value) timeout,
    required TResult Function(ConnectionApiError<E> value) connection,
    required TResult Function(CancelApiError<E> value) cancel,
    required TResult Function(OtherApiError<E> value) other,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessageApiError<E> value)? response,
    TResult Function(TimeoutApiError<E> value)? timeout,
    TResult Function(ConnectionApiError<E> value)? connection,
    TResult Function(CancelApiError<E> value)? cancel,
    TResult Function(OtherApiError<E> value)? other,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageApiError<E> value)? response,
    TResult Function(TimeoutApiError<E> value)? timeout,
    TResult Function(ConnectionApiError<E> value)? connection,
    TResult Function(CancelApiError<E> value)? cancel,
    TResult Function(OtherApiError<E> value)? other,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class TimeoutApiError<E> extends ApiError<E> {
  const factory TimeoutApiError({Exception? exception, Error? error}) =
      _$TimeoutApiError<E>;
  const TimeoutApiError._() : super._();

  @override
  Exception? get exception;
  @override
  Error? get error;
  @override
  @JsonKey(ignore: true)
  $TimeoutApiErrorCopyWith<E, TimeoutApiError<E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionApiErrorCopyWith<E, $Res>
    implements $ApiErrorCopyWith<E, $Res> {
  factory $ConnectionApiErrorCopyWith(ConnectionApiError<E> value,
          $Res Function(ConnectionApiError<E>) then) =
      _$ConnectionApiErrorCopyWithImpl<E, $Res>;
  @override
  $Res call({Exception? exception, Error? error});
}

/// @nodoc
class _$ConnectionApiErrorCopyWithImpl<E, $Res>
    extends _$ApiErrorCopyWithImpl<E, $Res>
    implements $ConnectionApiErrorCopyWith<E, $Res> {
  _$ConnectionApiErrorCopyWithImpl(
      ConnectionApiError<E> _value, $Res Function(ConnectionApiError<E>) _then)
      : super(_value, (v) => _then(v as ConnectionApiError<E>));

  @override
  ConnectionApiError<E> get _value => super._value as ConnectionApiError<E>;

  @override
  $Res call({
    Object? exception = freezed,
    Object? error = freezed,
  }) {
    return _then(ConnectionApiError<E>(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }
}

/// @nodoc

class _$ConnectionApiError<E> extends ConnectionApiError<E> {
  const _$ConnectionApiError({this.exception, this.error}) : super._();

  @override
  final Exception? exception;
  @override
  final Error? error;

  @override
  String toString() {
    return 'ApiError<$E>.connection(exception: $exception, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConnectionApiError<E> &&
            const DeepCollectionEquality().equals(other.exception, exception) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(exception),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $ConnectionApiErrorCopyWith<E, ConnectionApiError<E>> get copyWith =>
      _$ConnectionApiErrorCopyWithImpl<E, ConnectionApiError<E>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            E? response, int code, Exception? exception, Error? error)
        response,
    required TResult Function(Exception? exception, Error? error) timeout,
    required TResult Function(Exception? exception, Error? error) connection,
    required TResult Function(Exception? exception, Error? error) cancel,
    required TResult Function(String? msg, Exception? exception, Error? error)
        other,
  }) {
    return connection(exception, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(E? response, int code, Exception? exception, Error? error)?
        response,
    TResult Function(Exception? exception, Error? error)? timeout,
    TResult Function(Exception? exception, Error? error)? connection,
    TResult Function(Exception? exception, Error? error)? cancel,
    TResult Function(String? msg, Exception? exception, Error? error)? other,
  }) {
    return connection?.call(exception, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(E? response, int code, Exception? exception, Error? error)?
        response,
    TResult Function(Exception? exception, Error? error)? timeout,
    TResult Function(Exception? exception, Error? error)? connection,
    TResult Function(Exception? exception, Error? error)? cancel,
    TResult Function(String? msg, Exception? exception, Error? error)? other,
    required TResult orElse(),
  }) {
    if (connection != null) {
      return connection(exception, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageApiError<E> value) response,
    required TResult Function(TimeoutApiError<E> value) timeout,
    required TResult Function(ConnectionApiError<E> value) connection,
    required TResult Function(CancelApiError<E> value) cancel,
    required TResult Function(OtherApiError<E> value) other,
  }) {
    return connection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessageApiError<E> value)? response,
    TResult Function(TimeoutApiError<E> value)? timeout,
    TResult Function(ConnectionApiError<E> value)? connection,
    TResult Function(CancelApiError<E> value)? cancel,
    TResult Function(OtherApiError<E> value)? other,
  }) {
    return connection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageApiError<E> value)? response,
    TResult Function(TimeoutApiError<E> value)? timeout,
    TResult Function(ConnectionApiError<E> value)? connection,
    TResult Function(CancelApiError<E> value)? cancel,
    TResult Function(OtherApiError<E> value)? other,
    required TResult orElse(),
  }) {
    if (connection != null) {
      return connection(this);
    }
    return orElse();
  }
}

abstract class ConnectionApiError<E> extends ApiError<E> {
  const factory ConnectionApiError({Exception? exception, Error? error}) =
      _$ConnectionApiError<E>;
  const ConnectionApiError._() : super._();

  @override
  Exception? get exception;
  @override
  Error? get error;
  @override
  @JsonKey(ignore: true)
  $ConnectionApiErrorCopyWith<E, ConnectionApiError<E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelApiErrorCopyWith<E, $Res>
    implements $ApiErrorCopyWith<E, $Res> {
  factory $CancelApiErrorCopyWith(
          CancelApiError<E> value, $Res Function(CancelApiError<E>) then) =
      _$CancelApiErrorCopyWithImpl<E, $Res>;
  @override
  $Res call({Exception? exception, Error? error});
}

/// @nodoc
class _$CancelApiErrorCopyWithImpl<E, $Res>
    extends _$ApiErrorCopyWithImpl<E, $Res>
    implements $CancelApiErrorCopyWith<E, $Res> {
  _$CancelApiErrorCopyWithImpl(
      CancelApiError<E> _value, $Res Function(CancelApiError<E>) _then)
      : super(_value, (v) => _then(v as CancelApiError<E>));

  @override
  CancelApiError<E> get _value => super._value as CancelApiError<E>;

  @override
  $Res call({
    Object? exception = freezed,
    Object? error = freezed,
  }) {
    return _then(CancelApiError<E>(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }
}

/// @nodoc

class _$CancelApiError<E> extends CancelApiError<E> {
  const _$CancelApiError({this.exception, this.error}) : super._();

  @override
  final Exception? exception;
  @override
  final Error? error;

  @override
  String toString() {
    return 'ApiError<$E>.cancel(exception: $exception, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CancelApiError<E> &&
            const DeepCollectionEquality().equals(other.exception, exception) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(exception),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $CancelApiErrorCopyWith<E, CancelApiError<E>> get copyWith =>
      _$CancelApiErrorCopyWithImpl<E, CancelApiError<E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            E? response, int code, Exception? exception, Error? error)
        response,
    required TResult Function(Exception? exception, Error? error) timeout,
    required TResult Function(Exception? exception, Error? error) connection,
    required TResult Function(Exception? exception, Error? error) cancel,
    required TResult Function(String? msg, Exception? exception, Error? error)
        other,
  }) {
    return cancel(exception, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(E? response, int code, Exception? exception, Error? error)?
        response,
    TResult Function(Exception? exception, Error? error)? timeout,
    TResult Function(Exception? exception, Error? error)? connection,
    TResult Function(Exception? exception, Error? error)? cancel,
    TResult Function(String? msg, Exception? exception, Error? error)? other,
  }) {
    return cancel?.call(exception, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(E? response, int code, Exception? exception, Error? error)?
        response,
    TResult Function(Exception? exception, Error? error)? timeout,
    TResult Function(Exception? exception, Error? error)? connection,
    TResult Function(Exception? exception, Error? error)? cancel,
    TResult Function(String? msg, Exception? exception, Error? error)? other,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(exception, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageApiError<E> value) response,
    required TResult Function(TimeoutApiError<E> value) timeout,
    required TResult Function(ConnectionApiError<E> value) connection,
    required TResult Function(CancelApiError<E> value) cancel,
    required TResult Function(OtherApiError<E> value) other,
  }) {
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessageApiError<E> value)? response,
    TResult Function(TimeoutApiError<E> value)? timeout,
    TResult Function(ConnectionApiError<E> value)? connection,
    TResult Function(CancelApiError<E> value)? cancel,
    TResult Function(OtherApiError<E> value)? other,
  }) {
    return cancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageApiError<E> value)? response,
    TResult Function(TimeoutApiError<E> value)? timeout,
    TResult Function(ConnectionApiError<E> value)? connection,
    TResult Function(CancelApiError<E> value)? cancel,
    TResult Function(OtherApiError<E> value)? other,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(this);
    }
    return orElse();
  }
}

abstract class CancelApiError<E> extends ApiError<E> {
  const factory CancelApiError({Exception? exception, Error? error}) =
      _$CancelApiError<E>;
  const CancelApiError._() : super._();

  @override
  Exception? get exception;
  @override
  Error? get error;
  @override
  @JsonKey(ignore: true)
  $CancelApiErrorCopyWith<E, CancelApiError<E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherApiErrorCopyWith<E, $Res>
    implements $ApiErrorCopyWith<E, $Res> {
  factory $OtherApiErrorCopyWith(
          OtherApiError<E> value, $Res Function(OtherApiError<E>) then) =
      _$OtherApiErrorCopyWithImpl<E, $Res>;
  @override
  $Res call({String? msg, Exception? exception, Error? error});
}

/// @nodoc
class _$OtherApiErrorCopyWithImpl<E, $Res>
    extends _$ApiErrorCopyWithImpl<E, $Res>
    implements $OtherApiErrorCopyWith<E, $Res> {
  _$OtherApiErrorCopyWithImpl(
      OtherApiError<E> _value, $Res Function(OtherApiError<E>) _then)
      : super(_value, (v) => _then(v as OtherApiError<E>));

  @override
  OtherApiError<E> get _value => super._value as OtherApiError<E>;

  @override
  $Res call({
    Object? msg = freezed,
    Object? exception = freezed,
    Object? error = freezed,
  }) {
    return _then(OtherApiError<E>(
      msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }
}

/// @nodoc

class _$OtherApiError<E> extends OtherApiError<E> {
  const _$OtherApiError(this.msg, {this.exception, this.error}) : super._();

  @override
  final String? msg;
  @override
  final Exception? exception;
  @override
  final Error? error;

  @override
  String toString() {
    return 'ApiError<$E>.other(msg: $msg, exception: $exception, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OtherApiError<E> &&
            const DeepCollectionEquality().equals(other.msg, msg) &&
            const DeepCollectionEquality().equals(other.exception, exception) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(msg),
      const DeepCollectionEquality().hash(exception),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $OtherApiErrorCopyWith<E, OtherApiError<E>> get copyWith =>
      _$OtherApiErrorCopyWithImpl<E, OtherApiError<E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            E? response, int code, Exception? exception, Error? error)
        response,
    required TResult Function(Exception? exception, Error? error) timeout,
    required TResult Function(Exception? exception, Error? error) connection,
    required TResult Function(Exception? exception, Error? error) cancel,
    required TResult Function(String? msg, Exception? exception, Error? error)
        other,
  }) {
    return other(msg, exception, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(E? response, int code, Exception? exception, Error? error)?
        response,
    TResult Function(Exception? exception, Error? error)? timeout,
    TResult Function(Exception? exception, Error? error)? connection,
    TResult Function(Exception? exception, Error? error)? cancel,
    TResult Function(String? msg, Exception? exception, Error? error)? other,
  }) {
    return other?.call(msg, exception, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(E? response, int code, Exception? exception, Error? error)?
        response,
    TResult Function(Exception? exception, Error? error)? timeout,
    TResult Function(Exception? exception, Error? error)? connection,
    TResult Function(Exception? exception, Error? error)? cancel,
    TResult Function(String? msg, Exception? exception, Error? error)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(msg, exception, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageApiError<E> value) response,
    required TResult Function(TimeoutApiError<E> value) timeout,
    required TResult Function(ConnectionApiError<E> value) connection,
    required TResult Function(CancelApiError<E> value) cancel,
    required TResult Function(OtherApiError<E> value) other,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessageApiError<E> value)? response,
    TResult Function(TimeoutApiError<E> value)? timeout,
    TResult Function(ConnectionApiError<E> value)? connection,
    TResult Function(CancelApiError<E> value)? cancel,
    TResult Function(OtherApiError<E> value)? other,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageApiError<E> value)? response,
    TResult Function(TimeoutApiError<E> value)? timeout,
    TResult Function(ConnectionApiError<E> value)? connection,
    TResult Function(CancelApiError<E> value)? cancel,
    TResult Function(OtherApiError<E> value)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }
}

abstract class OtherApiError<E> extends ApiError<E> {
  const factory OtherApiError(String? msg,
      {Exception? exception, Error? error}) = _$OtherApiError<E>;
  const OtherApiError._() : super._();

  String? get msg;
  @override
  Exception? get exception;
  @override
  Error? get error;
  @override
  @JsonKey(ignore: true)
  $OtherApiErrorCopyWith<E, OtherApiError<E>> get copyWith =>
      throw _privateConstructorUsedError;
}
