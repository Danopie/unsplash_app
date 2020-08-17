import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lightweight_result/lightweight_result.dart';
import 'package:unsplash_app/authentication/data/model/user_info.dart';
import 'package:unsplash_app/authentication/data/user_api.dart';
import 'package:unsplash_app/authentication/data/user_db.dart';
import 'package:unsplash_app/core/base/repository.dart';
import 'package:unsplash_app/core/constants.dart';

final userRepositoryProvider = Provider((ref) =>
    UserRepository(ref.read(userApiProvider), ref.read(userDatabaseProvider)));

class UserRepository extends Repository {
  final UserApi _userApi;
  final UserDatabase _userDatabase;

  UserRepository(this._userApi, this._userDatabase);

  Future<Result<UserInfo, String>> login(String requestCode) async {
    if (await hasConnectivity) {
      try {
        final userInfo = await _userApi.getToken(requestCode);
        return Result.ok(userInfo);
      } on Exception {
        return Result.err(DEFAULT_ERROR_MESSAGE);
      }
    } else {
      return Result.err(DEFAULT_ERROR_MESSAGE);
    }
  }

  Future<Result<UserInfo, void>> save(UserInfo userInfo) async {
    try {
      final u = await _userDatabase.saveUser(userInfo);
      return Result.ok(u);
    } on Exception {
      return null;
    }
  }

  Future<Result<UserInfo, String>> getUserInfo() async {
    return (await runCatchingAsync<UserInfo>(_userDatabase.getUser))
        .mapError((e) => e.toString());
  }

  @override
  void dispose() {}
}
