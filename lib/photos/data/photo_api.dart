import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unsplash_app/authentication/data/model/user_profile.dart';
import 'package:unsplash_app/core/network/api.dart';
import 'package:unsplash_app/core/network/api_path.dart';
import 'package:unsplash_app/photos/data/model/get_photos_response.dart';
import 'package:unsplash_app/photos/data/model/get_related_photo_response.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';

import 'model/search_photo_response.dart';

final photoApiProvider =
    Provider((ref) => PhotoApi(ref.read(dioProvider((EndPoint.MAIN)))));

class PhotoApi extends Api {
  PhotoApi(Dio dio) : super(dio);

  Future<List<Photo>> getPhotos(int page, [String? query]) async {
    final params = <String, dynamic>{"page": page};
    if (query != null) {
      params["order_by"] = query;
    }
    final response = await get("${EndPoint.MAIN}${ApiPath.photo}", params);
    final data = photoFromJson(response);
    return data;
  }

  Future<Photo> getPhoto(String id) async {
    final response = await get("${EndPoint.MAIN}${ApiPath.photo}/$id");
    final data = Photo.fromJson(jsonDecode(response));
    return data;
  }

  Future<void> likePhoto(String? id) async {
    await post("${EndPoint.MAIN}${ApiPath.photo}/$id/like");
  }

  Future<void> unlikePhoto(String? id) async {
    await delete("${EndPoint.MAIN}${ApiPath.photo}/$id/like");
  }

  Future<List<Photo>?> searchPhotos(String query) async {
    final response = await get("${EndPoint.MAIN}${ApiPath.searchPhoto}",
        <String, String>{"query": query});
    final data = SearchPhotoResponse.fromJson(jsonDecode(response));
    return data.results;
  }

  Future<List<PhotoCollection>?> searchCollections(String query) async {
    final response = await get("${EndPoint.MAIN}${ApiPath.searchCollection}",
        <String, String>{"query": query});
    final data = SearchCollectionsResponse.fromJson(jsonDecode(response));
    return data.results;
  }

  Future<List<UserProfile>?> searchUsers(String query) async {
    final response = await get("${EndPoint.MAIN}${ApiPath.searchUser}",
        <String, String>{"query": query});
    final data = SearchUserResponse.fromJson(jsonDecode(response));
    return data.results;
  }

  Future<List<Photo>> getRelatedPhotos(Photo photo) async {
    final response = await get(
        "${EndPoint.MAIN}${ApiPath.photo}/${photo.id}${ApiPath.related}");
    final data = getRelatedPhotoResponseFromJson(response);
    return data.results;
  }
}

class ApiPath {
  static const String photo = "/photos";
  static const String related = "/related";
  static const String searchPhoto = "/search/photos";
  static const String searchCollection = "/search/collections";
  static const String searchUser = "/search/users";
}
