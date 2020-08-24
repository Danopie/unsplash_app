import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';

class PhotoDownloadDelegate {
  final String url;
  final String id;

  PhotoDownloadDelegate({this.url, this.id});

  Future<bool> run() async {
    if (await Permission.storage.request().isGranted) {
      return await _save();
    } else {
      return false;
    }
  }

  Future<bool> _save() async {
    var response = await Dio().get(
        url,
        options: Options(responseType: ResponseType.bytes));
    final result = await ImageGallerySaver.saveImage(
        Uint8List.fromList(response.data),
        quality: 60,
        name: id);
    print(result);
    return true;
  }
}