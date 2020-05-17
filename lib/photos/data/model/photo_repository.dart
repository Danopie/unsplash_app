import 'package:unsplash_app/core/base/repository.dart';
import 'package:unsplash_app/core/base/result.dart';
import 'package:unsplash_app/core/constants.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
import 'package:unsplash_app/photos/data/model/photo_sort.dart';
import 'package:unsplash_app/photos/data/photo_api_provider.dart';

class PhotoRepository extends Repository {
  final PhotoApiProvider photoApiProvider;

  PhotoRepository(this.photoApiProvider);

  Future<Result<List<Photo>>> getPhotos(int page, [PhotoSort sort]) async {
    try {
      final photos = await photoApiProvider.getPhotos(page, sort?.query);
      return Result.success(photos);
    } on Exception catch (e) {
      return Result.failure(DEFAULT_ERROR_MESSAGE, e);
    }
  }

  @override
  void dispose() {}
}
