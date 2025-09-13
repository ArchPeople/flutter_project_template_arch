import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_template_arch/app/global/system_mode/system_mode_cubit.dart';
import 'package:flutter_project_template_arch/core/dependencies/injection.dart';
import 'package:flutter_project_template_arch/core/services/api_fetch/api_fetch.dart';
import 'package:flutter_project_template_arch/core/general_helpers/utils/screen_size_util.dart';
import 'package:flutter_project_template_arch/app/navigation/router.dart';
import 'package:flutter_project_template_arch/app/themes/system_mode/theme_system_mode.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Initialize Device Orientation
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  /// Initialize Dependency Injection
  Injection().initializeDependencyInjection();

  /// Initialize Dio
  getIt<ApiFetch>().initializeDio();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// Initialize dynamic screen size
    ScreenSizeUtil.initializeScreenSize(context);

    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => SystemModeCubit())],
      child: BlocBuilder<SystemModeCubit, SystemModeState>(
        builder: (context, state) {
          return MaterialApp.router(
            themeMode: state.systemMode,
            theme: ThemeSystemMode.lightConfig,
            darkTheme: ThemeSystemMode.darkConfig,
            routerConfig: router,
          );
        },
      ),
    );
  }
}
