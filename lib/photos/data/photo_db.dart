import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unsplash_app/core/database/database.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';

final photoDatabaseProvider = Provider((ref) => PhotoDatabase());

class PhotoDatabase extends Database<Photo> {
  static const NAME = "photos1";

  @override
  String get dbName => NAME;

  Future<List<Photo>> getPhotos() async {
    return await getAll();
  }

  Future<void> savePhotos(List<Photo> photos) async {
    photos.forEach((photo) {
      add(photo);
    });
  }
}
