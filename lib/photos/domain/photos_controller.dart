import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lightweight_result/lightweight_result.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:unsplash_app/authentication/user/user_controller.dart';
import 'package:unsplash_app/authentication/user/user_dependent_state_notifier.dart';
import 'package:unsplash_app/authentication/user/user_state.dart';
import 'package:unsplash_app/photos/data/model/photo_sort.dart';
import 'package:unsplash_app/photos/data/photo_repository.dart';

import 'photos_state.dart';

final photosProvider = StateNotifierProvider((ref) => PhotosController(
    ref.read(photoRepositoryProvider), ref.read(userControllerProvider)));

class PhotosController extends UserDependentStateNotifier<PhotosState> {
  final PhotoRepository _photoRepository;

  PhotosController(this._photoRepository, UserController userController)
      : super(userController, InitialPhotosState());

  int page = 1;

  @override
  Future<void> init(UserState userState) async {
    final photoResult = await _photoRepository.getPhotos(page);
    state = photoResult.fold<PhotosState>((data) {
      return PhotosState.doneLoading(photos: data);
    }, (msg) => InitialErrorPhotosState(message: msg));
  }

  Future<void> onLoadMore() async {
    final latestState = state;
    if (latestState is LoadedPhotosState) {
      state = PhotosState.paginationLoading(photos: latestState.photos);

      final photoResult = await _photoRepository.getPhotos(page + 1);
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
