import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
import 'package:unsplash_app/photos/data/photo_repository.dart';
import 'package:unsplash_app/search/search_controller.dart';
import 'package:unsplash_app/search/search_state.dart';

class MockPhotoRepository extends Mock implements PhotoRepository {}

void main() {
  SearchController? sut;
  final photoRepository = MockPhotoRepository();
  ;

  tearDown(() {
    sut?.dispose();
    reset(photoRepository);
  });

  test('searchController_should search for initial query_when created', () async {
    when(() => photoRepository.searchPhotos("cat"))
        .thenAnswer((_) => Future.value(<Photo>[]));
    sut = SearchController(photoRepository, "cat");
    await expectStates<SearchController>(
      sut!,
      [
        isA<SearchingState>(),
        isA<SearchSuccessState>(),
      ],
    );
    verify(() => photoRepository.searchPhotos("cat")).called(1);
  });

  test('searchController_should query for photo_when search', () async {
    when(() => photoRepository.searchPhotos("dog"))
        .thenAnswer((_) => Future.value(<Photo>[]));
    sut = SearchController(photoRepository, "cat");
    sut?.onUserSearch("dog");
    await expectStates<SearchController>(
      sut!,
      [
        isA<SearchingState>(),
        isA<SearchSuccessState>(),
      ],
    );

    verify(() => photoRepository.searchPhotos("cat")).called(1);
  });
}

Future<void> expectStates<T extends StateNotifier>(
    T notifier, List<dynamic> matcherList) async {
  int i = 0;
  notifier.addListener((s) {
    expect(s, matcherList[i]);
    i++;
  });
  expect(i + 1, matcherList.length, reason: "Number of states should match");
}
