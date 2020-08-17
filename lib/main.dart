import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unsplash_app/home/home_page.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
import 'package:unsplash_app/photos/data/photo_adapter.dart';
import 'package:unsplash_app/photos/data/photo_db_provider.dart';
import 'package:unsplash_app/photos/photo_list.dart';

Future<void> main() async {
  await _initHive();
  runApp(ProviderScope(
    child: MyApp(),
  ));
}

Future _initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(PhotoAdapter());
  await Hive.openBox<Photo>(PhotoDatabaseProvider.NAME);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unsplash',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage.newInstance(),
    );
  }
}
