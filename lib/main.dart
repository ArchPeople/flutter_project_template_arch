import 'package:cupertino_ui/cupertino_ui.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart'
    show GlobalWidgetsLocalizations;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_template_arch/app/global/locale/locale_cubit.dart';
import 'package:flutter_project_template_arch/app/global/system_mode/system_mode_cubit.dart';
import 'package:flutter_project_template_arch/app/localizations/app_localizations.dart';
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
  await Hive.initFlutter();

  /// Initialize Dio
  getIt<ApiFetch>().initializeDio();
  getIt<LocalStorage>().openBox();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// Initialize dynamic screen size
    ScreenSizeUtil.initializeScreenSize(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SystemModeCubit()),
        BlocProvider(create: (context) => LocaleCubit()),
      ],
      child: BlocSelector<SystemModeCubit, SystemModeState, ThemeMode>(
        selector: (state) => state.systemMode,
        builder: (context, state) {
          return BlocSelector<LocaleCubit, LocaleState, Locale?>(
            selector: (state) => state.locale,
            builder: (context, locale) {
              return MaterialApp.router(
                localizationsDelegates: [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                ],
                supportedLocales: AppLocalizations.supportedLocales,
                locale: locale,
                themeMode: state,
                theme: ThemeSystemMode.lightConfig,
                darkTheme: ThemeSystemMode.darkConfig,
                routerConfig: router,
              );
            },
          );
        },
      ),
    );
  }
}
