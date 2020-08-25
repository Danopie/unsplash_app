import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:unsplash_app/authentication/data/model/user_info.dart';
import 'package:unsplash_app/authentication/data/user_adapter.dart';
import 'package:unsplash_app/authentication/data/user_db.dart';
import 'package:unsplash_app/home/home_page.dart';
import 'package:unsplash_app/photos/data/model/photo.dart';
import 'package:unsplash_app/photos/data/photo_adapter.dart';
import 'package:unsplash_app/photos/data/photo_db.dart';

Future<void> main() async {
  await _initHive();
  runApp(ProviderScope(
    child: MyApp(),
  ));
}

Future _initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(PhotoAdapter());
  Hive.registerAdapter(UserInfoAdapter());
  await Hive.openBox<Photo>(PhotoDatabase.NAME);
  await Hive.openBox<UserToken>(UserDatabase.NAME);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unsplash',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
