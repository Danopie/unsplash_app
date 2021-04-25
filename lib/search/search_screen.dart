import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unsplash_app/authentication/data/model/user_profile.dart';
import 'package:unsplash_app/home/home_app_bar.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
import 'package:unsplash_app/photos/data/model/user.dart';
import 'package:unsplash_app/photos/photo_list.dart';
import 'package:unsplash_app/res/color.dart';
import 'package:unsplash_app/res/text.dart';
import 'package:unsplash_app/search/search_controller.dart';
import 'package:unsplash_app/search/search_state.dart';

class SearchScreen extends HookWidget {
  const SearchScreen({
    Key? key,
    required this.initialQuery,
  }) : super(key: key);

  static Future<dynamic> show(
      {required BuildContext context, required String initialQuery}) {
    return Navigator.of(context).push(MaterialPageRoute(
        builder: (context) =>
            SearchScreen.newInstance(initialQuery: initialQuery)));
  }

  static Widget newInstance({required String initialQuery}) => SearchScreen(
        initialQuery: initialQuery,
      );

  final String initialQuery;

  @override
  Widget build(BuildContext context) {
    final state =
        useProvider<SearchState>(searchControllerProvider(initialQuery).state);
    final tabController = useTabController(initialLength: 3);
    useEffect(() {
      final f = () {
        _handleTabChange(context, tabController);
      };
      tabController.addListener(f);

      return () => tabController.removeListener(f);
    }, [tabController]);

    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            UnsplashAppBar(
              initialSearchText: initialQuery,
              onUserSearch: (text) {
                context
                    .read<SearchController>(
                        searchControllerProvider(initialQuery))
                    .onUserSearch(text);
              },
              // bottom: TabBar(
              //   indicatorColor: codGray,
              //   labelColor: codGray,
              //   unselectedLabelColor: boulder,
              //   controller: tabController,
              //   tabs: [
              //     Tab(text: "Photos"),
              //     Tab(text: "Collections"),
              //     Tab(text: "Users"),
              //   ],
              // ),
            ),
            SliverToBoxAdapter(
              child: QueryDisplay(
                query: state.query,
              ),
            ),
            SearchErrorAndLoadingWrapper(
                builder: (state) {
                  if (state.type == SearchType.Photo)
                    return PhotoList(
                      photos: state.photos,
                      loading: false,
                    );
                  else if (state.type == SearchType.Collection)
                    return CollectionList(collections: []);
                  else if (state.type == SearchType.User)
                    return UserList(
                      profiles: [],
                    );
                },
                state: state)
          ],
        ));
  }

  void _handleTabChange(BuildContext context, TabController controller) {
    context
        .read(searchControllerProvider(initialQuery))
        .onUserChangeTab(controller.index);
  }
}

class SearchErrorAndLoadingWrapper<T> extends StatelessWidget {
  final SearchState state;
  final Function(SearchSuccessState)? builder;

  const SearchErrorAndLoadingWrapper({
    Key? key,
    required this.state,
    this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = state;
    if (s is SearchSuccessState) {
      return builder?.call(s);
    } else if (s is SearchErrorState)
      return SearchError(error: s.message);
    else
      return SearchLoading();
  }
}

class SearchError extends StatelessWidget {
  final String? error;

  const SearchError({Key? key, this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Center(
        child: Text(error!).medium().size(16).color(boulder),
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
  final String? query;

  const QueryDisplay({Key? key, this.query}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 24, bottom: 24),
      child: Text(query!).bold().size(32).color(black),
    );
  }
}

class CollectionList extends StatelessWidget {
  final List<PhotoCollection>? collections;

  const CollectionList({Key? key, required this.collections}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class UserList extends StatelessWidget {
  final List<UserProfile>? profiles;

  const UserList({Key? key, required this.profiles}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
