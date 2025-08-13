import 'package:flutter_project_template_arch/core/common/base/base_failure_response.dart';
import 'package:fpdart/fpdart.dart';

typedef ApiResult<T> = Future<Either<BaseFailureResponse, T>>;