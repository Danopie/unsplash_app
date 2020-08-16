import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
import 'package:unsplash_app/photos/data/photo_adapter.dart';
import 'package:unsplash_app/photos/data/photo_db_provider.dart';
import 'package:unsplash_app/photos/photos_feed.dart';

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(PhotoAdapter());
  await Hive.openBox<Photo>(PhotoDatabaseProvider.NAME);
  runApp(ProviderScope(
    child: MyApp(),
    observers: [
      AppProviderObserver(),
    ],
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unsplash',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PhotosFeed.newInstance(),
    );
  }
}

class AppProviderObserver extends ProviderObserver {
  @override
  void didAddProvider(ProviderBase provider, Object value) {
    print('ProviderObserver.didAddProvider: ${provider.name} $value');
  }

  @override
  void didDisposeProvider(ProviderBase provider) {
    print('ProviderObserver.didDisposeProvider: ${provider.name} ');
  }

  @override
  void didUpdateProvider(ProviderBase provider, Object newValue) {
    print('ProviderObserver.didUpdateProvider: ${provider.name}');
  }
}
