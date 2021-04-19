// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unsplash_app/home/home_app_bar.dart';

void main() {
  testWidgets('SearchBar_should match snapshot_when created',
          (WidgetTester tester) async {
        await _pumpSearchBar(tester, text: "hello");

        await expectLater(find.byType(SearchBar),
            matchesGoldenFile('search_bar.png'));
      });


  testWidgets('SearchBar_should show initial text_when created',
      (WidgetTester tester) async {
    await _pumpSearchBar(tester, text: "hello");

    expect(find.text('hello'), findsOneWidget);
  });

  testWidgets('SearchBar_should change text_when user enter',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await _pumpSearchBar(tester);

    final textField = find.byType(TextField);
    await tester.tap(textField);
    await tester.enterText(textField, "cat");

    expect(find.text('cat'), findsOneWidget);
  });

  testWidgets('SearchBar_should call search_when user submit',
      (WidgetTester tester) async {
    final sample = "cat";
    // Build our app and trigger a frame.
    await _pumpSearchBar(tester, onUserSearch: (text) {
      expect(text, sample);
    });

    final textField = find.byType(TextField);
    await tester.tap(textField);
    await tester.enterText(textField, sample);
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pump();

  });
}

Future<void> _pumpSearchBar(WidgetTester tester,
    {String text = "", Function(String)? onUserSearch}) async {
  await tester.pumpWidget(
    MaterialApp(
      home: Material(
        child: SearchBar(
          initialSearchText: text,
          onUserSearch: onUserSearch,
        ),
      ),
    ),
  );
}
