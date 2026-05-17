import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_project_template_arch/core/common/view_state/view_state.dart';
import 'package:flutter_project_template_arch/features/demo_feature/repository/demo_feature_repository.dart';

part 'demo_feature_state.dart';

class DemoFeatureCubit extends Cubit<DemoFeatureState> {
  final DemoFeatureRepository repository;

  DemoFeatureCubit({required this.repository})
    : super(DemoFeatureState.initial());

  final CancelToken _cancelToken = CancelToken();

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }

  /// This function is just for demo purposes to show how to use the cubit.
  void demoCubitFunction() {
    emit(state.copyWith(demoState: ViewState.loading));

    Future.delayed(const Duration(seconds: 2), () {
      emit(state.copyWith(demoState: ViewState.success));
    });
  }

  /// This function is just for demo purposes to show how to use the cubit with a repository.
  void demoCubitApiFunction() async {
    emit(state.copyWith(demoState: ViewState.loading));
    final result = await repository.getDemoData(cancelToken: _cancelToken);
    if (isClosed) return;
    result.match(
      (failure) {
        emit(state.copyWith(demoState: ViewState.error));
      },
      (success) {
        emit(state.copyWith(demoState: ViewState.success));
      },
    );
  }
}
