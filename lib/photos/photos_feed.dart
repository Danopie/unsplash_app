import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:unsplash_app/core/utils/color_utils.dart';
import 'package:unsplash_app/photos/bloc/bloc.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
import 'package:unsplash_app/photos/data/model/photo_repository.dart';
import 'package:unsplash_app/photos/data/photo_api_provider.dart';

class PhotosFeed extends StatefulWidget {
  static Future<dynamic> show({BuildContext context}) {
    return Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PhotosFeed.newInstance()));
  }

  static Widget newInstance() => BlocProvider<PhotosBloc>(
        create: (context) => PhotosBloc(PhotoRepository(PhotoApiProvider())),
        child: PhotosFeed(),
      );
  @override
  _PhotosFeedState createState() => _PhotosFeedState();
}

class _PhotosFeedState extends State<PhotosFeed> {
  @override
  void initState() {
    context.bloc<PhotosBloc>().add(InitialLoad());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<PhotosBloc, PhotosState>(
      builder: (BuildContext context, PhotosState state) {
        if (state is PhotosReadyState) {
          return PhotoList(
            photos: state.photos,
            loading: state is PaginationLoadingPhotosState ||
                state is SortLoadingPhotosState,
          );
        } else {
          return PhotosLoading();
        }
      },
      listener: (BuildContext context, PhotosState state) {},
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
        child: FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: photo.urls.regular,
          fadeInCurve: Curves.easeInOut,
          fadeInDuration: Duration(milliseconds: 200),
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
            child: FadeInImage.memoryNetwork(
              width: 32,
              height: 32,
              placeholder: kTransparentImage,
              image: photo.user.profile_image.small,
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

class PhotosSortBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotosBloc, PhotosState>(
      builder: (BuildContext context, PhotosState state) {
        if (state is PhotosReadyState) {
          return Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.only(top: 12),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: state.sorts
                    .map(
                      (e) => Container(
                        margin: EdgeInsets.only(right: 12),
                        child: ActionChip(
                          backgroundColor: e == state.selectedSort
                              ? Theme.of(context).accentColor
                              : null,
                          label: Text(
                            e.title,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          onPressed: () {
                            context.bloc<PhotosBloc>().add(SortPhotos(e));
                          },
                        ),
                      ),
                    )
                    .toList(),
              ));
        } else
          return Container();
      },
    );
  }
}
