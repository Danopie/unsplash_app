import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unsplash_app/authentication/data/model/user_profile.dart';
import 'package:unsplash_app/core/repository/repository.dart';
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

  Future<List<Photo>> getPhotos(int page, [PhotoSort? sort]) async {
    if (await hasConnectivity) {
      final photos = await _photoApiProvider.getPhotos(page, sort?.query);
      await _photoDatabaseProvider.savePhotos(photos);
      return photos;
    } else {
      final photos = await _photoDatabaseProvider.getPhotos();
      return photos;
    }
  }

  Future<Photo> getPhoto(String id) async {
    final photo = await _photoApiProvider.getPhoto(id);
    return photo;
  }

  Future<void> likePhoto(String? id) async {
    try {
      await _photoApiProvider.likePhoto(id);
    } on Exception {}
  }

  Future<void> unlikePhoto(String? id) async {
    try {
      await _photoApiProvider.unlikePhoto(id);
    } on Exception {}
  }

  Future<List<Photo>> searchPhotos(String query) async {
    final photos = await _photoApiProvider.searchPhotos(query);
    return photos ?? <Photo>[];
  }

  Future<List<PhotoCollection>> searchCollections(String query) async {
    final result = await _photoApiProvider.searchCollections(query);
    return result ?? <PhotoCollection>[];
  }

  Future<List<UserProfile>> searchUsers(String query) async {
    final result = await _photoApiProvider.searchUsers(query);
    return result ?? <UserProfile>[];
  }

  Future<List<Photo>> getRelatedPhotos(Photo photo) async {
    final photos = await _photoApiProvider.getRelatedPhotos(photo);
    return photos;
  }

  @override
  void dispose() {}
}
