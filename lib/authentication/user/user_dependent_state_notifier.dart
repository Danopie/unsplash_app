import 'package:state_notifier/state_notifier.dart';
import 'package:unsplash_app/authentication/user/user_controller.dart';
import 'package:unsplash_app/authentication/user/user_state.dart';

abstract class UserDependentStateNotifier<T> extends StateNotifier<T> {
  final UserController _userController;
  Function removeListener;

  UserDependentStateNotifier(this._userController, T state) : super(state) {
    _waitForUserStatus();
  }

  void _waitForUserStatus() {
    removeListener = _userController.addListener(
          (state) {
        if (state is LoggedInUserState || state is NotLoggedInUserState) {
          init(state);
        }
      },
    );
  }

  void init(UserState state);

  @override
  void dispose() {
    removeListener();
    super.dispose();
  }
}