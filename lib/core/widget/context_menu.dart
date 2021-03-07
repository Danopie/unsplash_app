import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unsplash_app/authentication/data/model/user_info.dart';
import 'package:unsplash_app/authentication/data/model/user_profile.dart';
import 'package:unsplash_app/authentication/login/login_page.dart';
import 'package:unsplash_app/authentication/user/user_controller.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
import 'package:unsplash_app/photos/photo_download_delegate.dart';
import 'package:unsplash_app/res/color.dart';
import 'package:unsplash_app/res/text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ContextMenu extends StatelessWidget {
  static Future<dynamic> show(
      BuildContext context, WidgetBuilder builder) async {
    return await Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (_, animation, secondaryAnimation) {
          final RenderBox box = context.findRenderObject() as RenderBox;
          return ContextMenu(
            parentPosition: box.localToGlobal(Offset.zero),
            parentSize: box.size,
            builder: builder,
          );
        },
        opaque: false,
        fullscreenDialog: true,
        transitionDuration: Duration(milliseconds: 160),
      ),
    );
  }

  final Offset? parentPosition;
  final Size? parentSize;
  final WidgetBuilder? builder;

  const ContextMenu(
      {Key? key, this.parentPosition, this.parentSize, this.builder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemWidth = 250.0;
    final isLeft =
        parentPosition!.dx + itemWidth < MediaQuery.of(context).size.width;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Stack(
        children: [
          FadeTransition(
            opacity: ModalRoute.of(context)!.animation!,
            child: Container(
              color: Colors.black38,
            ),
          ),
          Positioned(
            top: parentPosition!.dy + parentSize!.height,
            right: !isLeft
                ? MediaQuery.of(context).size.width -
                    parentPosition!.dx -
                    (parentSize!.width * 2 / 3)
                : null,
            left: isLeft ? parentPosition!.dx + (parentSize!.width / 3) : null,
            child: FadeThroughTransition(
              animation: ModalRoute.of(context)!.animation!,
              secondaryAnimation: ModalRoute.of(context)!.secondaryAnimation!,
              fillColor: Colors.transparent,
              child: CustomPaint(
                painter: UpArrowPainter(),
                child: Material(
                  elevation: 8,
                  borderRadius: BorderRadius.circular(4),
                  child: Container(
                    width: itemWidth,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: builder!(context),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UpArrowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final triangleWidth = 10.0;
    final triangleHeight = 5.0;
    final rightPadding = 5.0;
    final path = Path()
      ..moveTo(size.width - triangleWidth - rightPadding, 0)
      ..lineTo(size.width - triangleWidth / 2 - rightPadding, -triangleHeight)
      ..lineTo(size.width - rightPadding, 0)
      ..close();
    canvas.drawPath(path, Paint()..color = Colors.black);
  }

  @override
  bool shouldRepaint(UpArrowPainter oldDelegate) {
    return false;
  }
}

class ContextMenuItem extends StatelessWidget {
  final String? text;
  final Function? onTap;

  const ContextMenuItem({Key? key, this.text, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await onTap?.call();
        Navigator.of(context).pop();
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Text(text!).size(14).color(Colors.white).medium(),
      ),
    );
  }
}

class ContextMenuButton extends StatelessWidget {
  final String? text;
  final Function? onTap;
  final bool highlight;

  const ContextMenuButton(
      {Key? key, this.text, this.onTap, this.highlight = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
        onTap?.call();
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: highlight ? oceanGreen : mercury,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(text!).color(highlight ? Colors.white : boulder).size(12),
        padding: EdgeInsets.symmetric(vertical: 8),
      ),
    );
  }
}

class ContextMenuDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: mercury,
      height: 32,
    );
  }
}

class AppMenu extends StatelessWidget {
  final bool? isLoggedIn;

  const AppMenu({Key? key, this.isLoggedIn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContextMenuItem(
            text: "About",
            onTap: () {},
          ),
          ContextMenuItem(
            text: "Wallpapers",
            onTap: () {},
          ),
          ContextMenuItem(
            text: "Blog",
            onTap: () {},
          ),
          ContextMenuItem(
            text: "Topics",
            onTap: () {},
          ),
          ContextMenuItem(
            text: "Collections",
            onTap: () {},
          ),
          ContextMenuItem(
            text: "Community",
            onTap: () {},
          ),
          ContextMenuItem(
            text: "Explore",
            onTap: () {},
          ),
          ContextMenuItem(
            text: "History",
            onTap: () {},
          ),
          ContextMenuItem(
            text: "Made with Unsplash",
            onTap: () {},
          ),
          ContextMenuItem(
            text: "API/Developers",
            onTap: () {},
          ),
          if (!isLoggedIn!)
            Container(
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Row(
                children: [
                  Expanded(
                    child: ContextMenuButton(
                      text: "Login",
                      onTap: () {
                        Navigator.of(context).push(LoginPage.route);
                      },
                    ),
                  ),
                  Container(
                    width: 16,
                  ),
                  Expanded(
                    child: ContextMenuButton(
                      text: "Join free",
                      onTap: () {},
                      highlight: true,
                    ),
                  )
                ],
              ),
            ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16),
            child: ContextMenuButton(
              text: "Submit a photo",
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }
}

class UserMenu extends StatelessWidget {
  final UserProfile? userInfo;

  const UserMenu({Key? key, this.userInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContextMenuItem(
            text: "View profile",
            onTap: () {},
          ),
          ContextMenuItem(
            text: "Stats",
            onTap: () {},
          ),
          ContextMenuItem(
            text: "Account settings",
            onTap: () {},
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16),
            child: ContextMenuButton(
              text: "Submit a photo",
              onTap: () {},
            ),
          ),
          ContextMenuDivider(),
          ContextMenuItem(
            text: "Logout @${userInfo!.name}",
            onTap: () async {
              await context.read(userControllerProvider).onUserLogout();
            },
          ),
        ],
      ),
    );
  }
}

class DownloadMenu extends StatelessWidget {
  final Photo? photo;

  const DownloadMenu({
    Key? key,
    this.photo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContextMenuItem(
            text: AppLocalizations.of(context)!.downloadSmall,
            onTap: () async {
              await PhotoDownloadDelegate(
                      context: context, id: photo!.id, url: photo!.urls!.small)
                  .run();
            },
          ),
          ContextMenuItem(
            text: AppLocalizations.of(context)!.downloadMedium,
            onTap: () async {
              await PhotoDownloadDelegate(
                      context: context, id: photo!.id, url: photo!.urls!.regular)
                  .run();
            },
          ),
          ContextMenuItem(
            text: AppLocalizations.of(context)!.downloadLarge,
            onTap: () async {
              await PhotoDownloadDelegate(
                      context: context, id: photo!.id, url: photo!.urls!.full)
                  .run();
            },
          ),
          ContextMenuDivider(),
          ContextMenuItem(
            text: AppLocalizations.of(context)!.downloadOriginalSize,
            onTap: () async {
              await PhotoDownloadDelegate(
                      context: context, id: photo!.id, url: photo!.urls!.raw)
                  .run();
            },
          ),
        ],
      ),
    );
  }
}
