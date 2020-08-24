import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';

part 'search_state.freezed.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState.searching({String query}) = SearchingState;
  const factory SearchState.success({List<Photo> photos, String query}) = SearchSuccessState;
  const factory SearchState.error({String message, String query}) = SearchErrorState;
}
