import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:unsplash_app/photos/data/photo_repository.dart';
import 'package:lightweight_result/lightweight_result.dart';

import 'search_state.dart';

final AutoDisposeStateNotifierProviderFamily<SearchController, String>
    searchControllerProvider = StateNotifierProvider.autoDispose
        .family<SearchController, String>((ref, initialQuery) =>
            SearchController(ref.read(photoRepositoryProvider), initialQuery));

class SearchController extends StateNotifier<SearchState> {
  final PhotoRepository _photoRepository;
  final String initialQuery;

  SearchController(this._photoRepository, this.initialQuery)
      : super(SearchState.searching(query: initialQuery)) {
    onUserSearch(initialQuery);
  }

  Future<void> onUserSearch(String query) async {
    state = SearchState.searching(query: query);

    final photos = await _photoRepository.searchPhotos(query);
    photos.fold(
        ((photos) => state = SearchState.success(photos: photos, query: query)),
        (error) => state = SearchState.error(message: error, query: query));
  }
}
