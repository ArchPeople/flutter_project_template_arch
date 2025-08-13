import 'package:flutter_project_template_arch/core/common/type_def/api_result_type_def.dart';
import 'package:flutter_project_template_arch/core/common/base/base_failure_response.dart';
import 'package:flutter_project_template_arch/core/config/config.dart';
import 'package:flutter_project_template_arch/core/data/remote/demo_data/dto/demo_data_response.dart';
import 'package:flutter_project_template_arch/core/data/remote/api_path/api_path.dart';
import 'package:flutter_project_template_arch/core/services/api_fetch/api_fetch.dart';
import 'package:fpdart/fpdart.dart';

class DemoData {
  final ApiFetch apiFetch;

  DemoData({required this.apiFetch});

  ApiResult<DemoDataResponse> fetchDemoData() async {
    try {
      final data = await apiFetch.getApi(
        url: '${Config.demoDomain}${ApiPath.demoEndpoint}',
      );
      DemoDataResponse response = DemoDataResponse.fromJson(data);
      return Right(response);
    } catch (e) {
      return Left(BaseFailureResponse(message: 'Failed to fetch demo data'));
    }
  }
}
