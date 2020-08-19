import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:unsplash_app/authentication/data/model/user_info.dart';

class UserInfoAdapter extends TypeAdapter<UserInfo> {
  @override
  UserInfo read(BinaryReader reader) {
    return UserInfo.fromJson(jsonDecode(reader.readString()));
  }

  @override
  int get typeId => 1;

  @override
  void write(BinaryWriter writer, UserInfo userInfo) {
    writer.writeString(jsonEncode((userInfo.toJson())));
  }
}
