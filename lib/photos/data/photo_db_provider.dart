import 'package:unsplash_app/core/database/database_provider.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';

class PhotoDatabaseProvider extends DatabaseProvider<Photo> {
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
