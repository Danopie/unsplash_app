import 'package:hive/hive.dart';

abstract class Database<T extends Object> {
  Box<T> box;

  String get dbName;

  Database() {
    box = Hive.box<T>(dbName);
  }

  Future<void> add(T object) async {
    box.add(object);
  }

  Future<void> put(String key, T object) async {
    box.put(key, object);
  }

  Future<void> delete(String key) async {
    await box.delete(key);
  }

  Future<T> get(String key) async {
    return box.get(key);
  }

  Future<List<T>> getAll() async {
    return box.values.toList();
  }
}
