import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unsplash_app/core/utils/color_utils.dart';
import 'package:unsplash_app/home/home_page.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
import 'package:unsplash_app/photos/data/model/photo_sort.dart';
import 'package:unsplash_app/photos/photo_item.dart';

import 'domain/photos_controller.dart';

class PhotoList extends StatelessWidget {
  final List<Photo> photos;
  final bool loading;

  const PhotoList({
    Key key,
    this.photos,
    this.loading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollUpdateNotification>(
      onNotification: (notification) {
        if (notification.metrics.pixels >
            notification.metrics.maxScrollExtent - 100) {
          context.read(photosProvider).onLoadMore();
        }
        return false;
      },
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          if (index == _getListLength() - 1) {
            return Container(
                margin: EdgeInsets.symmetric(vertical: 32),
                child: HomeLoading());
          } else {
            return PhotoItem(
              photo: photos[index],
            );
          }
        },
        itemCount: _getListLength(),
      ),
    );
  }

  int _getListLength() => loading ? _getPhotosLength() + 1 : _getPhotosLength();

  int _getPhotosLength() => photos?.length ?? 0;
}
