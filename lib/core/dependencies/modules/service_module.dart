import 'package:flutter_project_template_arch/core/dependencies/injection.dart';
import 'package:flutter_project_template_arch/core/services/api_fetch/api_fetch.dart';
import 'package:flutter_project_template_arch/core/services/local_storage/local_storage.dart';

void serviceModule() {
  getIt.registerLazySingleton<ApiFetch>(() => ApiFetch());
  getIt.registerLazySingleton<LocalStorage>(() => LocalStorage());
}