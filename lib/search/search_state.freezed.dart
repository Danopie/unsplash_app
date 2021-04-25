// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  SearchingState searching({required String query, required SearchType type}) {
    return SearchingState(
      query: query,
      type: type,
    );
  }

  SearchSuccessState success(
      {required String query,
      required SearchType type,
      List<Photo>? photos,
      List<PhotoCollection>? collections,
      List<UserProfile>? userProfiles}) {
    return SearchSuccessState(
      query: query,
      type: type,
      photos: photos,
      collections: collections,
      userProfiles: userProfiles,
    );
  }

  SearchErrorState error(
      {required String message,
      required String query,
      required SearchType type}) {
    return SearchErrorState(
      message: message,
      query: query,
      type: type,
    );
  }
}

/// @nodoc
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  String get query => throw _privateConstructorUsedError;
  SearchType get type => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, SearchType type) searching,
    required TResult Function(
            String query,
            SearchType type,
            List<Photo>? photos,
            List<PhotoCollection>? collections,
            List<UserProfile>? userProfiles)
        success,
    required TResult Function(String message, String query, SearchType type)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, SearchType type)? searching,
    TResult Function(
            String query,
            SearchType type,
            List<Photo>? photos,
            List<PhotoCollection>? collections,
            List<UserProfile>? userProfiles)?
        success,
    TResult Function(String message, String query, SearchType type)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchingState value) searching,
    required TResult Function(SearchSuccessState value) success,
    required TResult Function(SearchErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchingState value)? searching,
    TResult Function(SearchSuccessState value)? success,
    TResult Function(SearchErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call({String query, SearchType type});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? query = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SearchType,
    ));
  }
}

/// @nodoc
abstract class $SearchingStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory $SearchingStateCopyWith(
          SearchingState value, $Res Function(SearchingState) then) =
      _$SearchingStateCopyWithImpl<$Res>;
  @override
  $Res call({String query, SearchType type});
}

/// @nodoc
class _$SearchingStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchingStateCopyWith<$Res> {
  _$SearchingStateCopyWithImpl(
      SearchingState _value, $Res Function(SearchingState) _then)
      : super(_value, (v) => _then(v as SearchingState));

  @override
  SearchingState get _value => super._value as SearchingState;

  @override
  $Res call({
    Object? query = freezed,
    Object? type = freezed,
  }) {
    return _then(SearchingState(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SearchType,
    ));
  }
}

/// @nodoc
class _$SearchingState implements SearchingState {
  const _$SearchingState({required this.query, required this.type});

  @override
  final String query;
  @override
  final SearchType type;

  @override
  String toString() {
    return 'SearchState.searching(query: $query, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchingState &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(query) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  $SearchingStateCopyWith<SearchingState> get copyWith =>
      _$SearchingStateCopyWithImpl<SearchingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, SearchType type) searching,
    required TResult Function(
            String query,
            SearchType type,
            List<Photo>? photos,
            List<PhotoCollection>? collections,
            List<UserProfile>? userProfiles)
        success,
    required TResult Function(String message, String query, SearchType type)
        error,
  }) {
    return searching(query, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, SearchType type)? searching,
    TResult Function(
            String query,
            SearchType type,
            List<Photo>? photos,
            List<PhotoCollection>? collections,
            List<UserProfile>? userProfiles)?
        success,
    TResult Function(String message, String query, SearchType type)? error,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(query, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchingState value) searching,
    required TResult Function(SearchSuccessState value) success,
    required TResult Function(SearchErrorState value) error,
  }) {
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchingState value)? searching,
    TResult Function(SearchSuccessState value)? success,
    TResult Function(SearchErrorState value)? error,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class SearchingState implements SearchState {
  const factory SearchingState(
      {required String query, required SearchType type}) = _$SearchingState;

  @override
  String get query => throw _privateConstructorUsedError;
  @override
  SearchType get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SearchingStateCopyWith<SearchingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchSuccessStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory $SearchSuccessStateCopyWith(
          SearchSuccessState value, $Res Function(SearchSuccessState) then) =
      _$SearchSuccessStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String query,
      SearchType type,
      List<Photo>? photos,
      List<PhotoCollection>? collections,
      List<UserProfile>? userProfiles});
}

/// @nodoc
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
    Object? query = freezed,
    Object? type = freezed,
    Object? photos = freezed,
    Object? collections = freezed,
    Object? userProfiles = freezed,
  }) {
    return _then(SearchSuccessState(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SearchType,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      collections: collections == freezed
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<PhotoCollection>?,
      userProfiles: userProfiles == freezed
          ? _value.userProfiles
          : userProfiles // ignore: cast_nullable_to_non_nullable
              as List<UserProfile>?,
    ));
  }
}

/// @nodoc
class _$SearchSuccessState implements SearchSuccessState {
  const _$SearchSuccessState(
      {required this.query,
      required this.type,
      this.photos,
      this.collections,
      this.userProfiles});

  @override
  final String query;
  @override
  final SearchType type;
  @override
  final List<Photo>? photos;
  @override
  final List<PhotoCollection>? collections;
  @override
  final List<UserProfile>? userProfiles;

  @override
  String toString() {
    return 'SearchState.success(query: $query, type: $type, photos: $photos, collections: $collections, userProfiles: $userProfiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchSuccessState &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)) &&
            (identical(other.collections, collections) ||
                const DeepCollectionEquality()
                    .equals(other.collections, collections)) &&
            (identical(other.userProfiles, userProfiles) ||
                const DeepCollectionEquality()
                    .equals(other.userProfiles, userProfiles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(query) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(photos) ^
      const DeepCollectionEquality().hash(collections) ^
      const DeepCollectionEquality().hash(userProfiles);

  @JsonKey(ignore: true)
  @override
  $SearchSuccessStateCopyWith<SearchSuccessState> get copyWith =>
      _$SearchSuccessStateCopyWithImpl<SearchSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, SearchType type) searching,
    required TResult Function(
            String query,
            SearchType type,
            List<Photo>? photos,
            List<PhotoCollection>? collections,
            List<UserProfile>? userProfiles)
        success,
    required TResult Function(String message, String query, SearchType type)
        error,
  }) {
    return success(query, type, photos, collections, userProfiles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, SearchType type)? searching,
    TResult Function(
            String query,
            SearchType type,
            List<Photo>? photos,
            List<PhotoCollection>? collections,
            List<UserProfile>? userProfiles)?
        success,
    TResult Function(String message, String query, SearchType type)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(query, type, photos, collections, userProfiles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchingState value) searching,
    required TResult Function(SearchSuccessState value) success,
    required TResult Function(SearchErrorState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchingState value)? searching,
    TResult Function(SearchSuccessState value)? success,
    TResult Function(SearchErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SearchSuccessState implements SearchState {
  const factory SearchSuccessState(
      {required String query,
      required SearchType type,
      List<Photo>? photos,
      List<PhotoCollection>? collections,
      List<UserProfile>? userProfiles}) = _$SearchSuccessState;

  @override
  String get query => throw _privateConstructorUsedError;
  @override
  SearchType get type => throw _privateConstructorUsedError;
  List<Photo>? get photos => throw _privateConstructorUsedError;
  List<PhotoCollection>? get collections => throw _privateConstructorUsedError;
  List<UserProfile>? get userProfiles => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SearchSuccessStateCopyWith<SearchSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchErrorStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory $SearchErrorStateCopyWith(
          SearchErrorState value, $Res Function(SearchErrorState) then) =
      _$SearchErrorStateCopyWithImpl<$Res>;
  @override
  $Res call({String message, String query, SearchType type});
}

/// @nodoc
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
    Object? message = freezed,
    Object? query = freezed,
    Object? type = freezed,
  }) {
    return _then(SearchErrorState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SearchType,
    ));
  }
}

/// @nodoc
class _$SearchErrorState implements SearchErrorState {
  const _$SearchErrorState(
      {required this.message, required this.query, required this.type});

  @override
  final String message;
  @override
  final String query;
  @override
  final SearchType type;

  @override
  String toString() {
    return 'SearchState.error(message: $message, query: $query, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchErrorState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(query) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  $SearchErrorStateCopyWith<SearchErrorState> get copyWith =>
      _$SearchErrorStateCopyWithImpl<SearchErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, SearchType type) searching,
    required TResult Function(
            String query,
            SearchType type,
            List<Photo>? photos,
            List<PhotoCollection>? collections,
            List<UserProfile>? userProfiles)
        success,
    required TResult Function(String message, String query, SearchType type)
        error,
  }) {
    return error(message, query, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, SearchType type)? searching,
    TResult Function(
            String query,
            SearchType type,
            List<Photo>? photos,
            List<PhotoCollection>? collections,
            List<UserProfile>? userProfiles)?
        success,
    TResult Function(String message, String query, SearchType type)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, query, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchingState value) searching,
    required TResult Function(SearchSuccessState value) success,
    required TResult Function(SearchErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchingState value)? searching,
    TResult Function(SearchSuccessState value)? success,
    TResult Function(SearchErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchErrorState implements SearchState {
  const factory SearchErrorState(
      {required String message,
      required String query,
      required SearchType type}) = _$SearchErrorState;

  String get message => throw _privateConstructorUsedError;
  @override
  String get query => throw _privateConstructorUsedError;
  @override
  SearchType get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SearchErrorStateCopyWith<SearchErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
