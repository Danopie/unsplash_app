import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unsplash_app/authentication/data/model/user_info.dart';
import 'package:unsplash_app/authentication/data/model/user_profile.dart';
import 'package:unsplash_app/authentication/data/user_api.dart';
import 'package:unsplash_app/authentication/data/user_db.dart';
import 'package:unsplash_app/core/repository/repository.dart';

final userRepositoryProvider = Provider((ref) =>
    UserRepository(ref.read(userApiProvider), ref.read(userDatabaseProvider)));

class UserRepository extends Repository {
  final UserApi _userApi;
  final UserDatabase _userDatabase;

  UserRepository(this._userApi, this._userDatabase);

  Future<UserToken> login(String? requestCode) async {
    final userToken = await _userApi.getToken(requestCode);
    return userToken;
  }

  Future<void> saveUserToken(UserToken userInfo) async {
    await _userDatabase.saveUser(userInfo);
  }

  Future<void> clearUserToken() async {
    await _userDatabase.clearUser();
  }

  Future<UserToken?> getUserToken() async {
    return _userDatabase.getUser();
  }

  Future<UserProfile> getUserInfo() async {
    final userProfile = await _userApi.getPersonalProfile();
    return userProfile;
  }

  @override
  void dispose() {}
}
