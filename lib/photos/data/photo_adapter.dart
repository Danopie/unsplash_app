import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';

class PhotoAdapter extends TypeAdapter<Photo> {
  @override
  Photo read(BinaryReader reader) {
    return Photo.fromJson(jsonDecode(reader.readString()));
  }

  @override
  int get typeId => 0;

  @override
  void write(BinaryWriter writer, Photo photo) {
    writer.writeString(jsonEncode((photo.toJson())));
  }
}
