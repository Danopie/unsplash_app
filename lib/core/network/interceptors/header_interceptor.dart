import 'package:dio/dio.dart';

class HeaderInterceptor extends Interceptor {
  @override
  Future onRequest(RequestOptions options) async {
    options.headers.addAll({
      "Authorization":
          "Client-ID e1f727f5883ce60b2c90df7f0688e2a60242d6ab8c041206fd056bdb68e55613"
    });
    return options;
  }
}
