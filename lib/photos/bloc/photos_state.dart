import 'package:equatable/equatable.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
import 'package:unsplash_app/photos/data/model/photo_sort.dart';

abstract class PhotosState extends Equatable {
  const PhotosState();
}

class InitialPhotosState extends PhotosState {
  @override
  List<Object> get props => [];
}

class InitialLoadingPhotosState extends PhotosState {
  @override
  List<Object> get props => [];
}

abstract class PhotosReadyState extends PhotosState {
  final List<Photo> photos;
  final List<PhotoSort> sorts;
  final PhotoSort selectedSort;

  const PhotosReadyState({this.photos, this.sorts, this.selectedSort});

  @override
  List<Object> get props => [photos, sorts, selectedSort];
}

class PaginationLoadingPhotosState extends PhotosReadyState {
  const PaginationLoadingPhotosState({
    List<Photo> photos,
    List<PhotoSort> sorts,
    PhotoSort selectedSort,
  }) : super(
          photos: photos,
          sorts: sorts,
          selectedSort: selectedSort,
        );
}

class LoadedPhotosState extends PhotosReadyState {
  const LoadedPhotosState({
    List<Photo> photos,
    List<PhotoSort> sorts,
    PhotoSort selectedSort,
  }) : super(
          photos: photos,
          sorts: sorts,
          selectedSort: selectedSort,
        );

  LoadedPhotosState copyWith({
    List<Photo> photos,
    List<PhotoSort> sorts,
    PhotoSort selectedSort,
  }) {
    return new LoadedPhotosState(
      photos: photos ?? this.photos,
      sorts: sorts ?? this.sorts,
      selectedSort: selectedSort ?? this.selectedSort,
    );
  }
}

class SortLoadingPhotosState extends PhotosReadyState {
  const SortLoadingPhotosState({
    List<PhotoSort> sorts,
    PhotoSort selectedSort,
  }) : super(
          sorts: sorts,
          selectedSort: selectedSort,
        );
}

class InitialErrorPhotosState extends PhotosState {
  final String message;

  InitialErrorPhotosState({this.message});

  @override
  List<Object> get props => [message];
}
