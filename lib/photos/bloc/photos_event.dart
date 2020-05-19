import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
import 'package:unsplash_app/photos/data/model/photo_sort.dart';

part 'photos_event.freezed.dart';

@freezed
abstract class PhotosEvent with _$PhotosEvent {
  const factory PhotosEvent.initialLoad() = InitialLoad;
  const factory PhotosEvent.loadMore() = LoadMore;
  const factory PhotosEvent.sortPhotos({PhotoSort sort}) = SortPhotos;
}
