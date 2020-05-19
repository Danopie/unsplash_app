import 'package:injectable/injectable.dart';
import 'package:unsplash_app/core/base/repository.dart';
import 'package:unsplash_app/core/base/result.dart';
import 'package:unsplash_app/core/constants.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
import 'package:unsplash_app/photos/data/model/photo_sort.dart';
import 'package:unsplash_app/photos/data/photo_api_provider.dart';
import 'package:unsplash_app/photos/data/photo_db_provider.dart';

@singleton
class PhotoRepository extends Repository {
  final PhotoApiProvider photoApiProvider;
  final PhotoDatabaseProvider photoDatabaseProvider;

  PhotoRepository(this.photoApiProvider, this.photoDatabaseProvider);

  Future<Result<List<Photo>>> getPhotos(int page, [PhotoSort sort]) async {
    if (await hasConnectivity) {
      try {
        final photos = await photoApiProvider.getPhotos(page, sort?.query);
        await photoDatabaseProvider.savePhotos(photos);
        return Result.success(photos);
      } on Exception catch (e) {
        return Result.failure(DEFAULT_ERROR_MESSAGE, e);
      }
    } else {
      final photos = await photoDatabaseProvider.getPhotos();
      if (photos != null) {
        return Result.success(photos);
      } else {
        return Result.failure("Connect to the internet", null);
      }
    }
  }

  @override
  void dispose() {}
}
