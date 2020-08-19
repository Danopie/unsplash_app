import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unsplash_app/authentication/data/model/user_info.dart';
import 'package:unsplash_app/authentication/user/token_cache.dart';
import 'package:unsplash_app/authentication/user/user_controller.dart';
import 'package:unsplash_app/authentication/user/user_state.dart';
import 'package:unsplash_app/core/base/configuration.dart';
import 'package:unsplash_app/core/network/header.dart';

final headerInterceptorProvider = Provider((ref) => HeaderInterceptor(
    ref.read(configurationProvider.future), ref.read(tokenCacheProvider)));

class HeaderInterceptor extends Interceptor {
  final Future<Configuration> _configuration;
  final TokenCache _tokenCache;

  HeaderInterceptor(this._configuration, this._tokenCache);

  @override
  Future onRequest(RequestOptions options) async {
    final publicKey = (await _configuration).publicKey;
    final _accessToken = _tokenCache.token;

    options.headers.addAll({
      if (_accessToken != null && _accessToken.isNotEmpty)
        Authorization: "Bearer ${_accessToken}"
      else
        Authorization: "Client-ID ${publicKey}"
    });
    return options;
  }
}
