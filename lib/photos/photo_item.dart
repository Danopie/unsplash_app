import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:unsplash_app/core/utils/color_utils.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
import 'package:unsplash_app/res/color.dart';
import '../res/text.dart';

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
          _buildPhotoActions(),
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

  _buildPhotoActions() {
    return Container(
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          UnsplashButton(
            child: Icon(
              Icons.thumb_up,
              color: boulder,
              size: 16,
            ),
          ),
          Container(
            width: 12,
          ),
          UnsplashButton(
            child: Icon(
              Icons.add,
              color: boulder,
              size: 18,
            ),
          ),
          Spacer(),
          UnsplashButton(
            child: Text(
              "Download",
            ).bold().size(12).color(boulder),
            trailing: Icon(
              Icons.keyboard_arrow_down,
              size: 20,
              color: boulder,
            ),
          ),
        ],
      ),
    );
  }
}

class UnsplashInkWell extends StatelessWidget {
  final Widget child;
  final Function onTap;

  const UnsplashInkWell({Key key, this.onTap, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: child,
      onTap: onTap,
      borderRadius: BorderRadius.circular(4),

    );
  }
}

class UnsplashButton extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  final Widget trailing;

  const UnsplashButton(
      {Key key, this.width, this.height, this.child, this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const height = 36.0;
    return Container(
      child: Row(
        children: [
          UnsplashInkWell(
            onTap: () {},
            child: Container(
              height: height,
              margin: EdgeInsets.symmetric(horizontal: 12),
              alignment: Alignment.center,
              child: child,
            ),
          ),
          if (trailing != null) ...[
            Container(
              height: height,
              child: VerticalDivider(
                color: boulder,
                width: 1,
              ),
            ),
            UnsplashInkWell(
              onTap: () {},
              child: Container(
                height: height,
                margin: EdgeInsets.only(left: 6, right: 6),
                child: trailing,
              ),
            ),
          ],
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(color: alto, width: 1),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
