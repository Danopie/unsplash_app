import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lightweight_result/lightweight_result.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:unsplash_app/authentication/data/model/user_info.dart';
import 'package:unsplash_app/authentication/data/user_repository.dart';
import 'package:unsplash_app/authentication/login/login_state.dart';
import 'package:unsplash_app/authentication/user/user_controller.dart';

final loginProvider = StateNotifierProvider.autoDispose((ref) => LoginController(ref.read));

class LoginController extends StateNotifier<LoginState> {
  final Reader _read;
  final UserRepository _userRepository;

  LoginController(this._read)
      : _userRepository = _read(userRepositoryProvider),
        super(RequestingCode());

  Future<void> onCodeRequested(String code) async {
    state = LoginState.requestingToken();

    final userInfoResult = await _userRepository.login(code);
    if (userInfoResult.isSuccess) {
      _notifyUserLoggedIn(userInfoResult.get());
      state = LoginState.done();
    } else {
      state = LoginState.error(message: userInfoResult.getError());
    }
  }

  void _notifyUserLoggedIn(UserToken userInfo) {
    final userController = _read(userControllerProvider);
    userController.onUserLogin(userInfo);
  }
}
