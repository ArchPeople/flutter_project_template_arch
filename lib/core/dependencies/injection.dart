import 'package:flutter_project_template_arch/core/data/local/app_status_data/app_status_data.dart';
import 'package:flutter_project_template_arch/core/data/remote/demo_data/demo_data.dart';
import 'package:flutter_project_template_arch/core/services/api_fetch/api_fetch.dart';
import 'package:flutter_project_template_arch/core/services/local_storage/local_storage.dart';
import 'package:flutter_project_template_arch/features/demo_feature/repository/demo_feature_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class Injection {
  void initializeDependencyInjection() {
    /// Service /////////////////////////
    getIt.registerLazySingleton<ApiFetch>(() => ApiFetch());

    getIt.registerLazySingleton<LocalStorage>(() => LocalStorage());

    /// Remote Data /////////////////////////
    getIt.registerLazySingleton<DemoData>(
      () => DemoData(apiFetch: getIt<ApiFetch>()),
    );

    /// Local Data /////////////////////////
    getIt.registerLazySingleton<AppStatusData>(
      () => AppStatusData(localStorage: getIt<LocalStorage>()),
    );

    /// Repository /////////////////////////
    getIt.registerLazySingleton<DemoFeatureRepository>(
      () => DemoFeatureRepositoryImpl(demoData: getIt<DemoData>()),
    );
  }
}
