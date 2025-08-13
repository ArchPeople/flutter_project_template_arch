import 'package:flutter_project_template_arch/constants/type_def/api_result_type_def.dart';
import 'package:flutter_project_template_arch/core/data/remote/demo_data/demo_data.dart';
import 'package:flutter_project_template_arch/core/data/remote/demo_data/dto/demo_data_response.dart';
import 'package:fpdart/fpdart.dart';

abstract class DemoFeatureRepository {
  ApiResult<DemoDataResponse> getDemoData();
}

class DemoFeatureRepositoryImpl implements DemoFeatureRepository {
  final DemoData demoData;

  DemoFeatureRepositoryImpl({required this.demoData});
  
  @override
  ApiResult<DemoDataResponse> getDemoData() async {
    final result = await demoData.fetchDemoData();
    return result.match(
      (failure) => Either.left(failure),
      (success) => Either.right(success),
    );
  }
}