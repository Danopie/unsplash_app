import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unsplash_app/authentication/data/model/user_profile.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
import 'package:unsplash_app/search/search_controller.dart';

part 'search_state.freezed.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState.searching(
      {required String query, required SearchType type}) = SearchingState;

  const factory SearchState.success({
    required String query,
    required SearchType type,
    List<Photo>? photos,
    List<PhotoCollection>? collections,
    List<UserProfile>? userProfiles,
  }) = SearchSuccessState;

  const factory SearchState.error(
      {required String message,
      required String query,
      required SearchType type}) = SearchErrorState;
}
