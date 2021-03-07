// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'photos_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhotosStateTearOff {
  const _$PhotosStateTearOff();

  InitialPhotosState initial() {
    return const InitialPhotosState();
  }

  InitialLoadingPhotosState initialLoading() {
    return const InitialLoadingPhotosState();
  }

  InitialErrorPhotosState initialError({String? message}) {
    return InitialErrorPhotosState(
      message: message,
    );
  }

  PaginationLoadingPhotosState paginationLoading(
      {required List<Photo> photos}) {
    return PaginationLoadingPhotosState(
      photos: photos,
    );
  }

  LoadedPhotosState doneLoading({required List<Photo> photos}) {
    return LoadedPhotosState(
      photos: photos,
    );
  }
}

/// @nodoc
const $PhotosState = _$PhotosStateTearOff();

/// @nodoc
mixin _$PhotosState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initialLoading,
    required TResult Function(String? message) initialError,
    required TResult Function(List<Photo> photos) paginationLoading,
    required TResult Function(List<Photo> photos) doneLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initialLoading,
    TResult Function(String? message)? initialError,
    TResult Function(List<Photo> photos)? paginationLoading,
    TResult Function(List<Photo> photos)? doneLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialPhotosState value) initial,
    required TResult Function(InitialLoadingPhotosState value) initialLoading,
    required TResult Function(InitialErrorPhotosState value) initialError,
    required TResult Function(PaginationLoadingPhotosState value)
        paginationLoading,
    required TResult Function(LoadedPhotosState value) doneLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialPhotosState value)? initial,
    TResult Function(InitialLoadingPhotosState value)? initialLoading,
    TResult Function(InitialErrorPhotosState value)? initialError,
    TResult Function(PaginationLoadingPhotosState value)? paginationLoading,
    TResult Function(LoadedPhotosState value)? doneLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosStateCopyWith<$Res> {
  factory $PhotosStateCopyWith(
          PhotosState value, $Res Function(PhotosState) then) =
      _$PhotosStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhotosStateCopyWithImpl<$Res> implements $PhotosStateCopyWith<$Res> {
  _$PhotosStateCopyWithImpl(this._value, this._then);

  final PhotosState _value;
  // ignore: unused_field
  final $Res Function(PhotosState) _then;
}

/// @nodoc
abstract class $InitialPhotosStateCopyWith<$Res> {
  factory $InitialPhotosStateCopyWith(
          InitialPhotosState value, $Res Function(InitialPhotosState) then) =
      _$InitialPhotosStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialPhotosStateCopyWithImpl<$Res>
    extends _$PhotosStateCopyWithImpl<$Res>
    implements $InitialPhotosStateCopyWith<$Res> {
  _$InitialPhotosStateCopyWithImpl(
      InitialPhotosState _value, $Res Function(InitialPhotosState) _then)
      : super(_value, (v) => _then(v as InitialPhotosState));

  @override
  InitialPhotosState get _value => super._value as InitialPhotosState;
}

/// @nodoc
class _$InitialPhotosState implements InitialPhotosState {
  const _$InitialPhotosState();

  @override
  String toString() {
    return 'PhotosState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialPhotosState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initialLoading,
    required TResult Function(String? message) initialError,
    required TResult Function(List<Photo> photos) paginationLoading,
    required TResult Function(List<Photo> photos) doneLoading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initialLoading,
    TResult Function(String? message)? initialError,
    TResult Function(List<Photo> photos)? paginationLoading,
    TResult Function(List<Photo> photos)? doneLoading,
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
    required TResult Function(InitialPhotosState value) initial,
    required TResult Function(InitialLoadingPhotosState value) initialLoading,
    required TResult Function(InitialErrorPhotosState value) initialError,
    required TResult Function(PaginationLoadingPhotosState value)
        paginationLoading,
    required TResult Function(LoadedPhotosState value) doneLoading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialPhotosState value)? initial,
    TResult Function(InitialLoadingPhotosState value)? initialLoading,
    TResult Function(InitialErrorPhotosState value)? initialError,
    TResult Function(PaginationLoadingPhotosState value)? paginationLoading,
    TResult Function(LoadedPhotosState value)? doneLoading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialPhotosState implements PhotosState {
  const factory InitialPhotosState() = _$InitialPhotosState;
}

/// @nodoc
abstract class $InitialLoadingPhotosStateCopyWith<$Res> {
  factory $InitialLoadingPhotosStateCopyWith(InitialLoadingPhotosState value,
          $Res Function(InitialLoadingPhotosState) then) =
      _$InitialLoadingPhotosStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialLoadingPhotosStateCopyWithImpl<$Res>
    extends _$PhotosStateCopyWithImpl<$Res>
    implements $InitialLoadingPhotosStateCopyWith<$Res> {
  _$InitialLoadingPhotosStateCopyWithImpl(InitialLoadingPhotosState _value,
      $Res Function(InitialLoadingPhotosState) _then)
      : super(_value, (v) => _then(v as InitialLoadingPhotosState));

  @override
  InitialLoadingPhotosState get _value =>
      super._value as InitialLoadingPhotosState;
}

/// @nodoc
class _$InitialLoadingPhotosState implements InitialLoadingPhotosState {
  const _$InitialLoadingPhotosState();

  @override
  String toString() {
    return 'PhotosState.initialLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialLoadingPhotosState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initialLoading,
    required TResult Function(String? message) initialError,
    required TResult Function(List<Photo> photos) paginationLoading,
    required TResult Function(List<Photo> photos) doneLoading,
  }) {
    return initialLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initialLoading,
    TResult Function(String? message)? initialError,
    TResult Function(List<Photo> photos)? paginationLoading,
    TResult Function(List<Photo> photos)? doneLoading,
    required TResult orElse(),
  }) {
    if (initialLoading != null) {
      return initialLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialPhotosState value) initial,
    required TResult Function(InitialLoadingPhotosState value) initialLoading,
    required TResult Function(InitialErrorPhotosState value) initialError,
    required TResult Function(PaginationLoadingPhotosState value)
        paginationLoading,
    required TResult Function(LoadedPhotosState value) doneLoading,
  }) {
    return initialLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialPhotosState value)? initial,
    TResult Function(InitialLoadingPhotosState value)? initialLoading,
    TResult Function(InitialErrorPhotosState value)? initialError,
    TResult Function(PaginationLoadingPhotosState value)? paginationLoading,
    TResult Function(LoadedPhotosState value)? doneLoading,
    required TResult orElse(),
  }) {
    if (initialLoading != null) {
      return initialLoading(this);
    }
    return orElse();
  }
}

abstract class InitialLoadingPhotosState implements PhotosState {
  const factory InitialLoadingPhotosState() = _$InitialLoadingPhotosState;
}

/// @nodoc
abstract class $InitialErrorPhotosStateCopyWith<$Res> {
  factory $InitialErrorPhotosStateCopyWith(InitialErrorPhotosState value,
          $Res Function(InitialErrorPhotosState) then) =
      _$InitialErrorPhotosStateCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$InitialErrorPhotosStateCopyWithImpl<$Res>
    extends _$PhotosStateCopyWithImpl<$Res>
    implements $InitialErrorPhotosStateCopyWith<$Res> {
  _$InitialErrorPhotosStateCopyWithImpl(InitialErrorPhotosState _value,
      $Res Function(InitialErrorPhotosState) _then)
      : super(_value, (v) => _then(v as InitialErrorPhotosState));

  @override
  InitialErrorPhotosState get _value => super._value as InitialErrorPhotosState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(InitialErrorPhotosState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$InitialErrorPhotosState implements InitialErrorPhotosState {
  const _$InitialErrorPhotosState({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'PhotosState.initialError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitialErrorPhotosState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $InitialErrorPhotosStateCopyWith<InitialErrorPhotosState> get copyWith =>
      _$InitialErrorPhotosStateCopyWithImpl<InitialErrorPhotosState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initialLoading,
    required TResult Function(String? message) initialError,
    required TResult Function(List<Photo> photos) paginationLoading,
    required TResult Function(List<Photo> photos) doneLoading,
  }) {
    return initialError(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initialLoading,
    TResult Function(String? message)? initialError,
    TResult Function(List<Photo> photos)? paginationLoading,
    TResult Function(List<Photo> photos)? doneLoading,
    required TResult orElse(),
  }) {
    if (initialError != null) {
      return initialError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialPhotosState value) initial,
    required TResult Function(InitialLoadingPhotosState value) initialLoading,
    required TResult Function(InitialErrorPhotosState value) initialError,
    required TResult Function(PaginationLoadingPhotosState value)
        paginationLoading,
    required TResult Function(LoadedPhotosState value) doneLoading,
  }) {
    return initialError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialPhotosState value)? initial,
    TResult Function(InitialLoadingPhotosState value)? initialLoading,
    TResult Function(InitialErrorPhotosState value)? initialError,
    TResult Function(PaginationLoadingPhotosState value)? paginationLoading,
    TResult Function(LoadedPhotosState value)? doneLoading,
    required TResult orElse(),
  }) {
    if (initialError != null) {
      return initialError(this);
    }
    return orElse();
  }
}

abstract class InitialErrorPhotosState implements PhotosState {
  const factory InitialErrorPhotosState({String? message}) =
      _$InitialErrorPhotosState;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitialErrorPhotosStateCopyWith<InitialErrorPhotosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationLoadingPhotosStateCopyWith<$Res> {
  factory $PaginationLoadingPhotosStateCopyWith(
          PaginationLoadingPhotosState value,
          $Res Function(PaginationLoadingPhotosState) then) =
      _$PaginationLoadingPhotosStateCopyWithImpl<$Res>;
  $Res call({List<Photo> photos});
}

/// @nodoc
class _$PaginationLoadingPhotosStateCopyWithImpl<$Res>
    extends _$PhotosStateCopyWithImpl<$Res>
    implements $PaginationLoadingPhotosStateCopyWith<$Res> {
  _$PaginationLoadingPhotosStateCopyWithImpl(
      PaginationLoadingPhotosState _value,
      $Res Function(PaginationLoadingPhotosState) _then)
      : super(_value, (v) => _then(v as PaginationLoadingPhotosState));

  @override
  PaginationLoadingPhotosState get _value =>
      super._value as PaginationLoadingPhotosState;

  @override
  $Res call({
    Object? photos = freezed,
  }) {
    return _then(PaginationLoadingPhotosState(
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc
class _$PaginationLoadingPhotosState implements PaginationLoadingPhotosState {
  const _$PaginationLoadingPhotosState({required this.photos});

  @override
  final List<Photo> photos;

  @override
  String toString() {
    return 'PhotosState.paginationLoading(photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaginationLoadingPhotosState &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photos);

  @JsonKey(ignore: true)
  @override
  $PaginationLoadingPhotosStateCopyWith<PaginationLoadingPhotosState>
      get copyWith => _$PaginationLoadingPhotosStateCopyWithImpl<
          PaginationLoadingPhotosState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initialLoading,
    required TResult Function(String? message) initialError,
    required TResult Function(List<Photo> photos) paginationLoading,
    required TResult Function(List<Photo> photos) doneLoading,
  }) {
    return paginationLoading(photos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initialLoading,
    TResult Function(String? message)? initialError,
    TResult Function(List<Photo> photos)? paginationLoading,
    TResult Function(List<Photo> photos)? doneLoading,
    required TResult orElse(),
  }) {
    if (paginationLoading != null) {
      return paginationLoading(photos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialPhotosState value) initial,
    required TResult Function(InitialLoadingPhotosState value) initialLoading,
    required TResult Function(InitialErrorPhotosState value) initialError,
    required TResult Function(PaginationLoadingPhotosState value)
        paginationLoading,
    required TResult Function(LoadedPhotosState value) doneLoading,
  }) {
    return paginationLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialPhotosState value)? initial,
    TResult Function(InitialLoadingPhotosState value)? initialLoading,
    TResult Function(InitialErrorPhotosState value)? initialError,
    TResult Function(PaginationLoadingPhotosState value)? paginationLoading,
    TResult Function(LoadedPhotosState value)? doneLoading,
    required TResult orElse(),
  }) {
    if (paginationLoading != null) {
      return paginationLoading(this);
    }
    return orElse();
  }
}

abstract class PaginationLoadingPhotosState implements PhotosState {
  const factory PaginationLoadingPhotosState({required List<Photo> photos}) =
      _$PaginationLoadingPhotosState;

  List<Photo> get photos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationLoadingPhotosStateCopyWith<PaginationLoadingPhotosState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedPhotosStateCopyWith<$Res> {
  factory $LoadedPhotosStateCopyWith(
          LoadedPhotosState value, $Res Function(LoadedPhotosState) then) =
      _$LoadedPhotosStateCopyWithImpl<$Res>;
  $Res call({List<Photo> photos});
}

/// @nodoc
class _$LoadedPhotosStateCopyWithImpl<$Res>
    extends _$PhotosStateCopyWithImpl<$Res>
    implements $LoadedPhotosStateCopyWith<$Res> {
  _$LoadedPhotosStateCopyWithImpl(
      LoadedPhotosState _value, $Res Function(LoadedPhotosState) _then)
      : super(_value, (v) => _then(v as LoadedPhotosState));

  @override
  LoadedPhotosState get _value => super._value as LoadedPhotosState;

  @override
  $Res call({
    Object? photos = freezed,
  }) {
    return _then(LoadedPhotosState(
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc
class _$LoadedPhotosState implements LoadedPhotosState {
  const _$LoadedPhotosState({required this.photos});

  @override
  final List<Photo> photos;

  @override
  String toString() {
    return 'PhotosState.doneLoading(photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedPhotosState &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photos);

  @JsonKey(ignore: true)
  @override
  $LoadedPhotosStateCopyWith<LoadedPhotosState> get copyWith =>
      _$LoadedPhotosStateCopyWithImpl<LoadedPhotosState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initialLoading,
    required TResult Function(String? message) initialError,
    required TResult Function(List<Photo> photos) paginationLoading,
    required TResult Function(List<Photo> photos) doneLoading,
  }) {
    return doneLoading(photos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initialLoading,
    TResult Function(String? message)? initialError,
    TResult Function(List<Photo> photos)? paginationLoading,
    TResult Function(List<Photo> photos)? doneLoading,
    required TResult orElse(),
  }) {
    if (doneLoading != null) {
      return doneLoading(photos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialPhotosState value) initial,
    required TResult Function(InitialLoadingPhotosState value) initialLoading,
    required TResult Function(InitialErrorPhotosState value) initialError,
    required TResult Function(PaginationLoadingPhotosState value)
        paginationLoading,
    required TResult Function(LoadedPhotosState value) doneLoading,
  }) {
    return doneLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialPhotosState value)? initial,
    TResult Function(InitialLoadingPhotosState value)? initialLoading,
    TResult Function(InitialErrorPhotosState value)? initialError,
    TResult Function(PaginationLoadingPhotosState value)? paginationLoading,
    TResult Function(LoadedPhotosState value)? doneLoading,
    required TResult orElse(),
  }) {
    if (doneLoading != null) {
      return doneLoading(this);
    }
    return orElse();
  }
}

abstract class LoadedPhotosState implements PhotosState {
  const factory LoadedPhotosState({required List<Photo> photos}) =
      _$LoadedPhotosState;

  List<Photo> get photos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedPhotosStateCopyWith<LoadedPhotosState> get copyWith =>
      throw _privateConstructorUsedError;
}
