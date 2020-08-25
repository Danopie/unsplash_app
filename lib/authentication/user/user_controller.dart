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
    final userToken = (await _userRepository.getUserToken()).getOr(() => null);
    if (userToken != null) {
      _tokenCache.updateToken(userToken.access_token);
      final userProfile = (await _userRepository.getUserInfo()).getOr(() => null);
      state = UserState.loggedIn(token: userToken, profile: userProfile);
    } else {
      state = UserState.notLoggedIn();
    }
  }

  Future<void> onUserLogin(UserToken token) async {
    _tokenCache.updateToken(token.access_token);
    final userProfile = (await _userRepository.getUserInfo()).getOr(() => null);
    state = UserState.loggedIn(token: token, profile: userProfile);
    await _userRepository.saveUserToken(token);
  }

  Future<void> onUserLogout() async {
    state = UserState.notLoggedIn();
    _tokenCache.updateToken(null);
    await _userRepository.clearUserToken();
  }
}
