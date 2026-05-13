import 'package:flutter_project_template_arch/core/data/local/app_status_data/app_status_data.dart';
import 'package:flutter_project_template_arch/core/dependencies/injection.dart';
import 'package:flutter_project_template_arch/core/services/local_storage/local_storage.dart';

void localDataModule() {
  getIt.registerLazySingleton<AppStatusData>(
    () => AppStatusData(localStorage: getIt<LocalStorage>()),
  );
}