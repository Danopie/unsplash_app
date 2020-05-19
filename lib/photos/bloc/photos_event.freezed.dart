// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'photos_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PhotosEventTearOff {
  const _$PhotosEventTearOff();

  InitialLoad initialLoad() {
    return const InitialLoad();
  }

  LoadMore loadMore() {
    return const LoadMore();
  }

  SortPhotos sortPhotos({PhotoSort sort}) {
    return SortPhotos(
      sort: sort,
    );
  }
}

// ignore: unused_element
const $PhotosEvent = _$PhotosEventTearOff();

mixin _$PhotosEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialLoad(),
    @required Result loadMore(),
    @required Result sortPhotos(PhotoSort sort),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialLoad(),
    Result loadMore(),
    Result sortPhotos(PhotoSort sort),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialLoad(InitialLoad value),
    @required Result loadMore(LoadMore value),
    @required Result sortPhotos(SortPhotos value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialLoad(InitialLoad value),
    Result loadMore(LoadMore value),
    Result sortPhotos(SortPhotos value),
    @required Result orElse(),
  });
}

abstract class $PhotosEventCopyWith<$Res> {
  factory $PhotosEventCopyWith(
          PhotosEvent value, $Res Function(PhotosEvent) then) =
      _$PhotosEventCopyWithImpl<$Res>;
}

class _$PhotosEventCopyWithImpl<$Res> implements $PhotosEventCopyWith<$Res> {
  _$PhotosEventCopyWithImpl(this._value, this._then);

  final PhotosEvent _value;
  // ignore: unused_field
  final $Res Function(PhotosEvent) _then;
}

abstract class $InitialLoadCopyWith<$Res> {
  factory $InitialLoadCopyWith(
          InitialLoad value, $Res Function(InitialLoad) then) =
      _$InitialLoadCopyWithImpl<$Res>;
}

class _$InitialLoadCopyWithImpl<$Res> extends _$PhotosEventCopyWithImpl<$Res>
    implements $InitialLoadCopyWith<$Res> {
  _$InitialLoadCopyWithImpl(
      InitialLoad _value, $Res Function(InitialLoad) _then)
      : super(_value, (v) => _then(v as InitialLoad));

  @override
  InitialLoad get _value => super._value as InitialLoad;
}

class _$InitialLoad implements InitialLoad {
  const _$InitialLoad();

  @override
  String toString() {
    return 'PhotosEvent.initialLoad()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialLoad(),
    @required Result loadMore(),
    @required Result sortPhotos(PhotoSort sort),
  }) {
    assert(initialLoad != null);
    assert(loadMore != null);
    assert(sortPhotos != null);
    return initialLoad();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialLoad(),
    Result loadMore(),
    Result sortPhotos(PhotoSort sort),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialLoad != null) {
      return initialLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialLoad(InitialLoad value),
    @required Result loadMore(LoadMore value),
    @required Result sortPhotos(SortPhotos value),
  }) {
    assert(initialLoad != null);
    assert(loadMore != null);
    assert(sortPhotos != null);
    return initialLoad(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialLoad(InitialLoad value),
    Result loadMore(LoadMore value),
    Result sortPhotos(SortPhotos value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialLoad != null) {
      return initialLoad(this);
    }
    return orElse();
  }
}

abstract class InitialLoad implements PhotosEvent {
  const factory InitialLoad() = _$InitialLoad;
}

abstract class $LoadMoreCopyWith<$Res> {
  factory $LoadMoreCopyWith(LoadMore value, $Res Function(LoadMore) then) =
      _$LoadMoreCopyWithImpl<$Res>;
}

class _$LoadMoreCopyWithImpl<$Res> extends _$PhotosEventCopyWithImpl<$Res>
    implements $LoadMoreCopyWith<$Res> {
  _$LoadMoreCopyWithImpl(LoadMore _value, $Res Function(LoadMore) _then)
      : super(_value, (v) => _then(v as LoadMore));

  @override
  LoadMore get _value => super._value as LoadMore;
}

class _$LoadMore implements LoadMore {
  const _$LoadMore();

  @override
  String toString() {
    return 'PhotosEvent.loadMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadMore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialLoad(),
    @required Result loadMore(),
    @required Result sortPhotos(PhotoSort sort),
  }) {
    assert(initialLoad != null);
    assert(loadMore != null);
    assert(sortPhotos != null);
    return loadMore();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialLoad(),
    Result loadMore(),
    Result sortPhotos(PhotoSort sort),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialLoad(InitialLoad value),
    @required Result loadMore(LoadMore value),
    @required Result sortPhotos(SortPhotos value),
  }) {
    assert(initialLoad != null);
    assert(loadMore != null);
    assert(sortPhotos != null);
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialLoad(InitialLoad value),
    Result loadMore(LoadMore value),
    Result sortPhotos(SortPhotos value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class LoadMore implements PhotosEvent {
  const factory LoadMore() = _$LoadMore;
}

abstract class $SortPhotosCopyWith<$Res> {
  factory $SortPhotosCopyWith(
          SortPhotos value, $Res Function(SortPhotos) then) =
      _$SortPhotosCopyWithImpl<$Res>;
  $Res call({PhotoSort sort});
}

class _$SortPhotosCopyWithImpl<$Res> extends _$PhotosEventCopyWithImpl<$Res>
    implements $SortPhotosCopyWith<$Res> {
  _$SortPhotosCopyWithImpl(SortPhotos _value, $Res Function(SortPhotos) _then)
      : super(_value, (v) => _then(v as SortPhotos));

  @override
  SortPhotos get _value => super._value as SortPhotos;

  @override
  $Res call({
    Object sort = freezed,
  }) {
    return _then(SortPhotos(
      sort: sort == freezed ? _value.sort : sort as PhotoSort,
    ));
  }
}

class _$SortPhotos implements SortPhotos {
  const _$SortPhotos({this.sort});

  @override
  final PhotoSort sort;

  @override
  String toString() {
    return 'PhotosEvent.sortPhotos(sort: $sort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SortPhotos &&
            (identical(other.sort, sort) ||
                const DeepCollectionEquality().equals(other.sort, sort)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sort);

  @override
  $SortPhotosCopyWith<SortPhotos> get copyWith =>
      _$SortPhotosCopyWithImpl<SortPhotos>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialLoad(),
    @required Result loadMore(),
    @required Result sortPhotos(PhotoSort sort),
  }) {
    assert(initialLoad != null);
    assert(loadMore != null);
    assert(sortPhotos != null);
    return sortPhotos(sort);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialLoad(),
    Result loadMore(),
    Result sortPhotos(PhotoSort sort),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sortPhotos != null) {
      return sortPhotos(sort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialLoad(InitialLoad value),
    @required Result loadMore(LoadMore value),
    @required Result sortPhotos(SortPhotos value),
  }) {
    assert(initialLoad != null);
    assert(loadMore != null);
    assert(sortPhotos != null);
    return sortPhotos(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialLoad(InitialLoad value),
    Result loadMore(LoadMore value),
    Result sortPhotos(SortPhotos value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sortPhotos != null) {
      return sortPhotos(this);
    }
    return orElse();
  }
}

abstract class SortPhotos implements PhotosEvent {
  const factory SortPhotos({PhotoSort sort}) = _$SortPhotos;

  PhotoSort get sort;
  $SortPhotosCopyWith<SortPhotos> get copyWith;
}
