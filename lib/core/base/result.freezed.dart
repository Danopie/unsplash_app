// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ResultTearOff {
  const _$ResultTearOff();

  ResultSuccess<T> success<T>(T data) {
    return ResultSuccess<T>(
      data,
    );
  }

  ResultFailure<T> failure<T>([String message, Exception exception]) {
    return ResultFailure<T>(
      message,
      exception,
    );
  }
}

// ignore: unused_element
const $Result = _$ResultTearOff();

mixin _$Result<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(T data),
    @required Result failure(String message, Exception exception),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(T data),
    Result failure(String message, Exception exception),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(ResultSuccess<T> value),
    @required Result failure(ResultFailure<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(ResultSuccess<T> value),
    Result failure(ResultFailure<T> value),
    @required Result orElse(),
  });
}

abstract class $ResultCopyWith<T, $Res> {
  factory $ResultCopyWith(Result<T> value, $Res Function(Result<T>) then) =
      _$ResultCopyWithImpl<T, $Res>;
}

class _$ResultCopyWithImpl<T, $Res> implements $ResultCopyWith<T, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result<T> _value;
  // ignore: unused_field
  final $Res Function(Result<T>) _then;
}

abstract class $ResultSuccessCopyWith<T, $Res> {
  factory $ResultSuccessCopyWith(
          ResultSuccess<T> value, $Res Function(ResultSuccess<T>) then) =
      _$ResultSuccessCopyWithImpl<T, $Res>;
  $Res call({T data});
}

class _$ResultSuccessCopyWithImpl<T, $Res> extends _$ResultCopyWithImpl<T, $Res>
    implements $ResultSuccessCopyWith<T, $Res> {
  _$ResultSuccessCopyWithImpl(
      ResultSuccess<T> _value, $Res Function(ResultSuccess<T>) _then)
      : super(_value, (v) => _then(v as ResultSuccess<T>));

  @override
  ResultSuccess<T> get _value => super._value as ResultSuccess<T>;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(ResultSuccess<T>(
      data == freezed ? _value.data : data as T,
    ));
  }
}

class _$ResultSuccess<T> implements ResultSuccess<T> {
  const _$ResultSuccess(this.data) : assert(data != null);

  @override
  final T data;

  @override
  String toString() {
    return 'Result<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResultSuccess<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $ResultSuccessCopyWith<T, ResultSuccess<T>> get copyWith =>
      _$ResultSuccessCopyWithImpl<T, ResultSuccess<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(T data),
    @required Result failure(String message, Exception exception),
  }) {
    assert(success != null);
    assert(failure != null);
    return success(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(T data),
    Result failure(String message, Exception exception),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(ResultSuccess<T> value),
    @required Result failure(ResultFailure<T> value),
  }) {
    assert(success != null);
    assert(failure != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(ResultSuccess<T> value),
    Result failure(ResultFailure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ResultSuccess<T> implements Result<T> {
  const factory ResultSuccess(T data) = _$ResultSuccess<T>;

  T get data;
  $ResultSuccessCopyWith<T, ResultSuccess<T>> get copyWith;
}

abstract class $ResultFailureCopyWith<T, $Res> {
  factory $ResultFailureCopyWith(
          ResultFailure<T> value, $Res Function(ResultFailure<T>) then) =
      _$ResultFailureCopyWithImpl<T, $Res>;
  $Res call({String message, Exception exception});
}

class _$ResultFailureCopyWithImpl<T, $Res> extends _$ResultCopyWithImpl<T, $Res>
    implements $ResultFailureCopyWith<T, $Res> {
  _$ResultFailureCopyWithImpl(
      ResultFailure<T> _value, $Res Function(ResultFailure<T>) _then)
      : super(_value, (v) => _then(v as ResultFailure<T>));

  @override
  ResultFailure<T> get _value => super._value as ResultFailure<T>;

  @override
  $Res call({
    Object message = freezed,
    Object exception = freezed,
  }) {
    return _then(ResultFailure<T>(
      message == freezed ? _value.message : message as String,
      exception == freezed ? _value.exception : exception as Exception,
    ));
  }
}

class _$ResultFailure<T> implements ResultFailure<T> {
  const _$ResultFailure([this.message, this.exception]);

  @override
  final String message;
  @override
  final Exception exception;

  @override
  String toString() {
    return 'Result<$T>.failure(message: $message, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResultFailure<T> &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(exception);

  @override
  $ResultFailureCopyWith<T, ResultFailure<T>> get copyWith =>
      _$ResultFailureCopyWithImpl<T, ResultFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(T data),
    @required Result failure(String message, Exception exception),
  }) {
    assert(success != null);
    assert(failure != null);
    return failure(message, exception);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(T data),
    Result failure(String message, Exception exception),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(message, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(ResultSuccess<T> value),
    @required Result failure(ResultFailure<T> value),
  }) {
    assert(success != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(ResultSuccess<T> value),
    Result failure(ResultFailure<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ResultFailure<T> implements Result<T> {
  const factory ResultFailure([String message, Exception exception]) =
      _$ResultFailure<T>;

  String get message;
  Exception get exception;
  $ResultFailureCopyWith<T, ResultFailure<T>> get copyWith;
}
