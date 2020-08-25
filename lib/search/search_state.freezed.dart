// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchStateTearOff {
  const _$SearchStateTearOff();

// ignore: unused_element
  SearchingState searching({String query}) {
    return SearchingState(
      query: query,
    );
  }

// ignore: unused_element
  SearchSuccessState success({List<Photo> photos, String query}) {
    return SearchSuccessState(
      photos: photos,
      query: query,
    );
  }

// ignore: unused_element
  SearchErrorState error({String message, String query}) {
    return SearchErrorState(
      message: message,
      query: query,
    );
  }
}

// ignore: unused_element
const $SearchState = _$SearchStateTearOff();

mixin _$SearchState {
  String get query;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searching(String query),
    @required Result success(List<Photo> photos, String query),
    @required Result error(String message, String query),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searching(String query),
    Result success(List<Photo> photos, String query),
    Result error(String message, String query),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searching(SearchingState value),
    @required Result success(SearchSuccessState value),
    @required Result error(SearchErrorState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searching(SearchingState value),
    Result success(SearchSuccessState value),
    Result error(SearchErrorState value),
    @required Result orElse(),
  });

  $SearchStateCopyWith<SearchState> get copyWith;
}

abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call({String query});
}

class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed ? _value.query : query as String,
    ));
  }
}

abstract class $SearchingStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory $SearchingStateCopyWith(
          SearchingState value, $Res Function(SearchingState) then) =
      _$SearchingStateCopyWithImpl<$Res>;
  @override
  $Res call({String query});
}

class _$SearchingStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchingStateCopyWith<$Res> {
  _$SearchingStateCopyWithImpl(
      SearchingState _value, $Res Function(SearchingState) _then)
      : super(_value, (v) => _then(v as SearchingState));

  @override
  SearchingState get _value => super._value as SearchingState;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(SearchingState(
      query: query == freezed ? _value.query : query as String,
    ));
  }
}

class _$SearchingState implements SearchingState {
  const _$SearchingState({this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchState.searching(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchingState &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @override
  $SearchingStateCopyWith<SearchingState> get copyWith =>
      _$SearchingStateCopyWithImpl<SearchingState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searching(String query),
    @required Result success(List<Photo> photos, String query),
    @required Result error(String message, String query),
  }) {
    assert(searching != null);
    assert(success != null);
    assert(error != null);
    return searching(query);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searching(String query),
    Result success(List<Photo> photos, String query),
    Result error(String message, String query),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searching != null) {
      return searching(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searching(SearchingState value),
    @required Result success(SearchSuccessState value),
    @required Result error(SearchErrorState value),
  }) {
    assert(searching != null);
    assert(success != null);
    assert(error != null);
    return searching(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searching(SearchingState value),
    Result success(SearchSuccessState value),
    Result error(SearchErrorState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class SearchingState implements SearchState {
  const factory SearchingState({String query}) = _$SearchingState;

  @override
  String get query;
  @override
  $SearchingStateCopyWith<SearchingState> get copyWith;
}

abstract class $SearchSuccessStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory $SearchSuccessStateCopyWith(
          SearchSuccessState value, $Res Function(SearchSuccessState) then) =
      _$SearchSuccessStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Photo> photos, String query});
}

class _$SearchSuccessStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchSuccessStateCopyWith<$Res> {
  _$SearchSuccessStateCopyWithImpl(
      SearchSuccessState _value, $Res Function(SearchSuccessState) _then)
      : super(_value, (v) => _then(v as SearchSuccessState));

  @override
  SearchSuccessState get _value => super._value as SearchSuccessState;

  @override
  $Res call({
    Object photos = freezed,
    Object query = freezed,
  }) {
    return _then(SearchSuccessState(
      photos: photos == freezed ? _value.photos : photos as List<Photo>,
      query: query == freezed ? _value.query : query as String,
    ));
  }
}

class _$SearchSuccessState implements SearchSuccessState {
  const _$SearchSuccessState({this.photos, this.query});

  @override
  final List<Photo> photos;
  @override
  final String query;

  @override
  String toString() {
    return 'SearchState.success(photos: $photos, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchSuccessState &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)) &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(photos) ^
      const DeepCollectionEquality().hash(query);

  @override
  $SearchSuccessStateCopyWith<SearchSuccessState> get copyWith =>
      _$SearchSuccessStateCopyWithImpl<SearchSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searching(String query),
    @required Result success(List<Photo> photos, String query),
    @required Result error(String message, String query),
  }) {
    assert(searching != null);
    assert(success != null);
    assert(error != null);
    return success(photos, query);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searching(String query),
    Result success(List<Photo> photos, String query),
    Result error(String message, String query),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(photos, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searching(SearchingState value),
    @required Result success(SearchSuccessState value),
    @required Result error(SearchErrorState value),
  }) {
    assert(searching != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searching(SearchingState value),
    Result success(SearchSuccessState value),
    Result error(SearchErrorState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SearchSuccessState implements SearchState {
  const factory SearchSuccessState({List<Photo> photos, String query}) =
      _$SearchSuccessState;

  List<Photo> get photos;
  @override
  String get query;
  @override
  $SearchSuccessStateCopyWith<SearchSuccessState> get copyWith;
}

abstract class $SearchErrorStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory $SearchErrorStateCopyWith(
          SearchErrorState value, $Res Function(SearchErrorState) then) =
      _$SearchErrorStateCopyWithImpl<$Res>;
  @override
  $Res call({String message, String query});
}

class _$SearchErrorStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchErrorStateCopyWith<$Res> {
  _$SearchErrorStateCopyWithImpl(
      SearchErrorState _value, $Res Function(SearchErrorState) _then)
      : super(_value, (v) => _then(v as SearchErrorState));

  @override
  SearchErrorState get _value => super._value as SearchErrorState;

  @override
  $Res call({
    Object message = freezed,
    Object query = freezed,
  }) {
    return _then(SearchErrorState(
      message: message == freezed ? _value.message : message as String,
      query: query == freezed ? _value.query : query as String,
    ));
  }
}

class _$SearchErrorState implements SearchErrorState {
  const _$SearchErrorState({this.message, this.query});

  @override
  final String message;
  @override
  final String query;

  @override
  String toString() {
    return 'SearchState.error(message: $message, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchErrorState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(query);

  @override
  $SearchErrorStateCopyWith<SearchErrorState> get copyWith =>
      _$SearchErrorStateCopyWithImpl<SearchErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searching(String query),
    @required Result success(List<Photo> photos, String query),
    @required Result error(String message, String query),
  }) {
    assert(searching != null);
    assert(success != null);
    assert(error != null);
    return error(message, query);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searching(String query),
    Result success(List<Photo> photos, String query),
    Result error(String message, String query),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searching(SearchingState value),
    @required Result success(SearchSuccessState value),
    @required Result error(SearchErrorState value),
  }) {
    assert(searching != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searching(SearchingState value),
    Result success(SearchSuccessState value),
    Result error(SearchErrorState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchErrorState implements SearchState {
  const factory SearchErrorState({String message, String query}) =
      _$SearchErrorState;

  String get message;
  @override
  String get query;
  @override
  $SearchErrorStateCopyWith<SearchErrorState> get copyWith;
}
