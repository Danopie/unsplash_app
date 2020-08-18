import 'dart:async';

import 'package:build_context/build_context.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unsplash_app/authentication/login/login_controller.dart';
import 'package:unsplash_app/authentication/login/login_state.dart';
import 'package:unsplash_app/home/home_page.dart';
import 'package:unsplash_app/res/color.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoginPage extends StatelessWidget {
  static get route => PageRouteBuilder(
        pageBuilder: (_, animation, secondaryAnimation) =>
            CupertinoFullscreenDialogTransition(
          linearTransition: true,
          primaryRouteAnimation: animation,
          secondaryRouteAnimation: secondaryAnimation,
          child: LoginPage(),
        ),
        fullscreenDialog: true,
        opaque: false,
      );

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      backgroundColor: Colors.white,
      body: ProviderListener<LoginState>(
        provider: loginProvider.state,
        onChange: (state) {
          if (state is LoginDone) {
            Navigator.of(context).pop(true);
          }
        },
        child: HookBuilder(
          builder: (_) {
            final state = useProvider(loginProvider.state);
            return state.when<Widget>(
              requestingCode: () => Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 56),
                    child: WebView(
                      initialUrl:
                          'https://unsplash.com/oauth/authorize?client_id=e1f727f5883ce60b2c90df7f0688e2a60242d6ab8c041206fd056bdb68e55613&response_type=code&scope=public+read_user+read_photos+write_photos+write_likes+write_followers+read_collections+write_collections&redirect_uri=urn:ietf:wg:oauth:2.0:oob',
                      javascriptMode: JavascriptMode.unrestricted,
                      onWebViewCreated: (WebViewController webViewController) {
                        _controller.complete(webViewController);
                        webViewController.clearCache();
                      },
                      navigationDelegate: (NavigationRequest request) {
                        if (request.url.contains(
                            'https://unsplash.com/oauth/authorize/native')) {
                          print('blocking navigation to $request}');

                          _handleUrlWithCode(context, request.url);
                          return NavigationDecision.prevent;
                        }
                        print('allowing navigation to $request');
                        return NavigationDecision.navigate;
                      },
                      onPageStarted: (String url) {
                        print('Page started loading: $url');
                      },
                      onPageFinished: (String url) {
                        print('Page finished loading: $url');
                      },
                      gestureNavigationEnabled: true,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 56,
                      margin: EdgeInsets.only(
                          left: 12, top: context.mediaQueryPadding.top + 12),
                      child: BackButton(
                        color: boulder,
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                      ),
                    ),
                  )
                ],
              ),
              requestingToken: () => HomeLoading(),
              error: (message) => Center(
                child: Text(message),
              ),
              done: () => Center(
                child: Text("Login successful"),
              ),
            );
          },
        ),
      ),
    );
  }

  void _handleUrlWithCode(BuildContext context, String url) {
    final uri = Uri.tryParse(url);
    context.read(loginProvider).onCodeRequested(uri.queryParameters["code"]);
  }
}
