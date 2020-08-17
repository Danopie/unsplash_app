import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unsplash_app/authentication/data/model/user_info.dart';
import 'package:unsplash_app/authentication/login/login_page.dart';
import 'package:unsplash_app/authentication/user/user_controller.dart';
import 'package:unsplash_app/authentication/user/user_state.dart';

class UserStatusBuilder extends HookWidget {
  final Widget Function(UserState) builder;
  final bool loginToTap;
  final Function onTap;

  UserStatusBuilder({
    this.builder,
    this.loginToTap = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final userState = useProvider(userControllerProvider.state);
    if (loginToTap) {
      return InkWell(
        child: builder(userState),
        onTap: () async {
          if (userState is LoggedInUserState) {
            onTap();
          } else {
            await Navigator.of(context).push(LoginPage.route);
            await Future.delayed(Duration(milliseconds: 200));
            onTap();
          }
        },
      );
    } else {
      return builder(userState);
    }
  }
}
