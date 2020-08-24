import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lightweight_result/lightweight_result.dart';
import 'package:unsplash_app/core/base/repository.dart';
import 'package:unsplash_app/core/constants.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
import 'package:unsplash_app/photos/data/model/photo_sort.dart';
import 'package:unsplash_app/photos/data/photo_api.dart';
import 'package:unsplash_app/photos/data/photo_db.dart';

final photoRepositoryProvider = Provider((ref) => PhotoRepository(
    ref.read(photoApiProvider), ref.read(photoDatabaseProvider)));

class PhotoRepository extends Repository {
  final PhotoApi _photoApiProvider;
  final PhotoDatabase _photoDatabaseProvider;

  PhotoRepository(this._photoApiProvider, this._photoDatabaseProvider);

  Future<Result<List<Photo>, String>> getPhotos(int page,
      [PhotoSort sort]) async {
    if (await hasConnectivity) {
      try {
        final photos = await _photoApiProvider.getPhotos(page, sort?.query);
        await _photoDatabaseProvider.savePhotos(photos);
        return Result.ok(photos);
      } on Exception {
        return Result.err(DEFAULT_ERROR_MESSAGE);
      }
    } else {
      final photos = await _photoDatabaseProvider.getPhotos();
      if (photos != null) {
        return Result.ok(photos);
      } else {
        return Result.err("Connect to the internet");
      }
    }
  }

  Future<void> likePhoto(String id) async {
    try {
      await _photoApiProvider.likePhoto(id);
    } on Exception {}
  }

  Future<void> unlikePhoto(String id) async {
    try {
      await _photoApiProvider.unlikePhoto(id);
    } on Exception {}
  }

  Future<Result<List<Photo>, String>> searchPhotos(String query) async {
    if (await hasConnectivity) {
      try {
        final photos = await _photoApiProvider.searchPhotos(query);
        return Result.ok(photos);
      } on Exception {
        return Result.err(DEFAULT_ERROR_MESSAGE);
      }
    }
  }


  @override
  void dispose() {}
}
