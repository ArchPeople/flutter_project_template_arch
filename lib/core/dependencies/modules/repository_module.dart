import 'package:flutter_project_template_arch/core/data/remote/demo_data/demo_data.dart';
import 'package:flutter_project_template_arch/core/dependencies/injection.dart';
import 'package:flutter_project_template_arch/features/demo_feature/repository/demo_feature_repository.dart';

void repositoryModule() {
  getIt.registerLazySingleton<DemoFeatureRepository>(
    () => DemoFeatureRepositoryImpl(demoData: getIt<DemoData>()),
  );
}
