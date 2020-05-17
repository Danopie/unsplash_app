import 'package:equatable/equatable.dart';
import 'package:unsplash_app/photos/data/model/photo_sort.dart';

abstract class PhotosEvent extends Equatable {
  const PhotosEvent();
}

class InitialLoad extends PhotosEvent {
  @override
  List<Object> get props => [];
}

class LoadMore extends PhotosEvent {
  @override
  List<Object> get props => [];
}

class SortPhotos extends PhotosEvent {
  final PhotoSort sort;

  SortPhotos(this.sort);

  @override
  List<Object> get props => [];
}
