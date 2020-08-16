import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lightweight_result/lightweight_result.dart';
import 'package:unsplash_app/core/base/repository.dart';
import 'package:unsplash_app/core/constants.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
import 'package:unsplash_app/photos/data/model/photo_sort.dart';
import 'package:unsplash_app/photos/data/photo_api_provider.dart';
import 'package:unsplash_app/photos/data/photo_db_provider.dart';

final photoRepositoryProvider = Provider((ref) => PhotoRepository(
    ref.read(photoApiProvider), ref.read(photoDatabaseProvider)));

class PhotoRepository extends Repository {
  final PhotoApiProvider photoApiProvider;
  final PhotoDatabaseProvider photoDatabaseProvider;

  PhotoRepository(this.photoApiProvider, this.photoDatabaseProvider);

  Future<Result<List<Photo>, String>> getPhotos(int page,
      [PhotoSort sort]) async {
    if (await hasConnectivity) {
      try {
        final photos = await photoApiProvider.getPhotos(page, sort?.query);
        await photoDatabaseProvider.savePhotos(photos);
        return Result.ok(photos);
      } on Exception {
        return Result.err(DEFAULT_ERROR_MESSAGE);
      }
    } else {
      final photos = await photoDatabaseProvider.getPhotos();
      if (photos != null) {
        return Result.ok(photos);
      } else {
        return Result.err("Connect to the internet");
      }
    }
  }

  @override
  void dispose() {}
}
