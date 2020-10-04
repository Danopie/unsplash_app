import 'package:build_context/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unsplash_app/home/home_app_bar.dart';
import 'package:unsplash_app/photos/photo_list.dart';
import 'package:unsplash_app/res/color.dart';
import 'package:unsplash_app/res/text.dart';
import 'package:unsplash_app/search/search_controller.dart';
import 'package:unsplash_app/search/search_state.dart';

class SearchPage extends HookWidget {
  const SearchPage({Key key, this.initialQuery}) : super(key: key);

  static Future<dynamic> show({BuildContext context, String initialQuery}) {
    return Navigator.of(context).push(MaterialPageRoute(
        builder: (context) =>
            SearchPage.newInstance(initialQuery: initialQuery)));
  }

  static Widget newInstance({String initialQuery}) => SearchPage(
        initialQuery: initialQuery,
      );

  final String initialQuery;

  @override
  Widget build(BuildContext context) {
    final state = useProvider(searchControllerProvider(initialQuery).state);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(top: context.mediaQueryPadding.top),
          child: CustomScrollView(
            slivers: [
              UnsplashAppBar(
                initialSearchText: initialQuery,
                onUserSearch: (text) {
                  context
                      .read(searchControllerProvider(initialQuery))
                      .onUserSearch(text);
                },
              ),
              SliverToBoxAdapter(
                child: QueryDisplay(
                  query: state.query,
                ),
              ),
              if (state is SearchSuccessState)
                PhotoList(
                  photos: state.photos,
                  loading: false,
                )
              else if (state is SearchErrorState)
                SearchError(error: state.message)
              else
                SearchLoading()
            ],
          ),
        ));
  }
}

class SearchError extends StatelessWidget {
  final String error;

  const SearchError({Key key, this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Center(
        child: Text(error).medium().size(16).color(boulder),
      ),
    );
  }
}

class SearchLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class QueryDisplay extends StatelessWidget {
  final String query;

  const QueryDisplay({Key key, this.query}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 24, bottom: 24),
      child: Text(query).bold().size(32).color(black),
    );
  }
}
