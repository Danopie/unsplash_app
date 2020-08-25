import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unsplash_app/authentication/data/model/user_info.dart';
import 'package:unsplash_app/authentication/data/model/user_profile.dart';

part 'user_state.freezed.dart';

@freezed
abstract class UserState with _$UserState {

  const factory UserState.initial() = InitialUserState;

  const factory UserState.loggedIn({UserToken token, UserProfile profile}) = LoggedInUserState;

  const factory UserState.notLoggedIn() = NotLoggedInUserState;

}
