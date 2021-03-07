// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  RequestingCode requestingCode() {
    return const RequestingCode();
  }

  RequestingToken requestingToken() {
    return const RequestingToken();
  }

  LoginError error({String? message}) {
    return LoginError(
      message: message,
    );
  }

  LoginDone done() {
    return const LoginDone();
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestingCode,
    required TResult Function() requestingToken,
    required TResult Function(String? message) error,
    required TResult Function() done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestingCode,
    TResult Function()? requestingToken,
    TResult Function(String? message)? error,
    TResult Function()? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestingCode value) requestingCode,
    required TResult Function(RequestingToken value) requestingToken,
    required TResult Function(LoginError value) error,
    required TResult Function(LoginDone value) done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestingCode value)? requestingCode,
    TResult Function(RequestingToken value)? requestingToken,
    TResult Function(LoginError value)? error,
    TResult Function(LoginDone value)? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class $RequestingCodeCopyWith<$Res> {
  factory $RequestingCodeCopyWith(
          RequestingCode value, $Res Function(RequestingCode) then) =
      _$RequestingCodeCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestingCodeCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $RequestingCodeCopyWith<$Res> {
  _$RequestingCodeCopyWithImpl(
      RequestingCode _value, $Res Function(RequestingCode) _then)
      : super(_value, (v) => _then(v as RequestingCode));

  @override
  RequestingCode get _value => super._value as RequestingCode;
}

/// @nodoc
class _$RequestingCode implements RequestingCode {
  const _$RequestingCode();

  @override
  String toString() {
    return 'LoginState.requestingCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RequestingCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestingCode,
    required TResult Function() requestingToken,
    required TResult Function(String? message) error,
    required TResult Function() done,
  }) {
    return requestingCode();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestingCode,
    TResult Function()? requestingToken,
    TResult Function(String? message)? error,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (requestingCode != null) {
      return requestingCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestingCode value) requestingCode,
    required TResult Function(RequestingToken value) requestingToken,
    required TResult Function(LoginError value) error,
    required TResult Function(LoginDone value) done,
  }) {
    return requestingCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestingCode value)? requestingCode,
    TResult Function(RequestingToken value)? requestingToken,
    TResult Function(LoginError value)? error,
    TResult Function(LoginDone value)? done,
    required TResult orElse(),
  }) {
    if (requestingCode != null) {
      return requestingCode(this);
    }
    return orElse();
  }
}

abstract class RequestingCode implements LoginState {
  const factory RequestingCode() = _$RequestingCode;
}

/// @nodoc
abstract class $RequestingTokenCopyWith<$Res> {
  factory $RequestingTokenCopyWith(
          RequestingToken value, $Res Function(RequestingToken) then) =
      _$RequestingTokenCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestingTokenCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $RequestingTokenCopyWith<$Res> {
  _$RequestingTokenCopyWithImpl(
      RequestingToken _value, $Res Function(RequestingToken) _then)
      : super(_value, (v) => _then(v as RequestingToken));

  @override
  RequestingToken get _value => super._value as RequestingToken;
}

/// @nodoc
class _$RequestingToken implements RequestingToken {
  const _$RequestingToken();

  @override
  String toString() {
    return 'LoginState.requestingToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RequestingToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestingCode,
    required TResult Function() requestingToken,
    required TResult Function(String? message) error,
    required TResult Function() done,
  }) {
    return requestingToken();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestingCode,
    TResult Function()? requestingToken,
    TResult Function(String? message)? error,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (requestingToken != null) {
      return requestingToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestingCode value) requestingCode,
    required TResult Function(RequestingToken value) requestingToken,
    required TResult Function(LoginError value) error,
    required TResult Function(LoginDone value) done,
  }) {
    return requestingToken(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestingCode value)? requestingCode,
    TResult Function(RequestingToken value)? requestingToken,
    TResult Function(LoginError value)? error,
    TResult Function(LoginDone value)? done,
    required TResult orElse(),
  }) {
    if (requestingToken != null) {
      return requestingToken(this);
    }
    return orElse();
  }
}

abstract class RequestingToken implements LoginState {
  const factory RequestingToken() = _$RequestingToken;
}

/// @nodoc
abstract class $LoginErrorCopyWith<$Res> {
  factory $LoginErrorCopyWith(
          LoginError value, $Res Function(LoginError) then) =
      _$LoginErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$LoginErrorCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginErrorCopyWith<$Res> {
  _$LoginErrorCopyWithImpl(LoginError _value, $Res Function(LoginError) _then)
      : super(_value, (v) => _then(v as LoginError));

  @override
  LoginError get _value => super._value as LoginError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(LoginError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$LoginError implements LoginError {
  const _$LoginError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'LoginState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $LoginErrorCopyWith<LoginError> get copyWith =>
      _$LoginErrorCopyWithImpl<LoginError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestingCode,
    required TResult Function() requestingToken,
    required TResult Function(String? message) error,
    required TResult Function() done,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestingCode,
    TResult Function()? requestingToken,
    TResult Function(String? message)? error,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestingCode value) requestingCode,
    required TResult Function(RequestingToken value) requestingToken,
    required TResult Function(LoginError value) error,
    required TResult Function(LoginDone value) done,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestingCode value)? requestingCode,
    TResult Function(RequestingToken value)? requestingToken,
    TResult Function(LoginError value)? error,
    TResult Function(LoginDone value)? done,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginError implements LoginState {
  const factory LoginError({String? message}) = _$LoginError;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginErrorCopyWith<LoginError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDoneCopyWith<$Res> {
  factory $LoginDoneCopyWith(LoginDone value, $Res Function(LoginDone) then) =
      _$LoginDoneCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginDoneCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginDoneCopyWith<$Res> {
  _$LoginDoneCopyWithImpl(LoginDone _value, $Res Function(LoginDone) _then)
      : super(_value, (v) => _then(v as LoginDone));

  @override
  LoginDone get _value => super._value as LoginDone;
}

/// @nodoc
class _$LoginDone implements LoginDone {
  const _$LoginDone();

  @override
  String toString() {
    return 'LoginState.done()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestingCode,
    required TResult Function() requestingToken,
    required TResult Function(String? message) error,
    required TResult Function() done,
  }) {
    return done();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestingCode,
    TResult Function()? requestingToken,
    TResult Function(String? message)? error,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestingCode value) requestingCode,
    required TResult Function(RequestingToken value) requestingToken,
    required TResult Function(LoginError value) error,
    required TResult Function(LoginDone value) done,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestingCode value)? requestingCode,
    TResult Function(RequestingToken value)? requestingToken,
    TResult Function(LoginError value)? error,
    TResult Function(LoginDone value)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class LoginDone implements LoginState {
  const factory LoginDone() = _$LoginDone;
}
