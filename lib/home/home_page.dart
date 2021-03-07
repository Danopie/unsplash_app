import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unsplash_app/home/home_app_bar.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
import 'package:unsplash_app/photos/domain/photos_controller.dart';
import 'package:unsplash_app/photos/domain/photos_state.dart';
import 'package:unsplash_app/photos/photo_item.dart';
import 'package:unsplash_app/photos/photo_list.dart';
import 'package:unsplash_app/search/search_page.dart';

class HomePage extends HookWidget {
  static Future<dynamic> show({required BuildContext context}) {
    return Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => HomePage.newInstance()));
  }

  static Widget newInstance() => HomePage();

  @override
  Widget build(BuildContext context) {
    final state = useProvider(photosProvider.state);
    final controller = useScrollController();

    return Scaffold(
        backgroundColor: Colors.white,
        body: Builder(
          builder: (BuildContext context) {
            if (state is PaginationLoadingPhotosState ||
                state is LoadedPhotosState) {
              return NotificationListener<ScrollUpdateNotification>(
                onNotification: (notification) {
                  if (notification.metrics.pixels >
                      notification.metrics.maxScrollExtent - 300) {
                    context.read(photosProvider).onLoadMore();
                  }
                  return false;
                },
                child: Scrollbar(
                  controller: controller,
                  child: CustomScrollView(
                    controller: controller,
                    slivers: [
                      UnsplashAppBar(
                        onUserSearch: (text) {
                          SearchPage.show(context: context, initialQuery: text);
                        },
                        clearOnSearch: true,
                        initialSearchText: '',
                      ),
                      CupertinoSliverRefreshControl(
                        onRefresh: () async {
                          await context
                              .read<PhotosController>(photosProvider)
                              .onUserRefresh();
                        },
                      ),
                      PhotoList(
                        photos: state.maybeWhen<List<Photo>>(
                          orElse: () => <Photo>[],
                          paginationLoading: (photos) => photos,
                          doneLoading: (photos) => photos,
                        ),
                        loading: state is PaginationLoadingPhotosState,
                      ),
                    ],
                  ),
                ),
              );
            } else if (state is InitialErrorPhotosState) {
              return HomeError(message: state.message);
            } else {
              return HomeLoading();
            }
          },
        ));
  }
}

class SnappingScrollPhysics extends BouncingScrollPhysics {
  final double? itemHeight;

  SnappingScrollPhysics({ScrollPhysics? scrollPhysics, this.itemHeight})
      : super(parent: scrollPhysics);

  @override
  BouncingScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return SnappingScrollPhysics(
      scrollPhysics: ancestor,
      itemHeight: itemHeight,
    );
  }

  @override
  Simulation? createBallisticSimulation(
      ScrollMetrics position, double velocity) {
    // If we're out of range and not headed back in range, defer to the parent
    // ballistics, which should put us back in range at a page boundary.
    if ((velocity <= 0.0 && position.pixels <= position.minScrollExtent) ||
        (velocity >= 0.0 && position.pixels >= position.maxScrollExtent))
      return super.createBallisticSimulation(position, velocity);

    final currentItemIndex = position.pixels ~/ itemHeight!;
    final currentItemOffset = itemHeight! * currentItemIndex;
    final nextItemOffset = itemHeight! * (currentItemIndex + 1);
    final previousItemOffset =
        currentItemIndex >= 0 ? itemHeight! * (currentItemIndex - 1) : 0.0;

    final targetOffset = velocity >= 0 ? nextItemOffset : currentItemOffset;

    if (position.pixels - currentItemOffset > 50) {
      HapticFeedback.lightImpact();

      return ScrollSpringSimulation(
        spring,
        position.pixels,
        targetOffset,
        velocity,
        tolerance: tolerance,
      );
    }

    return super.createBallisticSimulation(position, velocity);
  }
}

class HomeError extends StatelessWidget {
  final String? message;

  const HomeError({Key? key, this.message}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Text(
        message!,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    ));
  }
}

class HomeLoading extends StatelessWidget {
  const HomeLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}
