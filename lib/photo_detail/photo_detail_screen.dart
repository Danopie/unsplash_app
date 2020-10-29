import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unsplash_app/home/home_app_bar.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
import 'package:unsplash_app/photos/domain/photos_controller.dart';
import 'package:unsplash_app/photos/photo_item.dart';
import 'package:unsplash_app/search/search_page.dart';

final photoProvider = Provider.family<Photo, String>(
  (ref, id) {
    final photos = ref.watch(photosProvider.state);
    return photos.maybeWhen(
      orElse: () => null,
      doneLoading: (photosState) =>
          photosState.firstWhere((element) => element.id == id),
    );
  },
);

class PhotoDetailScreen extends StatefulHookWidget {
  PhotoDetailScreen({this.id});

  static Future<dynamic> show({BuildContext context, String id}) {
    return Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PhotoDetailScreen(
          id: id,
        ),
      ),
    );
  }

  final String id;

  @override
  _PhotoDetailScreenState createState() => _PhotoDetailScreenState();
}

class _PhotoDetailScreenState extends State<PhotoDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final photo = useProvider(photoProvider(widget.id));
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          UnsplashAppBar(
            onUserSearch: (text) {
              SearchPage.show(context: context, initialQuery: text);
            },
            clearOnSearch: true,
          ),
          SliverToBoxAdapter(
            child: PhotoItem(
              photo: photo,
            ),
          ),
        ],
      ),
    );
  }
}
