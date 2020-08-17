// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginStateTearOff {
  const _$LoginStateTearOff();

// ignore: unused_element
  RequestingCode requestingCode() {
    return const RequestingCode();
  }

// ignore: unused_element
  RequestingToken requestingToken() {
    return const RequestingToken();
  }

// ignore: unused_element
  LoginError error({String message}) {
    return LoginError(
      message: message,
    );
  }

// ignore: unused_element
  LoginDone done() {
    return const LoginDone();
  }
}

// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

mixin _$LoginState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result requestingCode(),
    @required Result requestingToken(),
    @required Result error(String message),
    @required Result done(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result requestingCode(),
    Result requestingToken(),
    Result error(String message),
    Result done(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result requestingCode(RequestingCode value),
    @required Result requestingToken(RequestingToken value),
    @required Result error(LoginError value),
    @required Result done(LoginDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result requestingCode(RequestingCode value),
    Result requestingToken(RequestingToken value),
    Result error(LoginError value),
    Result done(LoginDone value),
    @required Result orElse(),
  });
}

abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

abstract class $RequestingCodeCopyWith<$Res> {
  factory $RequestingCodeCopyWith(
          RequestingCode value, $Res Function(RequestingCode) then) =
      _$RequestingCodeCopyWithImpl<$Res>;
}

class _$RequestingCodeCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $RequestingCodeCopyWith<$Res> {
  _$RequestingCodeCopyWithImpl(
      RequestingCode _value, $Res Function(RequestingCode) _then)
      : super(_value, (v) => _then(v as RequestingCode));

  @override
  RequestingCode get _value => super._value as RequestingCode;
}

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
  Result when<Result extends Object>({
    @required Result requestingCode(),
    @required Result requestingToken(),
    @required Result error(String message),
    @required Result done(),
  }) {
    assert(requestingCode != null);
    assert(requestingToken != null);
    assert(error != null);
    assert(done != null);
    return requestingCode();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result requestingCode(),
    Result requestingToken(),
    Result error(String message),
    Result done(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (requestingCode != null) {
      return requestingCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result requestingCode(RequestingCode value),
    @required Result requestingToken(RequestingToken value),
    @required Result error(LoginError value),
    @required Result done(LoginDone value),
  }) {
    assert(requestingCode != null);
    assert(requestingToken != null);
    assert(error != null);
    assert(done != null);
    return requestingCode(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result requestingCode(RequestingCode value),
    Result requestingToken(RequestingToken value),
    Result error(LoginError value),
    Result done(LoginDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (requestingCode != null) {
      return requestingCode(this);
    }
    return orElse();
  }
}

abstract class RequestingCode implements LoginState {
  const factory RequestingCode() = _$RequestingCode;
}

abstract class $RequestingTokenCopyWith<$Res> {
  factory $RequestingTokenCopyWith(
          RequestingToken value, $Res Function(RequestingToken) then) =
      _$RequestingTokenCopyWithImpl<$Res>;
}

class _$RequestingTokenCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $RequestingTokenCopyWith<$Res> {
  _$RequestingTokenCopyWithImpl(
      RequestingToken _value, $Res Function(RequestingToken) _then)
      : super(_value, (v) => _then(v as RequestingToken));

  @override
  RequestingToken get _value => super._value as RequestingToken;
}

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
  Result when<Result extends Object>({
    @required Result requestingCode(),
    @required Result requestingToken(),
    @required Result error(String message),
    @required Result done(),
  }) {
    assert(requestingCode != null);
    assert(requestingToken != null);
    assert(error != null);
    assert(done != null);
    return requestingToken();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result requestingCode(),
    Result requestingToken(),
    Result error(String message),
    Result done(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (requestingToken != null) {
      return requestingToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result requestingCode(RequestingCode value),
    @required Result requestingToken(RequestingToken value),
    @required Result error(LoginError value),
    @required Result done(LoginDone value),
  }) {
    assert(requestingCode != null);
    assert(requestingToken != null);
    assert(error != null);
    assert(done != null);
    return requestingToken(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result requestingCode(RequestingCode value),
    Result requestingToken(RequestingToken value),
    Result error(LoginError value),
    Result done(LoginDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (requestingToken != null) {
      return requestingToken(this);
    }
    return orElse();
  }
}

abstract class RequestingToken implements LoginState {
  const factory RequestingToken() = _$RequestingToken;
}

abstract class $LoginErrorCopyWith<$Res> {
  factory $LoginErrorCopyWith(
          LoginError value, $Res Function(LoginError) then) =
      _$LoginErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$LoginErrorCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginErrorCopyWith<$Res> {
  _$LoginErrorCopyWithImpl(LoginError _value, $Res Function(LoginError) _then)
      : super(_value, (v) => _then(v as LoginError));

  @override
  LoginError get _value => super._value as LoginError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(LoginError(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$LoginError implements LoginError {
  const _$LoginError({this.message});

  @override
  final String message;

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

  @override
  $LoginErrorCopyWith<LoginError> get copyWith =>
      _$LoginErrorCopyWithImpl<LoginError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result requestingCode(),
    @required Result requestingToken(),
    @required Result error(String message),
    @required Result done(),
  }) {
    assert(requestingCode != null);
    assert(requestingToken != null);
    assert(error != null);
    assert(done != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result requestingCode(),
    Result requestingToken(),
    Result error(String message),
    Result done(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result requestingCode(RequestingCode value),
    @required Result requestingToken(RequestingToken value),
    @required Result error(LoginError value),
    @required Result done(LoginDone value),
  }) {
    assert(requestingCode != null);
    assert(requestingToken != null);
    assert(error != null);
    assert(done != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result requestingCode(RequestingCode value),
    Result requestingToken(RequestingToken value),
    Result error(LoginError value),
    Result done(LoginDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginError implements LoginState {
  const factory LoginError({String message}) = _$LoginError;

  String get message;
  $LoginErrorCopyWith<LoginError> get copyWith;
}

abstract class $LoginDoneCopyWith<$Res> {
  factory $LoginDoneCopyWith(LoginDone value, $Res Function(LoginDone) then) =
      _$LoginDoneCopyWithImpl<$Res>;
}

class _$LoginDoneCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginDoneCopyWith<$Res> {
  _$LoginDoneCopyWithImpl(LoginDone _value, $Res Function(LoginDone) _then)
      : super(_value, (v) => _then(v as LoginDone));

  @override
  LoginDone get _value => super._value as LoginDone;
}

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
  Result when<Result extends Object>({
    @required Result requestingCode(),
    @required Result requestingToken(),
    @required Result error(String message),
    @required Result done(),
  }) {
    assert(requestingCode != null);
    assert(requestingToken != null);
    assert(error != null);
    assert(done != null);
    return done();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result requestingCode(),
    Result requestingToken(),
    Result error(String message),
    Result done(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result requestingCode(RequestingCode value),
    @required Result requestingToken(RequestingToken value),
    @required Result error(LoginError value),
    @required Result done(LoginDone value),
  }) {
    assert(requestingCode != null);
    assert(requestingToken != null);
    assert(error != null);
    assert(done != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result requestingCode(RequestingCode value),
    Result requestingToken(RequestingToken value),
    Result error(LoginError value),
    Result done(LoginDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class LoginDone implements LoginState {
  const factory LoginDone() = _$LoginDone;
}
