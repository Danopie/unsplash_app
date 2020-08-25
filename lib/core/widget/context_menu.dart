import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class ContextMenu extends StatelessWidget {
  static Future<dynamic> show(BuildContext context, Widget child) async {
    return await Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (_, animation, secondaryAnimation) {
          final RenderBox box = context.findRenderObject();
          return ContextMenu(
            parentPosition: box.localToGlobal(Offset.zero),
            parentSize: box.size,
            child: child,
          );
        },
        opaque: false,
        fullscreenDialog: true,
        transitionDuration: Duration(milliseconds: 200),
      ),
    );
  }

  final Offset parentPosition;
  final Size parentSize;
  final Widget child;

  const ContextMenu({Key key, this.parentPosition, this.parentSize, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemWidth = 200.0;
    final isLeft =
        parentPosition.dx + itemWidth < MediaQuery.of(context).size.width;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Stack(
        children: [
          FadeTransition(
            opacity: ModalRoute.of(context).animation,
            child: Container(
              color: Colors.black38,
            ),
          ),
          Positioned(
            top: parentPosition.dy + parentSize.height,
            right: !isLeft
                ? MediaQuery.of(context).size.width -
                    parentPosition.dx -
                    (parentSize.width * 2 / 3)
                : null,
            left: isLeft ? parentPosition.dx + (parentSize.width / 3) : null,
            child: SharedAxisTransition(
              transitionType: SharedAxisTransitionType.vertical,
              animation: ModalRoute.of(context).animation,
              secondaryAnimation: ModalRoute.of(context).secondaryAnimation,
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
                    child: child,
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
