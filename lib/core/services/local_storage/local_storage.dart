import 'package:hive_ce/hive.dart';

class LocalStorage {
  static const String _boxName = 'app_storage';

  late final Box _box;

  Future<void> openBox() async {
    _box = await Hive.openBox(_boxName);
  }

  Future<void> setValue({
    required String key,
    required dynamic value,
  }) async {
    await _box.put(key, value);
  }

  String? getValue({
    required String key,
  }) {
    return _box.get(key);
  }

  Future<void> deleteValue({
    required String key,
  }) async {
    await _box.delete(key);
  }

  Future<void> clearAllValue() async {
    await _box.clear();
  }
}