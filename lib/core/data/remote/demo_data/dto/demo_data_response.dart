import 'package:freezed_annotation/freezed_annotation.dart';

part 'demo_data_response.freezed.dart';
part 'demo_data_response.g.dart';

@freezed
abstract class DemoDataResponse with _$DemoDataResponse {
  const factory DemoDataResponse({
    required String title,
    required String description,
    required List<DemoDataResponseMovies> movies,
  }) = _DemoDataResponse;

  factory DemoDataResponse.fromJson(Map<String, dynamic> json) =>
      _$DemoDataResponseFromJson(json);
}

@freezed
abstract class DemoDataResponseMovies with _$DemoDataResponseMovies {
  const factory DemoDataResponseMovies({
    required String id,
    required String title,
    required String releaseYear,
  }) = _DemoDataResponseMovies;

  factory DemoDataResponseMovies.fromJson(Map<String, dynamic> json) =>
      _$DemoDataResponseMoviesFromJson(json);
}
