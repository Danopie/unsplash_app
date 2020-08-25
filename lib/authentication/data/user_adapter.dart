import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:unsplash_app/authentication/data/model/user_info.dart';

class UserInfoAdapter extends TypeAdapter<UserToken> {
  @override
  UserToken read(BinaryReader reader) {
    return UserToken.fromJson(jsonDecode(reader.readString()));
  }

  @override
  int get typeId => 1;

  @override
  void write(BinaryWriter writer, UserToken userInfo) {
    writer.writeString(jsonEncode((userInfo.toJson())));
  }
}
