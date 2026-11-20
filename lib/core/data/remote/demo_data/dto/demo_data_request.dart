import 'package:freezed_annotation/freezed_annotation.dart';

part 'demo_data_request.freezed.dart';
part 'demo_data_request.g.dart';

@freezed
abstract class DemoDataRequest with _$DemoDataRequest {
  const factory DemoDataRequest({required String id}) = _DemoDataRequest;

  factory DemoDataRequest.fromJson(Map<String, dynamic> json) =>
      _$DemoDataRequestFromJson(json);
}
