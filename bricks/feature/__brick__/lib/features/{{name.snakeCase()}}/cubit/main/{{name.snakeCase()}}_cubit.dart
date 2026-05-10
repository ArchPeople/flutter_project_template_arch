import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_project_template_arch/core/common/view_state/view_state.dart';
import 'package:flutter_project_template_arch/features/{{name.snakeCase()}}/repository/{{name.snakeCase()}}_repository.dart';

part '{{name.snakeCase()}}_state.dart';

class {{name.pascalCase()}}Cubit extends Cubit<{{name.pascalCase()}}State> {

  final {{name.pascalCase()}}Repository repository;

  {{name.pascalCase()}}Cubit({
    required this.repository,
  }) : super({{name.pascalCase()}}State.initial());

  final CancelToken _cancelToken = CancelToken();

  @override // Cancel any ongoing operations when the Cubit is closed
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }

  void exampleChangeState() async {
    emit(state.copyWith(state{{name.pascalCase()}}: ViewState.loading));
  }

  void exampleFetchApi() async {
    emit(state.copyWith(state{{name.pascalCase()}}: ViewState.loading));
    final result = await repository.getDemoData(cancelToken: _cancelToken);
    if (isClosed) return; // Stop further processing if the Cubit is closed (Especially after api cancel via _cancelToken)
    result.match(
      (failure){
        emit(state.copyWith(
          state{{name.pascalCase()}}: ViewState.error
        ));
      },
      (success){
        emit(state.copyWith(
          state{{name.pascalCase()}}: ViewState.success,
        ));
      }
    );
  }
}
