import 'package:hive/hive.dart';

abstract class DatabaseProvider<T extends Object> {
  Future<Box> pendingBox;

  String get dbName;

  DatabaseProvider() {
    pendingBox = Hive.openBox<T>(dbName);
  }

  Future<void> add(T object) async {
    final box = await pendingBox;
    box.add(object);
  }

  Future<void> delete(String key) async {
    final box = await pendingBox;
    await box.delete(key);
  }

  Future<T> get(String key) async {
    final box = await pendingBox;
    return box.get(key);
  }
}
