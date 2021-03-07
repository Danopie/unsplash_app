import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';

class PhotoDownloadDelegate {
  final String url;
  final String id;
  final BuildContext context;

  PhotoDownloadDelegate({this.url, this.id, this.context});

  Future<void> run() async {
    showMessage(
      message: "Downloading photo",
    );

    if (await Permission.storage.request().isGranted) {
      await _save();

      showMessage(
        message: "Photo downloaded",
      );
    } else {
      showMessage(
        message: "Please grant Unsplash photo download permission",
      );
    }
  }

  void showMessage({String message}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: Duration(seconds: 1),
    ));
  }

  Future<bool> _save() async {
    var response = await Dio()
        .get(url, options: Options(responseType: ResponseType.bytes));
    await ImageGallerySaver.saveImage(Uint8List.fromList(response.data),
        quality: 60, name: id);
    return true;
  }
}
