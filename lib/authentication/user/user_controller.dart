import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lightweight_result/lightweight_result.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:unsplash_app/authentication/data/model/user_info.dart';
import 'package:unsplash_app/authentication/data/user_repository.dart';
import 'package:unsplash_app/authentication/user/token_cache.dart';

import 'user_state.dart';

final userControllerProvider = StateNotifierProvider((ref) => UserController(
    ref.read(userRepositoryProvider), ref.read(tokenCacheProvider)));

class UserController extends StateNotifier<UserState> {
  final UserRepository _userRepository;
  final TokenCache _tokenCache;

  UserController(this._userRepository, this._tokenCache)
      : super(UserState.initial()) {
    onInit();
  }

  Future<void> onInit() async {
    final userInfo = (await _userRepository.getUserInfo()).getOr(() => null);
    if (userInfo != null) {
      _tokenCache.updateToken(userInfo.access_token);
      state = UserState.loggedIn(userInfo);
    } else {
      state = UserState.notLoggedIn();
    }
  }

  Future<void> onUserLogin(UserInfo userInfo) async {
    state = UserState.loggedIn(userInfo);
    _tokenCache.updateToken(userInfo.access_token);
    await _userRepository.saveUser(userInfo);
  }

  Future<void> onUserLogout() async {
    state = UserState.notLoggedIn();
    _tokenCache.updateToken(null);
    await _userRepository.clearUser();
  }
}
