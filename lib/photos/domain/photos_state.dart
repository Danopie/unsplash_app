import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';

part 'photos_state.freezed.dart';

@freezed
abstract class PhotosState with _$PhotosState {
  const factory PhotosState.initial() = InitialPhotosState;

  const factory PhotosState.initialLoading() = InitialLoadingPhotosState;

  const factory PhotosState.initialError({String? message}) =
      InitialErrorPhotosState;

  const factory PhotosState.paginationLoading({
    List<Photo>? photos,
  }) = PaginationLoadingPhotosState;

  const factory PhotosState.doneLoading({
    List<Photo>? photos,
  }) = LoadedPhotosState;
}
