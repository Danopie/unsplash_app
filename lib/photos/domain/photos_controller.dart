import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lightweight_result/lightweight_result.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:unsplash_app/photos/data/model/photo_sort.dart';
import 'package:unsplash_app/photos/data/photo_repository.dart';

import 'photos_state.dart';


final photosProvider = StateNotifierProvider(
    (ref) => PhotosController(ref.read(photoRepositoryProvider)));

class PhotosController extends StateNotifier<PhotosState> {
  final PhotoRepository photoRepository;

  PhotosController(this.photoRepository) : super(InitialPhotosState()) {
    onInit();
  }

  int page = 1;

  Future<void> onInit() async {
    final photoResult = await photoRepository.getPhotos(page);
    state = photoResult.fold<PhotosState>((data) {
      return PhotosState.doneLoading(photos: data);
    }, (msg) => InitialErrorPhotosState(message: msg));
  }

  Future<void> onLoadMore() async {
    final latestState = state;
    if (latestState is LoadedPhotosState) {
      state = PhotosState.paginationLoading(photos: latestState.photos);

      final photoResult = await photoRepository.getPhotos(page + 1);
      await Future.delayed(Duration(seconds: 2));
      state = photoResult.fold<PhotosState>((data) {
        page++;
        final latestState = state as PaginationLoadingPhotosState;
        return LoadedPhotosState(
          photos: List.of(latestState.photos)..addAll(data),
        );
      }, (msg) => InitialErrorPhotosState(message: msg));
    }
  }
}
