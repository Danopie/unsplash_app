import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unsplash_app/authentication/widgets/user_dependent_tap.dart';
import 'package:unsplash_app/core/utils/color_utils.dart';
import 'package:unsplash_app/core/widget/context_menu.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
import 'package:unsplash_app/photos/photo_download_delegate.dart';
import 'package:unsplash_app/res/color.dart';

import '../res/text.dart';
import 'data/model/urls.dart';
import 'domain/photos_controller.dart';

enum PhotoItemLayoutStrategy { List, Detail }

class PhotoItem extends StatelessWidget {
  static double height(BuildContext context) =>
      MediaQuery.of(context).size.width + 220;

  const PhotoItem({
    Key? key,
    this.photo,
    this.onTap,
    this.layoutStrategy = PhotoItemLayoutStrategy.List,
  }) : super(key: key);

  final Photo? photo;
  final VoidCallback? onTap;
  final PhotoItemLayoutStrategy layoutStrategy;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height(context),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _buildPhotoHeader(context),
            if (layoutStrategy == PhotoItemLayoutStrategy.List) ...[
              Expanded(
                child: _buildPhoto(),
              ),
              PhotoActions(
                id: photo!.id,
                liked: photo!.liked_by_user,
                urls: photo!.urls,
                photo: photo,
              ),
            ] else ...[
              PhotoActions(
                id: photo!.id,
                liked: photo!.liked_by_user,
                urls: photo!.urls,
                photo: photo,
                padding: EdgeInsets.only(left: 12, right: 12, bottom: 12),
              ),
              Expanded(
                child: _buildPhoto(),
              ),
            ],
            Container(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }

  AspectRatio _buildPhoto() {
    return AspectRatio(
      aspectRatio: 1.0,
      child: Container(
        color: ColorUtils.fromHex(photo!.color!),
        child: CachedNetworkImage(
          imageUrl: photo!.urls!.regular ?? "",
          fit: BoxFit.cover,
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
              imageUrl: photo!.user!.profile_image!.small ?? "",
              fadeInCurve: Curves.easeInOut,
              fadeInDuration: Duration(milliseconds: 200),
            ),
          ),
          Container(
            width: 12,
          ),
          Column(
            children: <Widget>[
              Text(photo!.user!.name ?? "",
                  style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        ],
      ),
    );
  }
}

class PhotoActions extends HookWidget {
  final String? id;
  final bool? liked;
  final Urls? urls;
  final Photo? photo;
  final EdgeInsets padding;

  const PhotoActions({
    Key? key,
    this.id,
    this.liked,
    this.urls,
    this.photo,
    this.padding = const EdgeInsets.all(12),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Row(
        children: [
          LikeButton(
            id: id,
            liked: liked,
          ),
          // Container(
          //   width: 12,
          // ),
          // UnsplashButton(
          //   requireLogin: true,
          //   child: Icon(
          //     Icons.add,
          //     color: boulder,
          //     size: 18,
          //   ),
          // ),
          Spacer(),
          UnsplashButton(
            child: Text(
              AppLocalizations.of(context)!.download,
            ).bold().size(12).color(boulder),
            trailing: Icon(
              Icons.keyboard_arrow_down,
              size: 20,
              color: boulder,
            ),
            onTap: () async {
              await PhotoDownloadDelegate(
                      context: context, url: urls!.full, id: id)
                  .run();
            },
            onTrailingTap: () {
              ContextMenu.show(
                  context,
                  (context) => DownloadMenu(
                        photo: photo,
                      ));
            },
          ),
        ],
      ),
    );
  }
}

class LikeButton extends StatefulWidget {
  final String? id;
  final bool? liked;

  const LikeButton({Key? key, this.id, this.liked}) : super(key: key);

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  @override
  Widget build(BuildContext context) {
    return UnsplashButton(
      borderColor: widget.liked! ? Colors.red : null,
      child: Icon(
        Icons.thumb_up,
        color: widget.liked! ? Colors.red : boulder,
        size: 16,
      ),
      requireLogin: true,
      onTap: () {
        if (!widget.liked!) {
          context.read(photosProvider).onUserLikePhoto(widget.id);
        } else {
          context.read(photosProvider).onUserUnlikePhoto(widget.id);
        }
      },
    );
  }
}

class UnsplashInkWell extends StatelessWidget {
  final Widget? child;
  final Function? onTap;
  final bool requireLogin;

  const UnsplashInkWell(
      {Key? key, this.onTap, this.child, this.requireLogin = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: child,
      onTap: onTap as void Function()?,
      borderRadius: BorderRadius.circular(4),
    );
  }
}

class UnsplashButton extends StatelessWidget {
  final Widget? child;
  final double? width;
  final double? height;
  final Widget? trailing;
  final Function? onTap;
  final Function? onTrailingTap;
  final bool requireLogin;
  final Color? borderColor;

  const UnsplashButton({
    Key? key,
    this.width,
    this.height,
    this.child,
    this.trailing,
    this.onTap,
    this.requireLogin = false,
    this.borderColor,
    this.onTrailingTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const height = 36.0;
    return Container(
      child: Row(
        children: [
          if (requireLogin)
            UserStatusBuilder(
              builder: (userState) {
                return _buildContainer(height);
              },
              onTap: onTap,
            )
          else
            _buildInkWell(height),
          if (trailing != null) ...[
            Container(
              height: height,
              child: VerticalDivider(
                color: boulder,
                width: 1,
              ),
            ),
            UnsplashInkWell(
              onTap: onTrailingTap,
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
        border: Border.all(color: borderColor ?? alto, width: 1),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  UnsplashInkWell _buildInkWell(double height) {
    return UnsplashInkWell(
      onTap: onTap,
      child: _buildContainer(height),
    );
  }

  Container _buildContainer(double height) {
    return Container(
      height: height,
      margin: EdgeInsets.symmetric(horizontal: 12),
      alignment: Alignment.center,
      child: child,
    );
  }
}
