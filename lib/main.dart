import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_template_arch/app/global/system_mode/system_mode_cubit.dart';
import 'package:flutter_project_template_arch/core/config/config.dart';
import 'package:flutter_project_template_arch/core/dependencies/injection.dart';
import 'package:flutter_project_template_arch/core/services/api_fetch/api_fetch.dart';
import 'package:flutter_project_template_arch/core/general_helpers/utils/screen_size_util.dart';
import 'package:flutter_project_template_arch/app/navigation/router.dart';
import 'package:flutter_project_template_arch/app/themes/system_mode/theme_system_mode.dart';
import 'package:flutter_project_template_arch/core/services/local_storage/local_storage.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Initialize Device Orientation
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  /// Initialize Dependency Injection
  Injection().initializeDependencyInjection();
  await EasyLocalization.ensureInitialized();
  await Hive.initFlutter();

  /// Initialize Dio
  getIt<ApiFetch>().initializeDio();
  getIt<LocalStorage>().openBox();

  runApp(
    EasyLocalization(
      supportedLocales: Config.supportedLocales,
      path: Config.localizationPath,
      fallbackLocale: Config.fallbackLocale,
      saveLocale: false,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// Initialize dynamic screen size
    ScreenSizeUtil.initializeScreenSize(context);

    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => SystemModeCubit())],
      child: BlocSelector<SystemModeCubit, SystemModeState, ThemeMode>(
        selector: (state) => state.systemMode,
        builder: (context, state) {
          return MaterialApp.router(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            themeMode: state,
            theme: ThemeSystemMode.lightConfig,
            darkTheme: ThemeSystemMode.darkConfig,
            routerConfig: router,
          );
        },
      ),
    );
  }
}
