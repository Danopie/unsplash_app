import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unsplash_app/authentication/data/model/user_info.dart';
import 'package:unsplash_app/core/database/database.dart';

final userDatabaseProvider = Provider((ref) => UserDatabase());

class UserDatabase extends Database<UserInfo> {
  static const NAME = "user";

  @override
  String get dbName => NAME;

  Future<UserInfo> saveUser(UserInfo user) async {
    await put(NAME, user);
    return user;
  }

  Future<UserInfo> getUser() async {
    return await get(NAME);
  }

  Future<void> clearUser() async {
    await delete(NAME);
  }
}
