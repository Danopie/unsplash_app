// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  InitialUserState initial() {
    return const InitialUserState();
  }

  LoggedInUserState loggedIn({UserToken? token, UserProfile? profile}) {
    return LoggedInUserState(
      token: token,
      profile: profile,
    );
  }

  NotLoggedInUserState notLoggedIn() {
    return const NotLoggedInUserState();
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserToken? token, UserProfile? profile) loggedIn,
    required TResult Function() notLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserToken? token, UserProfile? profile)? loggedIn,
    TResult Function()? notLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialUserState value) initial,
    required TResult Function(LoggedInUserState value) loggedIn,
    required TResult Function(NotLoggedInUserState value) notLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUserState value)? initial,
    TResult Function(LoggedInUserState value)? loggedIn,
    TResult Function(NotLoggedInUserState value)? notLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class $InitialUserStateCopyWith<$Res> {
  factory $InitialUserStateCopyWith(
          InitialUserState value, $Res Function(InitialUserState) then) =
      _$InitialUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialUserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $InitialUserStateCopyWith<$Res> {
  _$InitialUserStateCopyWithImpl(
      InitialUserState _value, $Res Function(InitialUserState) _then)
      : super(_value, (v) => _then(v as InitialUserState));

  @override
  InitialUserState get _value => super._value as InitialUserState;
}

/// @nodoc
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserToken? token, UserProfile? profile) loggedIn,
    required TResult Function() notLoggedIn,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserToken? token, UserProfile? profile)? loggedIn,
    TResult Function()? notLoggedIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialUserState value) initial,
    required TResult Function(LoggedInUserState value) loggedIn,
    required TResult Function(NotLoggedInUserState value) notLoggedIn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUserState value)? initial,
    TResult Function(LoggedInUserState value)? loggedIn,
    TResult Function(NotLoggedInUserState value)? notLoggedIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialUserState implements UserState {
  const factory InitialUserState() = _$InitialUserState;
}

/// @nodoc
abstract class $LoggedInUserStateCopyWith<$Res> {
  factory $LoggedInUserStateCopyWith(
          LoggedInUserState value, $Res Function(LoggedInUserState) then) =
      _$LoggedInUserStateCopyWithImpl<$Res>;
  $Res call({UserToken? token, UserProfile? profile});
}

/// @nodoc
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
    Object? token = freezed,
    Object? profile = freezed,
  }) {
    return _then(LoggedInUserState(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as UserToken?,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfile?,
    ));
  }
}

/// @nodoc
class _$LoggedInUserState implements LoggedInUserState {
  const _$LoggedInUserState({this.token, this.profile});

  @override
  final UserToken? token;
  @override
  final UserProfile? profile;

  @override
  String toString() {
    return 'UserState.loggedIn(token: $token, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoggedInUserState &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality().equals(other.profile, profile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(profile);

  @JsonKey(ignore: true)
  @override
  $LoggedInUserStateCopyWith<LoggedInUserState> get copyWith =>
      _$LoggedInUserStateCopyWithImpl<LoggedInUserState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserToken? token, UserProfile? profile) loggedIn,
    required TResult Function() notLoggedIn,
  }) {
    return loggedIn(token, profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserToken? token, UserProfile? profile)? loggedIn,
    TResult Function()? notLoggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(token, profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialUserState value) initial,
    required TResult Function(LoggedInUserState value) loggedIn,
    required TResult Function(NotLoggedInUserState value) notLoggedIn,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUserState value)? initial,
    TResult Function(LoggedInUserState value)? loggedIn,
    TResult Function(NotLoggedInUserState value)? notLoggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class LoggedInUserState implements UserState {
  const factory LoggedInUserState({UserToken? token, UserProfile? profile}) =
      _$LoggedInUserState;

  UserToken? get token => throw _privateConstructorUsedError;
  UserProfile? get profile => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoggedInUserStateCopyWith<LoggedInUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotLoggedInUserStateCopyWith<$Res> {
  factory $NotLoggedInUserStateCopyWith(NotLoggedInUserState value,
          $Res Function(NotLoggedInUserState) then) =
      _$NotLoggedInUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotLoggedInUserStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements $NotLoggedInUserStateCopyWith<$Res> {
  _$NotLoggedInUserStateCopyWithImpl(
      NotLoggedInUserState _value, $Res Function(NotLoggedInUserState) _then)
      : super(_value, (v) => _then(v as NotLoggedInUserState));

  @override
  NotLoggedInUserState get _value => super._value as NotLoggedInUserState;
}

/// @nodoc
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserToken? token, UserProfile? profile) loggedIn,
    required TResult Function() notLoggedIn,
  }) {
    return notLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserToken? token, UserProfile? profile)? loggedIn,
    TResult Function()? notLoggedIn,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialUserState value) initial,
    required TResult Function(LoggedInUserState value) loggedIn,
    required TResult Function(NotLoggedInUserState value) notLoggedIn,
  }) {
    return notLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUserState value)? initial,
    TResult Function(LoggedInUserState value)? loggedIn,
    TResult Function(NotLoggedInUserState value)? notLoggedIn,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn(this);
    }
    return orElse();
  }
}

abstract class NotLoggedInUserState implements UserState {
  const factory NotLoggedInUserState() = _$NotLoggedInUserState;
}
