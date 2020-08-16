import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unsplash_app/core/bloc/bloc_provider.dart';
import 'package:unsplash_app/core/utils/color_utils.dart';
import 'package:unsplash_app/photos/bloc/bloc.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
import 'package:unsplash_app/photos/data/model/photo_sort.dart';

class PhotosFeed extends StatefulHookWidget {
  static Future<dynamic> show({BuildContext context}) {
    return Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PhotosFeed.newInstance()));
  }

  static Widget newInstance() => PhotosFeed();

  @override
  _PhotosFeedState createState() => _PhotosFeedState();
}

class _PhotosFeedState extends State<PhotosFeed> {
  @override
  void initState() {
    context.read(photosBlocProvider).add(InitialLoad());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = useProvider(photosBlocProvider.state);
    return Scaffold(body: Builder(
      builder: (BuildContext context) {
        if (state is PaginationLoadingPhotosState ||
            state is SortLoadingPhotosState ||
            state is LoadedPhotosState) {
          return PhotoList(
            photos: state.maybeWhen<List<Photo>>(
              orElse: () => List<Photo>(),
              paginationLoading: (photos, sorts, selectedSort) => photos,
              doneLoading: (photos, sorts, selectedSort) => photos,
            ),
            loading: state is PaginationLoadingPhotosState ||
                state is SortLoadingPhotosState,
          );
        } else if (state is InitialErrorPhotosState) {
          return PhotosError(message: state.message);
        } else {
          return PhotosLoading();
        }
      },
    ));
  }
}

class PhotosError extends StatelessWidget {
  final String message;

  const PhotosError({Key key, this.message}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Text(
        message,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    ));
  }
}

class PhotosLoading extends StatelessWidget {
  const PhotosLoading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}

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
      onNotification: (noti) {
        if (noti.metrics.pixels > noti.metrics.maxScrollExtent - 100) {
          context.bloc<PhotosBloc>().add(LoadMore());
        }
        return false;
      },
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          if (index == 0) {
            return PhotosSortBar();
          } else if (index == _getListLength() - 1) {
            return Container(
                margin: EdgeInsets.symmetric(vertical: 32),
                child: PhotosLoading());
          } else {
            return PhotoItem(
              photo: photos[index - 1],
            );
          }
        },
        itemCount: _getListLength(),
      ),
    );
  }

  int _getListLength() =>
      loading ? _getPhotosLength() + 2 : _getPhotosLength() + 1;

  int _getPhotosLength() => photos?.length ?? 0;
}

class PhotoItem extends StatelessWidget {
  const PhotoItem({
    Key key,
    this.photo,
  }) : super(key: key);

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _buildPhotoHeader(context),
          _buildPhoto(),
        ],
      ),
    );
  }

  AspectRatio _buildPhoto() {
    return AspectRatio(
      aspectRatio: photo.width / photo.height,
      child: Container(
        color: ColorUtils.fromHex(photo.color),
        child: CachedNetworkImage(
          imageUrl: photo.urls.regular,
          fadeInDuration: Duration(milliseconds: 700),
        ),
      ),
    );
  }

  Widget _buildPhotoHeader(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 12, bottom: 12),
      child: Row(
        children: <Widget>[
          ClipOval(
            child: CachedNetworkImage(
              width: 32,
              height: 32,
              imageUrl: photo.user.profile_image.small,
              fadeInCurve: Curves.easeInOut,
              fadeInDuration: Duration(milliseconds: 200),
            ),
          ),
          Container(
            width: 12,
          ),
          Column(
            children: <Widget>[
              Text(photo.user.name,
                  style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        ],
      ),
    );
  }
}

class PhotosSortBar extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return useProvider(photosBlocProvider.state).maybeWhen<Widget>(
      orElse: () => Container(),
      doneLoading: (photos, sorts, selectedSort) =>
          _buildSortList(context, sorts, selectedSort),
      paginationLoading: (photos, sorts, selectedSort) =>
          _buildSortList(context, sorts, selectedSort),
      sortLoading: (sorts, selectedSort) =>
          _buildSortList(context, sorts, selectedSort),
    );
  }

  Widget _buildSortList(
      BuildContext context, List<PhotoSort> sorts, PhotoSort selectedSort) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(top: 12),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: sorts
              .map(
                (e) => Container(
                  margin: EdgeInsets.only(right: 12),
                  child: ActionChip(
                    backgroundColor: e == selectedSort
                        ? Theme.of(context).accentColor
                        : null,
                    label: Text(
                      e.title,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    onPressed: () {
                      context
                          .read(photosBlocProvider)
                          .add(PhotosEvent.sortPhotos(sort: e));
                    },
                  ),
                ),
              )
              .toList(),
        ));
  }
}
