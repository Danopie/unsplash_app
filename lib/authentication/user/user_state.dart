import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unsplash_app/authentication/data/model/user_info.dart';

part 'user_state.freezed.dart';

@freezed
abstract class UserState with _$UserState {

  const factory UserState.initial() = InitialUserState;

  const factory UserState.loggedIn(UserInfo userInfo) = LoggedInUserState;

  const factory UserState.notLoggedIn() = NotLoggedInUserState;

}
