import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:readmore/readmore.dart';
import 'package:unsplash_app/core/utils/color_utils.dart';
import 'package:unsplash_app/core/utils/iterable_utils.dart';
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
    final photoDetailState =
        useProvider(photoDetailControllerProvider(widget.photo).state);

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
          ..._buildRelatedPhoto(),
          if (IterableUtils.isNotEmpty(
              photoDetailState.relatedCollections?.results))
            ..._buildRelatedCollections(photoDetailState.relatedCollections!),
          if (IterableUtils.isNotEmpty(photoDetailState.relatedTags))
            ..._buildRelatedTags(photoDetailState.relatedTags!),
        ],
      ),
    );
  }

  List<Widget> _buildRelatedPhoto() {
    return [
      SliverToBoxAdapter(
        child: _buildRowTitle(title: "Related photos"),
      ),
      RelatedPhotoList(
        photo: widget.photo,
      ),
    ];
  }

  List<Widget> _buildRelatedCollections(RelatedCollections relatedCollections) {
    return [
      SliverToBoxAdapter(
        child: _buildRowTitle(
            title: "Related collections",
            padding: EdgeInsets.only(left: 12, right: 12, top: 56, bottom: 12)),
      ),
      PhotoCollectionList(
        relatedCollections: relatedCollections,
      ),
    ];
  }

  List<Widget> _buildRelatedTags(List<Tag> relatedTags) {
    return [
      SliverToBoxAdapter(
        child: _buildRowTitle(
            title: "Related tags",
            padding: EdgeInsets.only(left: 12, right: 12, top: 56, bottom: 12)),
      ),
      SliverPadding(
        padding: EdgeInsets.only(left: 12),
        sliver: SliverToBoxAdapter(
          child: RelatedTagList(
            tags: relatedTags,
          ),
        ),
      ),
    ];
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

  _buildRowTitle(
      {required String title,
      EdgeInsets padding =
          const EdgeInsets.only(left: 12, right: 12, top: 100, bottom: 12)}) {
    return Padding(
      padding: padding,
      child: Row(
        children: [
          Text(
            title,
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
        child: Center(
          child: Container(
              height: 24, width: 24, child: CircularProgressIndicator()),
        ),
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
    return PhotoNetworkImage(
      width: photo.width!.toDouble(),
      height: photo.height!.toDouble(),
      color: ColorUtils.fromHex(photo.color!),
      url: photo.urls?.regular ?? "",
    );
  }
}

class PhotoNetworkImage extends StatelessWidget {
  final double? width;
  final double? height;
  final String url;
  final Color? color;

  const PhotoNetworkImage({
    Key? key,
    this.width,
    this.height,
    required this.url,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
      child: CachedNetworkImage(
        width: width,
        height: height,
        imageUrl: url,
        fit: BoxFit.cover,
        fadeInDuration: Duration(milliseconds: 700),
      ),
    );
  }
}

class PhotoCollectionList extends StatelessWidget {
  final RelatedCollections relatedCollections;

  const PhotoCollectionList({Key? key, required this.relatedCollections})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.all(12),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final collection = relatedCollections.results![index];
            return _buildItem(context, collection);
          },
          childCount: relatedCollections.results!.length,
        ),
      ),
    );
  }

  Widget _buildItem(BuildContext context, PhotoCollection collection) {
    final photos = collection.previewPhotos;
    final bigImageWidth = MediaQuery.of(context).size.width * 2 / 3;

    return GestureDetector(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: bigImageWidth,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                PhotoNetworkImage(
                    width: bigImageWidth,
                    height: bigImageWidth,
                    url: photos![0].urls!.regular!),
                SizedBox(
                  width: 1,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                          child:
                              PhotoNetworkImage(url: photos[1].urls!.regular!)),
                      SizedBox(
                        height: 1,
                      ),
                      Expanded(
                          child:
                              PhotoNetworkImage(url: photos[2].urls!.regular!)),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            collection.title ?? "",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
              "${collection.totalPhotos} photos. Curated by ${collection.user?.name ?? ""}"),
          if (collection.tags != null)
            RelatedTagList(
              tags: collection.tags!,
            )
          else
            SizedBox(
              height: 32,
            ),
        ],
      ),
    );
  }
}

class RelatedTagList extends StatelessWidget {
  final List<Tag> tags;

  const RelatedTagList({Key? key, required this.tags}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 32, top: 8),
      child: Wrap(
        runSpacing: 6.0,
        spacing: 6.0,
        children: tags
            .map((e) =>
                e.title != null ? UnsplashBox(text: e.title!) : Container())
            .toList(),
      ),
    );
  }
}

class UnsplashBox extends StatelessWidget {
  final String text;

  const UnsplashBox({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: alto,
      ),
      child: Text(
        text,
        style: TextStyle(color: codGray, fontSize: 14),
      ),
    );
  }
}
