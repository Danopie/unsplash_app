import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unsplash_app/authentication/user/user_controller.dart';
import 'package:unsplash_app/authentication/user/user_dependent_state_notifier.dart';
import 'package:unsplash_app/authentication/user/user_state.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
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
    if (userState is NotLoggedInUserState ||
        (userState is LoggedInUserState && state is InitialPhotosState)) {
      await _loadInitialPhotos();
    }
  }

  Future<void> _loadInitialPhotos() async {
    try {
      final photos = await _photoRepository.getPhotos(page);
      page++;
      state = LoadedPhotosState(
        photos: photos,
      );
    } catch (e) {
      state = InitialErrorPhotosState(message: e.toString());
    }
  }

  Future<void> onLoadMore() async {
    final PhotosState latestState = state;

    try {
      if (latestState is LoadedPhotosState) {
        state = PhotosState.paginationLoading(photos: latestState.photos);

        final photos = await _photoRepository.getPhotos(page + 1);
        await Future.delayed(Duration(seconds: 2));
        state = LoadedPhotosState(
          photos: List.of(latestState.photos)..addAll(photos),
        );
      }
    } catch (e) {
      state = latestState;
    }
  }

  Future<void> onUserLikePhoto(String? id) async {
    _handlePhotoLikeStatus(id, true, () {
      _photoRepository.likePhoto(id);
    });
  }

  Future<void> onUserUnlikePhoto(String? id) async {
    _handlePhotoLikeStatus(id, false, () {
      _photoRepository.unlikePhoto(id);
    });
  }

  Future<void> _handlePhotoLikeStatus(
      String? id, bool like, Function after) async {
    state.maybeWhen(
      orElse: () {},
      doneLoading: (photos) async {
        final list = List<Photo>.of(photos);
        final index = list.indexWhere((element) => element.id == id);
        final photo = list.removeAt(index);
        list.insert(index, photo.copyWith(liked_by_user: like));
        state = LoadedPhotosState(photos: list);
        after.call();
      },
    );
  }

  Future<void> onUserRefresh() async {
    await Future.delayed(Duration(seconds: 1));
    page = 1;
    await _loadInitialPhotos();
  }
}
