import 'package:flutter_project_template_arch/core/data/local/storage_key.dart';
import 'package:flutter_project_template_arch/core/services/local_storage/local_storage.dart';

class AppStatusData {
  final LocalStorage localStorage;

  AppStatusData({required this.localStorage});

  final String _key = StorageKey.appStatusStorageKey;

  Future<void> setAppStatusData({required bool value}) async {
    await localStorage.setValue(key: _key, value: value.toString());
  }

  Future<bool> getAppStatusData() async {
    final value = await localStorage.getValue(key: _key);
    if (value != null) {
      return value == 'true' ? true : false;
    } else {
      return false;
    }
  }
  
  Future<void> deleteAppStatusData() async {
    await localStorage.deleteValue(key: _key);
  }
}