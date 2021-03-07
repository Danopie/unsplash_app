import 'package:hive/hive.dart';

abstract class Database<T extends Object> {
  final Box<T> box;

  Database(String name) : box = Hive.box<T>(name);

  Future<void> add(T object) async {
    box.add(object);
  }

  Future<void> put(String key, T object) async {
    box.put(key, object);
  }

  Future<void> delete(String key) async {
    await box.delete(key);
  }

  Future<T?> get(String key) async {
    return box.get(key);
  }

  Future<List<T>> getAll() async {
    return box.values.toList();
  }
}
