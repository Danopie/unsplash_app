import 'package:equatable/equatable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:unsplash_app/photos/data/photo_repository.dart';
import 'package:unsplash_app/search/search_state.dart';

enum SearchType { Photo, Collection, User }

final searchControllerProvider = StateNotifierProvider.autoDispose
    .family<SearchController, String>((ref, query) =>
        SearchController(ref.read(photoRepositoryProvider), query));

class SearchController extends StateNotifier<SearchState> {
  final PhotoRepository _photoRepository;
  final String _initialQuery;

  SearchController(this._photoRepository, this._initialQuery)
      : super(SearchState.searching(
            query: _initialQuery, type: SearchType.Photo)) {
    onUserSearch(_initialQuery, SearchType.Photo);
  }

  Future<void> onUserSearch(String text, [SearchType? type]) async {
    if(type == null) type = state.type;

    state = SearchState.searching(query: text, type: type);

    try {
      final photos = await _photoRepository.searchPhotos(text);
      state = SearchState.success(photos: photos, query: text, type: type);
    } catch (e) {
      state = SearchState.error(message: e.toString(), query: text, type: type);
    }
  }

  void onUserChangeTab(int index) {
    final type = SearchType.values[index];
    final initialLoading = _isInitialLoading(type);
    if(initialLoading){
      onUserSearch(state.query, type);
    }
  }

  _isInitialLoading(SearchType type) {
    final s =state;
    if(s is SearchSuccessState){
      switch(type){
        case SearchType.Collection:
          return s.collections == null;
        case SearchType.Photo:
          return s.photos == null;
        case SearchType.User:
          return s.userProfiles == null;
      }
    }
    return false;
  }
}
