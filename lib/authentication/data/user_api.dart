import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unsplash_app/authentication/data/model/user_info.dart';
import 'package:unsplash_app/authentication/data/model/user_profile.dart';
import 'package:unsplash_app/core/base/configuration.dart';
import 'package:unsplash_app/core/network/api.dart';
import 'package:unsplash_app/core/network/api_path.dart';

final userApiProvider = Provider((ref) => UserApi(
      ref.read(configurationProvider.future),
      ref.read(
        dioProvider(EndPoint.OAUTH),
      ),
    ));

class UserApi extends Api {
  final Future<Configuration> _configuration;

  UserApi(this._configuration, Dio _dio):super(_dio);

  Future<UserToken> getToken(String? requestCode) async {
    final config = await _configuration;

    final params = <String, dynamic>{
      "client_id": config.publicKey,
      "client_secret": config.secretKey,
      "code": requestCode,
      "redirect_uri": "urn:ietf:wg:oauth:2.0:oob",
      "grant_type": "authorization_code",
    };
    final response = await post("${EndPoint.OAUTH}${ApiPath.token}", params);
    return UserToken.fromJson(response);
  }

  Future<UserProfile> getPersonalProfile() async {
    final response = await get("${EndPoint.MAIN}${ApiPath.profile}");
    return UserProfile.fromJson(jsonDecode(response));
  }
}

class ApiPath {
  static const String token = "/token";
  static const String profile = "/me";
}
