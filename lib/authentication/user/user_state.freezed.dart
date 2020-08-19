// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserStateTearOff {
  const _$UserStateTearOff();

// ignore: unused_element
  InitialUserState initial() {
    return const InitialUserState();
  }

// ignore: unused_element
  LoggedInUserState loggedIn(UserInfo userInfo) {
    return LoggedInUserState(
      userInfo,
    );
  }

// ignore: unused_element
  NotLoggedInUserState notLoggedIn() {
    return const NotLoggedInUserState();
  }
}

// ignore: unused_element
const $UserState = _$UserStateTearOff();

mixin _$UserState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loggedIn(UserInfo userInfo),
    @required Result notLoggedIn(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loggedIn(UserInfo userInfo),
    Result notLoggedIn(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(InitialUserState value),
    @required Result loggedIn(LoggedInUserState value),
    @required Result notLoggedIn(NotLoggedInUserState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(InitialUserState value),
    Result loggedIn(LoggedInUserState value),
    Result notLoggedIn(NotLoggedInUserState value),
    @required Result orElse(),
  });
}

abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

abstract class $InitialUserStateCopyWith<$Res> {
  factory $InitialUserStateCopyWith(
          InitialUserState value, $Res Function(InitialUserState) then) =
      _$InitialUserStateCopyWithImpl<$Res>;
}

class _$InitialUserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $InitialUserStateCopyWith<$Res> {
  _$InitialUserStateCopyWithImpl(
      InitialUserState _value, $Res Function(InitialUserState) _then)
      : super(_value, (v) => _then(v as InitialUserState));

  @override
  InitialUserState get _value => super._value as InitialUserState;
}

class _$InitialUserState implements InitialUserState {
  const _$InitialUserState();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loggedIn(UserInfo userInfo),
    @required Result notLoggedIn(),
  }) {
    assert(initial != null);
    assert(loggedIn != null);
    assert(notLoggedIn != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loggedIn(UserInfo userInfo),
    Result notLoggedIn(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(InitialUserState value),
    @required Result loggedIn(LoggedInUserState value),
    @required Result notLoggedIn(NotLoggedInUserState value),
  }) {
    assert(initial != null);
    assert(loggedIn != null);
    assert(notLoggedIn != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(InitialUserState value),
    Result loggedIn(LoggedInUserState value),
    Result notLoggedIn(NotLoggedInUserState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialUserState implements UserState {
  const factory InitialUserState() = _$InitialUserState;
}

abstract class $LoggedInUserStateCopyWith<$Res> {
  factory $LoggedInUserStateCopyWith(
          LoggedInUserState value, $Res Function(LoggedInUserState) then) =
      _$LoggedInUserStateCopyWithImpl<$Res>;
  $Res call({UserInfo userInfo});
}

class _$LoggedInUserStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements $LoggedInUserStateCopyWith<$Res> {
  _$LoggedInUserStateCopyWithImpl(
      LoggedInUserState _value, $Res Function(LoggedInUserState) _then)
      : super(_value, (v) => _then(v as LoggedInUserState));

  @override
  LoggedInUserState get _value => super._value as LoggedInUserState;

  @override
  $Res call({
    Object userInfo = freezed,
  }) {
    return _then(LoggedInUserState(
      userInfo == freezed ? _value.userInfo : userInfo as UserInfo,
    ));
  }
}

class _$LoggedInUserState implements LoggedInUserState {
  const _$LoggedInUserState(this.userInfo) : assert(userInfo != null);

  @override
  final UserInfo userInfo;

  @override
  String toString() {
    return 'UserState.loggedIn(userInfo: $userInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoggedInUserState &&
            (identical(other.userInfo, userInfo) ||
                const DeepCollectionEquality()
                    .equals(other.userInfo, userInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userInfo);

  @override
  $LoggedInUserStateCopyWith<LoggedInUserState> get copyWith =>
      _$LoggedInUserStateCopyWithImpl<LoggedInUserState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loggedIn(UserInfo userInfo),
    @required Result notLoggedIn(),
  }) {
    assert(initial != null);
    assert(loggedIn != null);
    assert(notLoggedIn != null);
    return loggedIn(userInfo);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loggedIn(UserInfo userInfo),
    Result notLoggedIn(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedIn != null) {
      return loggedIn(userInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(InitialUserState value),
    @required Result loggedIn(LoggedInUserState value),
    @required Result notLoggedIn(NotLoggedInUserState value),
  }) {
    assert(initial != null);
    assert(loggedIn != null);
    assert(notLoggedIn != null);
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(InitialUserState value),
    Result loggedIn(LoggedInUserState value),
    Result notLoggedIn(NotLoggedInUserState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class LoggedInUserState implements UserState {
  const factory LoggedInUserState(UserInfo userInfo) = _$LoggedInUserState;

  UserInfo get userInfo;
  $LoggedInUserStateCopyWith<LoggedInUserState> get copyWith;
}

abstract class $NotLoggedInUserStateCopyWith<$Res> {
  factory $NotLoggedInUserStateCopyWith(NotLoggedInUserState value,
          $Res Function(NotLoggedInUserState) then) =
      _$NotLoggedInUserStateCopyWithImpl<$Res>;
}

class _$NotLoggedInUserStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements $NotLoggedInUserStateCopyWith<$Res> {
  _$NotLoggedInUserStateCopyWithImpl(
      NotLoggedInUserState _value, $Res Function(NotLoggedInUserState) _then)
      : super(_value, (v) => _then(v as NotLoggedInUserState));

  @override
  NotLoggedInUserState get _value => super._value as NotLoggedInUserState;
}

class _$NotLoggedInUserState implements NotLoggedInUserState {
  const _$NotLoggedInUserState();

  @override
  String toString() {
    return 'UserState.notLoggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotLoggedInUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loggedIn(UserInfo userInfo),
    @required Result notLoggedIn(),
  }) {
    assert(initial != null);
    assert(loggedIn != null);
    assert(notLoggedIn != null);
    return notLoggedIn();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loggedIn(UserInfo userInfo),
    Result notLoggedIn(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notLoggedIn != null) {
      return notLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(InitialUserState value),
    @required Result loggedIn(LoggedInUserState value),
    @required Result notLoggedIn(NotLoggedInUserState value),
  }) {
    assert(initial != null);
    assert(loggedIn != null);
    assert(notLoggedIn != null);
    return notLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(InitialUserState value),
    Result loggedIn(LoggedInUserState value),
    Result notLoggedIn(NotLoggedInUserState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notLoggedIn != null) {
      return notLoggedIn(this);
    }
    return orElse();
  }
}

abstract class NotLoggedInUserState implements UserState {
  const factory NotLoggedInUserState() = _$NotLoggedInUserState;
}
