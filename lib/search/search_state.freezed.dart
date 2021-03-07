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

  SearchingState searching({String? query}) {
    return SearchingState(
      query: query,
    );
  }

  SearchSuccessState success({List<Photo>? photos, String? query}) {
    return SearchSuccessState(
      photos: photos,
      query: query,
    );
  }

  SearchErrorState error({String? message, String? query}) {
    return SearchErrorState(
      message: message,
      query: query,
    );
  }
}

/// @nodoc
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  String? get query => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) searching,
    required TResult Function(List<Photo>? photos, String? query) success,
    required TResult Function(String? message, String? query) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? searching,
    TResult Function(List<Photo>? photos, String? query)? success,
    TResult Function(String? message, String? query)? error,
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
  $Res call({String? query});
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
  }) {
    return _then(_value.copyWith(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call({String? query});
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
  }) {
    return _then(SearchingState(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$SearchingState implements SearchingState {
  const _$SearchingState({this.query});

  @override
  final String? query;

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

  @JsonKey(ignore: true)
  @override
  $SearchingStateCopyWith<SearchingState> get copyWith =>
      _$SearchingStateCopyWithImpl<SearchingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) searching,
    required TResult Function(List<Photo>? photos, String? query) success,
    required TResult Function(String? message, String? query) error,
  }) {
    return searching(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? searching,
    TResult Function(List<Photo>? photos, String? query)? success,
    TResult Function(String? message, String? query)? error,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(query);
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
  const factory SearchingState({String? query}) = _$SearchingState;

  @override
  String? get query => throw _privateConstructorUsedError;
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
  $Res call({List<Photo>? photos, String? query});
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
    Object? photos = freezed,
    Object? query = freezed,
  }) {
    return _then(SearchSuccessState(
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$SearchSuccessState implements SearchSuccessState {
  const _$SearchSuccessState({this.photos, this.query});

  @override
  final List<Photo>? photos;
  @override
  final String? query;

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

  @JsonKey(ignore: true)
  @override
  $SearchSuccessStateCopyWith<SearchSuccessState> get copyWith =>
      _$SearchSuccessStateCopyWithImpl<SearchSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) searching,
    required TResult Function(List<Photo>? photos, String? query) success,
    required TResult Function(String? message, String? query) error,
  }) {
    return success(photos, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? searching,
    TResult Function(List<Photo>? photos, String? query)? success,
    TResult Function(String? message, String? query)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(photos, query);
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
  const factory SearchSuccessState({List<Photo>? photos, String? query}) =
      _$SearchSuccessState;

  List<Photo>? get photos => throw _privateConstructorUsedError;
  @override
  String? get query => throw _privateConstructorUsedError;
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
  $Res call({String? message, String? query});
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
  }) {
    return _then(SearchErrorState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$SearchErrorState implements SearchErrorState {
  const _$SearchErrorState({this.message, this.query});

  @override
  final String? message;
  @override
  final String? query;

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

  @JsonKey(ignore: true)
  @override
  $SearchErrorStateCopyWith<SearchErrorState> get copyWith =>
      _$SearchErrorStateCopyWithImpl<SearchErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) searching,
    required TResult Function(List<Photo>? photos, String? query) success,
    required TResult Function(String? message, String? query) error,
  }) {
    return error(message, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? searching,
    TResult Function(List<Photo>? photos, String? query)? success,
    TResult Function(String? message, String? query)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, query);
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
  const factory SearchErrorState({String? message, String? query}) =
      _$SearchErrorState;

  String? get message => throw _privateConstructorUsedError;
  @override
  String? get query => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SearchErrorStateCopyWith<SearchErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
