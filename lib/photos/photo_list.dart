import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unsplash_app/home/home_page.dart';
import 'package:unsplash_app/photo_detail/photo_detail_screen.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
import 'package:unsplash_app/photos/photo_item.dart';

import 'domain/photos_controller.dart';

class PhotoList extends HookWidget {
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
      child: SliverPadding(
        padding: EdgeInsets.zero,
        sliver: SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              if (index == _getListLength() - 1 && loading) {
                return Container(
                    margin: EdgeInsets.symmetric(vertical: 32),
                    child: HomeLoading());
              } else {
                return PhotoItem(
                  photo: photos[index],
                  onTap: () => PhotoDetailScreen.show(
                      context: context, id: photos[index].id),
                );
              }
            },
            childCount: _getListLength(),
          ),
        ),
      ),
    );
  }

  int _getListLength() => loading ? _getPhotosLength() + 1 : _getPhotosLength();

  int _getPhotosLength() => photos?.length ?? 0;
}
