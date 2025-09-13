import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_template_arch/app/themes/system_mode/theme_system_mode.dart';

part 'system_mode_state.dart';

class SystemModeCubit extends Cubit<SystemModeState>
    with WidgetsBindingObserver {
  SystemModeCubit() : super(SystemModeState.initial()) {
    WidgetsBinding.instance.addObserver(this);
    final brightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    setMode(brightness);
  }

  @override
  void didChangePlatformBrightness() {
    final brightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    setMode(brightness);
  }

  void switchMode() {
    emit(
      state.copyWith(
        systemMode: state.systemMode == ThemeSystemMode.light
            ? ThemeSystemMode.dark
            : ThemeSystemMode.light,
      ),
    );
  }

  void setMode(Brightness brightness) {
    emit(
      state.copyWith(
        systemMode: brightness == ThemeSystemMode.lightBrightness
            ? ThemeSystemMode.light
            : ThemeSystemMode.dark,
      ),
    );
  }
}
