// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:unsplash_app/photos/data/photo_api_provider.dart';
import 'package:unsplash_app/photos/data/photo_db_provider.dart';
import 'package:unsplash_app/photos/data/photo_repository.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  //Eager singletons must be registered in the right order
  g.registerSingleton<PhotoApiProvider>(PhotoApiProvider());
  g.registerSingleton<PhotoDatabaseProvider>(PhotoDatabaseProvider());
  g.registerSingleton<PhotoRepository>(
      PhotoRepository(g<PhotoApiProvider>(), g<PhotoDatabaseProvider>()));
}
