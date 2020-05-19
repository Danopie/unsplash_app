// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'photos_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PhotosStateTearOff {
  const _$PhotosStateTearOff();

  InitialPhotosState initial() {
    return const InitialPhotosState();
  }

  InitialLoadingPhotosState initialLoading() {
    return const InitialLoadingPhotosState();
  }

  InitialErrorPhotosState initialError({String message}) {
    return InitialErrorPhotosState(
      message: message,
    );
  }

  PaginationLoadingPhotosState paginationLoading(
      {List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort}) {
    return PaginationLoadingPhotosState(
      photos: photos,
      sorts: sorts,
      selectedSort: selectedSort,
    );
  }

  LoadedPhotosState doneLoading(
      {List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort}) {
    return LoadedPhotosState(
      photos: photos,
      sorts: sorts,
      selectedSort: selectedSort,
    );
  }

  SortLoadingPhotosState sortLoading(
      {List<PhotoSort> sorts, PhotoSort selectedSort}) {
    return SortLoadingPhotosState(
      sorts: sorts,
      selectedSort: selectedSort,
    );
  }
}

// ignore: unused_element
const $PhotosState = _$PhotosStateTearOff();

mixin _$PhotosState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result initialLoading(),
    @required Result initialError(String message),
    @required
        Result paginationLoading(
            List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    @required
        Result doneLoading(
            List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    @required Result sortLoading(List<PhotoSort> sorts, PhotoSort selectedSort),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result initialLoading(),
    Result initialError(String message),
    Result paginationLoading(
        List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    Result doneLoading(
        List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    Result sortLoading(List<PhotoSort> sorts, PhotoSort selectedSort),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(InitialPhotosState value),
    @required Result initialLoading(InitialLoadingPhotosState value),
    @required Result initialError(InitialErrorPhotosState value),
    @required Result paginationLoading(PaginationLoadingPhotosState value),
    @required Result doneLoading(LoadedPhotosState value),
    @required Result sortLoading(SortLoadingPhotosState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(InitialPhotosState value),
    Result initialLoading(InitialLoadingPhotosState value),
    Result initialError(InitialErrorPhotosState value),
    Result paginationLoading(PaginationLoadingPhotosState value),
    Result doneLoading(LoadedPhotosState value),
    Result sortLoading(SortLoadingPhotosState value),
    @required Result orElse(),
  });
}

abstract class $PhotosStateCopyWith<$Res> {
  factory $PhotosStateCopyWith(
          PhotosState value, $Res Function(PhotosState) then) =
      _$PhotosStateCopyWithImpl<$Res>;
}

class _$PhotosStateCopyWithImpl<$Res> implements $PhotosStateCopyWith<$Res> {
  _$PhotosStateCopyWithImpl(this._value, this._then);

  final PhotosState _value;
  // ignore: unused_field
  final $Res Function(PhotosState) _then;
}

abstract class $InitialPhotosStateCopyWith<$Res> {
  factory $InitialPhotosStateCopyWith(
          InitialPhotosState value, $Res Function(InitialPhotosState) then) =
      _$InitialPhotosStateCopyWithImpl<$Res>;
}

class _$InitialPhotosStateCopyWithImpl<$Res>
    extends _$PhotosStateCopyWithImpl<$Res>
    implements $InitialPhotosStateCopyWith<$Res> {
  _$InitialPhotosStateCopyWithImpl(
      InitialPhotosState _value, $Res Function(InitialPhotosState) _then)
      : super(_value, (v) => _then(v as InitialPhotosState));

  @override
  InitialPhotosState get _value => super._value as InitialPhotosState;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result initialLoading(),
    @required Result initialError(String message),
    @required
        Result paginationLoading(
            List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    @required
        Result doneLoading(
            List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    @required Result sortLoading(List<PhotoSort> sorts, PhotoSort selectedSort),
  }) {
    assert(initial != null);
    assert(initialLoading != null);
    assert(initialError != null);
    assert(paginationLoading != null);
    assert(doneLoading != null);
    assert(sortLoading != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result initialLoading(),
    Result initialError(String message),
    Result paginationLoading(
        List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    Result doneLoading(
        List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    Result sortLoading(List<PhotoSort> sorts, PhotoSort selectedSort),
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
    @required Result initial(InitialPhotosState value),
    @required Result initialLoading(InitialLoadingPhotosState value),
    @required Result initialError(InitialErrorPhotosState value),
    @required Result paginationLoading(PaginationLoadingPhotosState value),
    @required Result doneLoading(LoadedPhotosState value),
    @required Result sortLoading(SortLoadingPhotosState value),
  }) {
    assert(initial != null);
    assert(initialLoading != null);
    assert(initialError != null);
    assert(paginationLoading != null);
    assert(doneLoading != null);
    assert(sortLoading != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(InitialPhotosState value),
    Result initialLoading(InitialLoadingPhotosState value),
    Result initialError(InitialErrorPhotosState value),
    Result paginationLoading(PaginationLoadingPhotosState value),
    Result doneLoading(LoadedPhotosState value),
    Result sortLoading(SortLoadingPhotosState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialPhotosState implements PhotosState {
  const factory InitialPhotosState() = _$InitialPhotosState;
}

abstract class $InitialLoadingPhotosStateCopyWith<$Res> {
  factory $InitialLoadingPhotosStateCopyWith(InitialLoadingPhotosState value,
          $Res Function(InitialLoadingPhotosState) then) =
      _$InitialLoadingPhotosStateCopyWithImpl<$Res>;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result initialLoading(),
    @required Result initialError(String message),
    @required
        Result paginationLoading(
            List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    @required
        Result doneLoading(
            List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    @required Result sortLoading(List<PhotoSort> sorts, PhotoSort selectedSort),
  }) {
    assert(initial != null);
    assert(initialLoading != null);
    assert(initialError != null);
    assert(paginationLoading != null);
    assert(doneLoading != null);
    assert(sortLoading != null);
    return initialLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result initialLoading(),
    Result initialError(String message),
    Result paginationLoading(
        List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    Result doneLoading(
        List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    Result sortLoading(List<PhotoSort> sorts, PhotoSort selectedSort),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialLoading != null) {
      return initialLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(InitialPhotosState value),
    @required Result initialLoading(InitialLoadingPhotosState value),
    @required Result initialError(InitialErrorPhotosState value),
    @required Result paginationLoading(PaginationLoadingPhotosState value),
    @required Result doneLoading(LoadedPhotosState value),
    @required Result sortLoading(SortLoadingPhotosState value),
  }) {
    assert(initial != null);
    assert(initialLoading != null);
    assert(initialError != null);
    assert(paginationLoading != null);
    assert(doneLoading != null);
    assert(sortLoading != null);
    return initialLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(InitialPhotosState value),
    Result initialLoading(InitialLoadingPhotosState value),
    Result initialError(InitialErrorPhotosState value),
    Result paginationLoading(PaginationLoadingPhotosState value),
    Result doneLoading(LoadedPhotosState value),
    Result sortLoading(SortLoadingPhotosState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialLoading != null) {
      return initialLoading(this);
    }
    return orElse();
  }
}

abstract class InitialLoadingPhotosState implements PhotosState {
  const factory InitialLoadingPhotosState() = _$InitialLoadingPhotosState;
}

abstract class $InitialErrorPhotosStateCopyWith<$Res> {
  factory $InitialErrorPhotosStateCopyWith(InitialErrorPhotosState value,
          $Res Function(InitialErrorPhotosState) then) =
      _$InitialErrorPhotosStateCopyWithImpl<$Res>;
  $Res call({String message});
}

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
    Object message = freezed,
  }) {
    return _then(InitialErrorPhotosState(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$InitialErrorPhotosState implements InitialErrorPhotosState {
  const _$InitialErrorPhotosState({this.message});

  @override
  final String message;

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

  @override
  $InitialErrorPhotosStateCopyWith<InitialErrorPhotosState> get copyWith =>
      _$InitialErrorPhotosStateCopyWithImpl<InitialErrorPhotosState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result initialLoading(),
    @required Result initialError(String message),
    @required
        Result paginationLoading(
            List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    @required
        Result doneLoading(
            List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    @required Result sortLoading(List<PhotoSort> sorts, PhotoSort selectedSort),
  }) {
    assert(initial != null);
    assert(initialLoading != null);
    assert(initialError != null);
    assert(paginationLoading != null);
    assert(doneLoading != null);
    assert(sortLoading != null);
    return initialError(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result initialLoading(),
    Result initialError(String message),
    Result paginationLoading(
        List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    Result doneLoading(
        List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    Result sortLoading(List<PhotoSort> sorts, PhotoSort selectedSort),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialError != null) {
      return initialError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(InitialPhotosState value),
    @required Result initialLoading(InitialLoadingPhotosState value),
    @required Result initialError(InitialErrorPhotosState value),
    @required Result paginationLoading(PaginationLoadingPhotosState value),
    @required Result doneLoading(LoadedPhotosState value),
    @required Result sortLoading(SortLoadingPhotosState value),
  }) {
    assert(initial != null);
    assert(initialLoading != null);
    assert(initialError != null);
    assert(paginationLoading != null);
    assert(doneLoading != null);
    assert(sortLoading != null);
    return initialError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(InitialPhotosState value),
    Result initialLoading(InitialLoadingPhotosState value),
    Result initialError(InitialErrorPhotosState value),
    Result paginationLoading(PaginationLoadingPhotosState value),
    Result doneLoading(LoadedPhotosState value),
    Result sortLoading(SortLoadingPhotosState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialError != null) {
      return initialError(this);
    }
    return orElse();
  }
}

abstract class InitialErrorPhotosState implements PhotosState {
  const factory InitialErrorPhotosState({String message}) =
      _$InitialErrorPhotosState;

  String get message;
  $InitialErrorPhotosStateCopyWith<InitialErrorPhotosState> get copyWith;
}

abstract class $PaginationLoadingPhotosStateCopyWith<$Res> {
  factory $PaginationLoadingPhotosStateCopyWith(
          PaginationLoadingPhotosState value,
          $Res Function(PaginationLoadingPhotosState) then) =
      _$PaginationLoadingPhotosStateCopyWithImpl<$Res>;
  $Res call(
      {List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort});
}

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
    Object photos = freezed,
    Object sorts = freezed,
    Object selectedSort = freezed,
  }) {
    return _then(PaginationLoadingPhotosState(
      photos: photos == freezed ? _value.photos : photos as List<Photo>,
      sorts: sorts == freezed ? _value.sorts : sorts as List<PhotoSort>,
      selectedSort: selectedSort == freezed
          ? _value.selectedSort
          : selectedSort as PhotoSort,
    ));
  }
}

class _$PaginationLoadingPhotosState implements PaginationLoadingPhotosState {
  const _$PaginationLoadingPhotosState(
      {this.photos, this.sorts, this.selectedSort});

  @override
  final List<Photo> photos;
  @override
  final List<PhotoSort> sorts;
  @override
  final PhotoSort selectedSort;

  @override
  String toString() {
    return 'PhotosState.paginationLoading(photos: $photos, sorts: $sorts, selectedSort: $selectedSort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaginationLoadingPhotosState &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)) &&
            (identical(other.sorts, sorts) ||
                const DeepCollectionEquality().equals(other.sorts, sorts)) &&
            (identical(other.selectedSort, selectedSort) ||
                const DeepCollectionEquality()
                    .equals(other.selectedSort, selectedSort)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(photos) ^
      const DeepCollectionEquality().hash(sorts) ^
      const DeepCollectionEquality().hash(selectedSort);

  @override
  $PaginationLoadingPhotosStateCopyWith<PaginationLoadingPhotosState>
      get copyWith => _$PaginationLoadingPhotosStateCopyWithImpl<
          PaginationLoadingPhotosState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result initialLoading(),
    @required Result initialError(String message),
    @required
        Result paginationLoading(
            List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    @required
        Result doneLoading(
            List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    @required Result sortLoading(List<PhotoSort> sorts, PhotoSort selectedSort),
  }) {
    assert(initial != null);
    assert(initialLoading != null);
    assert(initialError != null);
    assert(paginationLoading != null);
    assert(doneLoading != null);
    assert(sortLoading != null);
    return paginationLoading(photos, sorts, selectedSort);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result initialLoading(),
    Result initialError(String message),
    Result paginationLoading(
        List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    Result doneLoading(
        List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    Result sortLoading(List<PhotoSort> sorts, PhotoSort selectedSort),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (paginationLoading != null) {
      return paginationLoading(photos, sorts, selectedSort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(InitialPhotosState value),
    @required Result initialLoading(InitialLoadingPhotosState value),
    @required Result initialError(InitialErrorPhotosState value),
    @required Result paginationLoading(PaginationLoadingPhotosState value),
    @required Result doneLoading(LoadedPhotosState value),
    @required Result sortLoading(SortLoadingPhotosState value),
  }) {
    assert(initial != null);
    assert(initialLoading != null);
    assert(initialError != null);
    assert(paginationLoading != null);
    assert(doneLoading != null);
    assert(sortLoading != null);
    return paginationLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(InitialPhotosState value),
    Result initialLoading(InitialLoadingPhotosState value),
    Result initialError(InitialErrorPhotosState value),
    Result paginationLoading(PaginationLoadingPhotosState value),
    Result doneLoading(LoadedPhotosState value),
    Result sortLoading(SortLoadingPhotosState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (paginationLoading != null) {
      return paginationLoading(this);
    }
    return orElse();
  }
}

abstract class PaginationLoadingPhotosState implements PhotosState {
  const factory PaginationLoadingPhotosState(
      {List<Photo> photos,
      List<PhotoSort> sorts,
      PhotoSort selectedSort}) = _$PaginationLoadingPhotosState;

  List<Photo> get photos;
  List<PhotoSort> get sorts;
  PhotoSort get selectedSort;
  $PaginationLoadingPhotosStateCopyWith<PaginationLoadingPhotosState>
      get copyWith;
}

abstract class $LoadedPhotosStateCopyWith<$Res> {
  factory $LoadedPhotosStateCopyWith(
          LoadedPhotosState value, $Res Function(LoadedPhotosState) then) =
      _$LoadedPhotosStateCopyWithImpl<$Res>;
  $Res call(
      {List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort});
}

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
    Object photos = freezed,
    Object sorts = freezed,
    Object selectedSort = freezed,
  }) {
    return _then(LoadedPhotosState(
      photos: photos == freezed ? _value.photos : photos as List<Photo>,
      sorts: sorts == freezed ? _value.sorts : sorts as List<PhotoSort>,
      selectedSort: selectedSort == freezed
          ? _value.selectedSort
          : selectedSort as PhotoSort,
    ));
  }
}

class _$LoadedPhotosState implements LoadedPhotosState {
  const _$LoadedPhotosState({this.photos, this.sorts, this.selectedSort});

  @override
  final List<Photo> photos;
  @override
  final List<PhotoSort> sorts;
  @override
  final PhotoSort selectedSort;

  @override
  String toString() {
    return 'PhotosState.doneLoading(photos: $photos, sorts: $sorts, selectedSort: $selectedSort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedPhotosState &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)) &&
            (identical(other.sorts, sorts) ||
                const DeepCollectionEquality().equals(other.sorts, sorts)) &&
            (identical(other.selectedSort, selectedSort) ||
                const DeepCollectionEquality()
                    .equals(other.selectedSort, selectedSort)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(photos) ^
      const DeepCollectionEquality().hash(sorts) ^
      const DeepCollectionEquality().hash(selectedSort);

  @override
  $LoadedPhotosStateCopyWith<LoadedPhotosState> get copyWith =>
      _$LoadedPhotosStateCopyWithImpl<LoadedPhotosState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result initialLoading(),
    @required Result initialError(String message),
    @required
        Result paginationLoading(
            List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    @required
        Result doneLoading(
            List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    @required Result sortLoading(List<PhotoSort> sorts, PhotoSort selectedSort),
  }) {
    assert(initial != null);
    assert(initialLoading != null);
    assert(initialError != null);
    assert(paginationLoading != null);
    assert(doneLoading != null);
    assert(sortLoading != null);
    return doneLoading(photos, sorts, selectedSort);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result initialLoading(),
    Result initialError(String message),
    Result paginationLoading(
        List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    Result doneLoading(
        List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    Result sortLoading(List<PhotoSort> sorts, PhotoSort selectedSort),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (doneLoading != null) {
      return doneLoading(photos, sorts, selectedSort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(InitialPhotosState value),
    @required Result initialLoading(InitialLoadingPhotosState value),
    @required Result initialError(InitialErrorPhotosState value),
    @required Result paginationLoading(PaginationLoadingPhotosState value),
    @required Result doneLoading(LoadedPhotosState value),
    @required Result sortLoading(SortLoadingPhotosState value),
  }) {
    assert(initial != null);
    assert(initialLoading != null);
    assert(initialError != null);
    assert(paginationLoading != null);
    assert(doneLoading != null);
    assert(sortLoading != null);
    return doneLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(InitialPhotosState value),
    Result initialLoading(InitialLoadingPhotosState value),
    Result initialError(InitialErrorPhotosState value),
    Result paginationLoading(PaginationLoadingPhotosState value),
    Result doneLoading(LoadedPhotosState value),
    Result sortLoading(SortLoadingPhotosState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (doneLoading != null) {
      return doneLoading(this);
    }
    return orElse();
  }
}

abstract class LoadedPhotosState implements PhotosState {
  const factory LoadedPhotosState(
      {List<Photo> photos,
      List<PhotoSort> sorts,
      PhotoSort selectedSort}) = _$LoadedPhotosState;

  List<Photo> get photos;
  List<PhotoSort> get sorts;
  PhotoSort get selectedSort;
  $LoadedPhotosStateCopyWith<LoadedPhotosState> get copyWith;
}

abstract class $SortLoadingPhotosStateCopyWith<$Res> {
  factory $SortLoadingPhotosStateCopyWith(SortLoadingPhotosState value,
          $Res Function(SortLoadingPhotosState) then) =
      _$SortLoadingPhotosStateCopyWithImpl<$Res>;
  $Res call({List<PhotoSort> sorts, PhotoSort selectedSort});
}

class _$SortLoadingPhotosStateCopyWithImpl<$Res>
    extends _$PhotosStateCopyWithImpl<$Res>
    implements $SortLoadingPhotosStateCopyWith<$Res> {
  _$SortLoadingPhotosStateCopyWithImpl(SortLoadingPhotosState _value,
      $Res Function(SortLoadingPhotosState) _then)
      : super(_value, (v) => _then(v as SortLoadingPhotosState));

  @override
  SortLoadingPhotosState get _value => super._value as SortLoadingPhotosState;

  @override
  $Res call({
    Object sorts = freezed,
    Object selectedSort = freezed,
  }) {
    return _then(SortLoadingPhotosState(
      sorts: sorts == freezed ? _value.sorts : sorts as List<PhotoSort>,
      selectedSort: selectedSort == freezed
          ? _value.selectedSort
          : selectedSort as PhotoSort,
    ));
  }
}

class _$SortLoadingPhotosState implements SortLoadingPhotosState {
  const _$SortLoadingPhotosState({this.sorts, this.selectedSort});

  @override
  final List<PhotoSort> sorts;
  @override
  final PhotoSort selectedSort;

  @override
  String toString() {
    return 'PhotosState.sortLoading(sorts: $sorts, selectedSort: $selectedSort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SortLoadingPhotosState &&
            (identical(other.sorts, sorts) ||
                const DeepCollectionEquality().equals(other.sorts, sorts)) &&
            (identical(other.selectedSort, selectedSort) ||
                const DeepCollectionEquality()
                    .equals(other.selectedSort, selectedSort)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sorts) ^
      const DeepCollectionEquality().hash(selectedSort);

  @override
  $SortLoadingPhotosStateCopyWith<SortLoadingPhotosState> get copyWith =>
      _$SortLoadingPhotosStateCopyWithImpl<SortLoadingPhotosState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result initialLoading(),
    @required Result initialError(String message),
    @required
        Result paginationLoading(
            List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    @required
        Result doneLoading(
            List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    @required Result sortLoading(List<PhotoSort> sorts, PhotoSort selectedSort),
  }) {
    assert(initial != null);
    assert(initialLoading != null);
    assert(initialError != null);
    assert(paginationLoading != null);
    assert(doneLoading != null);
    assert(sortLoading != null);
    return sortLoading(sorts, selectedSort);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result initialLoading(),
    Result initialError(String message),
    Result paginationLoading(
        List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    Result doneLoading(
        List<Photo> photos, List<PhotoSort> sorts, PhotoSort selectedSort),
    Result sortLoading(List<PhotoSort> sorts, PhotoSort selectedSort),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sortLoading != null) {
      return sortLoading(sorts, selectedSort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(InitialPhotosState value),
    @required Result initialLoading(InitialLoadingPhotosState value),
    @required Result initialError(InitialErrorPhotosState value),
    @required Result paginationLoading(PaginationLoadingPhotosState value),
    @required Result doneLoading(LoadedPhotosState value),
    @required Result sortLoading(SortLoadingPhotosState value),
  }) {
    assert(initial != null);
    assert(initialLoading != null);
    assert(initialError != null);
    assert(paginationLoading != null);
    assert(doneLoading != null);
    assert(sortLoading != null);
    return sortLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(InitialPhotosState value),
    Result initialLoading(InitialLoadingPhotosState value),
    Result initialError(InitialErrorPhotosState value),
    Result paginationLoading(PaginationLoadingPhotosState value),
    Result doneLoading(LoadedPhotosState value),
    Result sortLoading(SortLoadingPhotosState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sortLoading != null) {
      return sortLoading(this);
    }
    return orElse();
  }
}

abstract class SortLoadingPhotosState implements PhotosState {
  const factory SortLoadingPhotosState(
      {List<PhotoSort> sorts,
      PhotoSort selectedSort}) = _$SortLoadingPhotosState;

  List<PhotoSort> get sorts;
  PhotoSort get selectedSort;
  $SortLoadingPhotosStateCopyWith<SortLoadingPhotosState> get copyWith;
}
