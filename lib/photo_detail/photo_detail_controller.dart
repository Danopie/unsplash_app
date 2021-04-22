import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
import 'package:unsplash_app/photos/data/photo_repository.dart';

final photoDetailControllerProvider = StateNotifierProvider.autoDispose
    .family<PhotoDetailController, Photo>((ref, photo) => PhotoDetailController(
        photo: photo, repository: ref.watch(photoRepositoryProvider)));

class PhotoDetailController extends StateNotifier<PhotoDetailState> {
  final PhotoRepository repository;

  PhotoDetailController({required Photo photo, required this.repository})
      : super(PhotoDetailState(photo: photo)) {
    _loadData();
  }

  Future<void> _loadData() async {
    final photo = await repository.getPhoto(state.photo.id!);
    final relatedPhotos = await repository.getRelatedPhotos(state.photo);
    state = state.copyWith(
        relatedPhotos: relatedPhotos,
        relatedCollections: photo.relatedCollections,
        relatedTags: photo.tags);
  }
}

class PhotoDetailState {
  final Photo photo;
  final List<Photo>? relatedPhotos;
  final RelatedCollections? relatedCollections;
  final List<Tag>? relatedTags;

  const PhotoDetailState({
    required this.photo,
    this.relatedPhotos,
    this.relatedCollections,
    this.relatedTags,
  });

  PhotoDetailState copyWith({
    Photo? photo,
    List<Photo>? relatedPhotos,
    RelatedCollections? relatedCollections,
    List<Tag>? relatedTags,
  }) {
    return new PhotoDetailState(
      photo: photo ?? this.photo,
      relatedPhotos: relatedPhotos ?? this.relatedPhotos,
      relatedCollections: relatedCollections ?? this.relatedCollections,
      relatedTags: relatedTags ?? this.relatedTags,
    );
  }
}
