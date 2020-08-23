import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unsplash_app/authentication/user/user_controller.dart';
import 'package:unsplash_app/home/home_app_bar.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
import 'package:unsplash_app/photos/domain/photos_controller.dart';
import 'package:unsplash_app/photos/domain/photos_state.dart';
import 'package:unsplash_app/photos/photo_list.dart';

class HomePage extends HookWidget {
  static Future<dynamic> show({BuildContext context}) {
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
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await context.read(userControllerProvider).onUserLogout();
            controller.jumpTo(0);
          },
        ),
        body: Builder(
          builder: (BuildContext context) {
            if (state is PaginationLoadingPhotosState ||
                state is LoadedPhotosState) {
              return CustomScrollView(
                controller: controller,
                slivers: [
                  UnsplashAppBar(),
                  PhotoList(
                    photos: state.maybeWhen<List<Photo>>(
                      orElse: () => List<Photo>(),
                      paginationLoading: (photos) => photos,
                      doneLoading: (photos) => photos,
                    ),
                    loading: state is PaginationLoadingPhotosState,
                  )
                ],
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

class HomeError extends StatelessWidget {
  final String message;

  const HomeError({Key key, this.message}) : super(key: key);
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

class HomeLoading extends StatelessWidget {
  const HomeLoading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}
