import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unsplash_app/core/network/api_path.dart';
import 'package:unsplash_app/core/network/api_provider.dart';
import 'package:unsplash_app/photos/data/model/get_photos_response.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';

final photoApiProvider = Provider((ref) => PhotoApiProvider(ref));

class PhotoApiProvider extends ApiProvider {
  PhotoApiProvider(ProviderReference ref)
      : super(ref.read(dioProvider(EndPoint.MAIN)));

  Future<List<Photo>> getPhotos(int page, [String query]) async {
    final params = <String, dynamic>{"page": page};
    if (query != null) {
      params["order_by"] = query;
    }
    final response = await get<String>(ApiPath.photo, params);
    final data = photoFromJson(response);
    return data;
  }
}

class ApiPath {
  static const String photo = "/photos";
}
