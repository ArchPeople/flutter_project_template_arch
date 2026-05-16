import 'package:flutter_project_template_arch/core/data/local/storage_key.dart';
import 'package:flutter_project_template_arch/core/services/local_storage/local_storage.dart';

class AppStatusData {
  final LocalStorage localStorage;

  AppStatusData({required this.localStorage});

  final String _key = StorageKey.appStatusStorageKey;

  void setAppStatusData({required bool value}) {
    localStorage.setValue(key: _key, value: value.toString());
  }

  bool getAppStatusData() {
    final value = localStorage.getValue(key: _key);
    if (value != null) {
      return value == 'true' ? true : false;
    } else {
      return false;
    }
  }

  void deleteAppStatusData() {
    localStorage.deleteValue(key: _key);
  }
}
