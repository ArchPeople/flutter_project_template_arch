import 'package:flutter_project_template_arch/core/data/remote/demo_data/demo_data.dart';
import 'package:flutter_project_template_arch/core/dependencies/injection.dart';
import 'package:flutter_project_template_arch/core/services/api_fetch/api_fetch.dart';

void remoteDataModule() {
  getIt.registerLazySingleton<DemoData>(
    () => DemoData(apiFetch: getIt<ApiFetch>()),
  );
}
