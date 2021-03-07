import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
import 'package:unsplash_app/photos/data/model/photo_sort.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {

  const factory LoginState.requestingCode() = RequestingCode;

  const factory LoginState.requestingToken() = RequestingToken;

  const factory LoginState.error({String? message}) = LoginError;

  const factory LoginState.done() = LoginDone;
}
