import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:lightweight_result/lightweight_result.dart';
import 'package:rxdart/rxdart.dart';
import 'package:unsplash_app/photos/data/model/photo_sort.dart';
import 'package:unsplash_app/photos/data/photo_repository.dart';

import 'bloc.dart';

class PhotosBloc extends Bloc<PhotosEvent, PhotosState> {
  final PhotoRepository photoRepository;

  PhotosBloc(this.photoRepository);

  int page = 1;

  @override
  PhotosState get initialState => InitialPhotosState();

  @override
  Stream<PhotosState> mapEventToState(
    PhotosEvent event,
  ) async* {
    if (event is InitialLoad) {
      yield* _mapInitialLoadPhotosToState();
    } else if (event is LoadMore) {
      yield* _mapLoadMorePhotosToState();
    } else if (event is SortPhotos) {
      yield* _mapSortPhotosToState(event.sort);
    }
  }

  Stream<PhotosState> _mapLoadMorePhotosToState() async* {
    final latestState = state;
    if (latestState is LoadedPhotosState) {
      yield PhotosState.paginationLoading(
          photos: latestState.photos,
          sorts: latestState.sorts,
          selectedSort: latestState.selectedSort);

      final photoResult = await photoRepository.getPhotos(page + 1);
      await Future.delayed(Duration(seconds: 2));
      yield photoResult.fold<PhotosState>((data) {
        page++;
        final latestState = state as PaginationLoadingPhotosState;
        return LoadedPhotosState(
            photos: List.of(latestState.photos)..addAll(data),
            selectedSort: latestState.selectedSort,
            sorts: latestState.sorts);
      }, (msg) => InitialErrorPhotosState(message: msg));
    }
  }

  Stream<PhotosState> _mapInitialLoadPhotosToState() async* {
    final photoResult = await photoRepository.getPhotos(page);
    yield photoResult.fold<PhotosState>((data) {
      final sorts = _getPhotoSorts();
      return PhotosState.doneLoading(
          photos: data, sorts: sorts, selectedSort: sorts.first);
    }, (msg) => InitialErrorPhotosState(message: msg));
  }

  @override
  Stream<Transition<PhotosEvent, PhotosState>> transformEvents(
      Stream<PhotosEvent> events, transitionFn) {
    return super.transformEvents(
        events.throttleTime(
          Duration(seconds: 1),
        ),
        transitionFn);
  }

  List<PhotoSort> _getPhotoSorts() => [
        PhotoSort("Latest", "latest"),
        PhotoSort("Popular", "popular"),
        PhotoSort("Oldest", "oldest"),
      ];

  Stream<PhotosState> _mapSortPhotosToState(PhotoSort sort) async* {
    yield SortLoadingPhotosState(sorts: _getPhotoSorts(), selectedSort: sort);

    await Future.delayed(Duration(seconds: 1));
    final photoResult = await photoRepository.getPhotos(1, sort);
    yield photoResult.fold<PhotosState>((data) {
      page = 1;
      return PhotosState.doneLoading(
          photos: data, sorts: _getPhotoSorts(), selectedSort: sort);
    }, (msg) => null);
  }
}
