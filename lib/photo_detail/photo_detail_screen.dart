import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:readmore/readmore.dart';
import 'package:unsplash_app/core/utils/color_utils.dart';
import 'package:unsplash_app/home/home_app_bar.dart';
import 'package:unsplash_app/photo_detail/photo_detail_controller.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
import 'package:unsplash_app/photos/domain/photos_controller.dart';
import 'package:unsplash_app/photos/photo_item.dart';
import 'package:unsplash_app/res/color.dart';
import 'package:unsplash_app/search/search_page.dart';

final photoProvider = Provider.family<Photo, String>(
  (ref, id) {
    final photos = ref.watch(photosProvider.state);
    return photos.maybeWhen(
      orElse: (() => null) as Photo Function(),
      doneLoading: (photos) => photos.firstWhere((element) => element.id == id),
    );
  },
);

class PhotoDetailScreen extends StatefulHookWidget {
  PhotoDetailScreen({required this.photo});

  static Future<dynamic> show(
      {required BuildContext context, required Photo photo}) {
    return Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PhotoDetailScreen(
          photo: photo,
        ),
      ),
    );
  }

  final Photo photo;

  @override
  _PhotoDetailScreenState createState() => _PhotoDetailScreenState();
}

class _PhotoDetailScreenState extends State<PhotoDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          UnsplashAppBar(
            onUserSearch: (text) {
              SearchPage.show(context: context, initialQuery: text);
            },
            clearOnSearch: true,
            initialSearchText: '',
          ),
          SliverToBoxAdapter(
            child: PhotoItem(
              photo: widget.photo,
              layoutStrategy: PhotoItemLayoutStrategy.Detail,
            ),
          ),
          SliverToBoxAdapter(
            child: _buildExtraInfoRow(widget.photo),
          ),
          SliverToBoxAdapter(
            child: _buildRelatedPhotoTitle(),
          ),
          RelatedPhotoList(
            photo: widget.photo,
          ),
        ],
      ),
    );
  }

  Widget _buildExtraInfoRow(Photo photo) {
    return Container(
      padding: EdgeInsets.only(left: 12, right: 12, bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: PhotoDescription(
              description: photo.description,
            ),
          ),
          UnsplashButton(
            borderColor: boulder,
            child: Icon(
              Icons.share,
              color: boulder,
              size: 18,
            ),
            onTap: () {
              //TODO add share
            },
          ),
          SizedBox(
            width: 12,
          ),
          UnsplashButton(
            borderColor: boulder,
            child: Icon(
              Icons.info_outline,
              color: boulder,
              size: 18,
            ),
            onTap: () {
              //TODO add share
            },
          )
        ],
      ),
    );
  }

  _buildRelatedPhotoTitle() {
    return Padding(
      padding: EdgeInsets.only(left: 12, right: 12, top: 100),
      child: Row(
        children: [
          Text(
            "Related photos",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}

class PhotoDescription extends HookWidget {
  final String? description;

  const PhotoDescription({Key? key, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = description ?? "";
    final isExpanded = useState(false);
    if (!isExpanded.value) {
      return ReadMoreText(
        text,
        trimLines: 1,
        colorClickableText: boulder,
        trimMode: TrimMode.Line,
        trimCollapsedText: 'Show more',
        trimExpandedText: 'Show less',
        style: TextStyle(fontSize: 14, color: codGray),
        moreStyle: TextStyle(fontSize: 14, color: boulder),
        callback: (expanded) {
          isExpanded.value = !expanded;
        },
      );
    } else {
      return Text(
        text,
        style: TextStyle(fontSize: 14, color: codGray),
      );
    }
  }
}

class RelatedPhotoList extends HookWidget {
  final Photo photo;

  const RelatedPhotoList({Key? key, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final photoDetailState =
        useProvider(photoDetailControllerProvider(photo).state);
    final relatedPhotos = photoDetailState.relatedPhotos;
    if (relatedPhotos == null)
      return SliverToBoxAdapter(
        child: CircularProgressIndicator(),
      );
    else {
      return SliverPadding(
        padding: EdgeInsets.all(12),
        sliver: SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final photo = relatedPhotos[index];
              return GestureDetector(
                onTap: () {
                  PhotoDetailScreen.show(context: context, photo: photo);
                },
                child: PhotoThumbnail(
                  photo: photo,
                ),
              );
            },
            childCount: relatedPhotos.length,
          ),
        ),
      );
    }
  }
}

class PhotoThumbnail extends StatelessWidget {
  final Photo photo;

  const PhotoThumbnail({Key? key, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: photo.width!.toDouble(),
      height: photo.height!.toDouble(),
      color: ColorUtils.fromHex(photo.color!),
      child: CachedNetworkImage(
        imageUrl: photo.urls?.regular ?? "",
        width: double.infinity,
        fit: BoxFit.cover,
        fadeInDuration: Duration(milliseconds: 700),
      ),
    );
  }
}
