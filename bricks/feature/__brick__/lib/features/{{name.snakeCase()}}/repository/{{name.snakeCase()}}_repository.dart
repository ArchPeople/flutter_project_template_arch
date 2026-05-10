import 'package:dio/dio.dart';
import 'package:flutter_project_template_arch/core/common/type_def/api_result_type_def.dart';
import 'package:flutter_project_template_arch/core/data/remote/demo_data/demo_data.dart';
import 'package:flutter_project_template_arch/core/data/remote/demo_data/dto/demo_data_response.dart';
import 'package:fpdart/fpdart.dart';

abstract class {{name.pascalCase()}}Repository {
  ApiResult<DemoDataResponse> getDemoData({CancelToken? cancelToken});
}

class {{name.pascalCase()}}RepositoryImpl implements {{name.pascalCase()}}Repository {
  final DemoData demoData;

  {{name.pascalCase()}}RepositoryImpl({required this.demoData});
  
  @override
  ApiResult<DemoDataResponse> getDemoData({CancelToken? cancelToken}) async {
    final result = await demoData.fetchDemoData(cancelToken: cancelToken);
    return result.match(
      (failure) => Either.left(failure),
      (success) => Either.right(success),
    );
  }
}