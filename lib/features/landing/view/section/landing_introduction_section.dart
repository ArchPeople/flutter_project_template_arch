import 'package:flutter_project_template_arch/app/localizations/app_localizations.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_template_arch/app/assets/colors/asset_colors.dart';
import 'package:flutter_project_template_arch/app/assets/images/asset_images.dart';
import 'package:flutter_project_template_arch/app/global/locale/locale_cubit.dart';
import 'package:flutter_project_template_arch/app/global/system_mode/system_mode_cubit.dart';
import 'package:flutter_project_template_arch/app/navigation/path/navigation_path.dart';
import 'package:flutter_project_template_arch/app/navigation/router.dart';
import 'package:flutter_project_template_arch/app/themes/fonts/theme_fonts.dart';
import 'package:flutter_project_template_arch/app/themes/padding/theme_padding.dart';
import 'package:flutter_project_template_arch/app/themes/system_mode/theme_system_mode.dart';
import 'package:flutter_project_template_arch/app/widgets/atoms/button/button_base.dart';
import 'package:flutter_project_template_arch/app/widgets/atoms/gap/gap.dart';
import 'package:flutter_project_template_arch/app/widgets/atoms/ink/ink_base.dart';
import 'package:flutter_project_template_arch/app/widgets/atoms/pressable/pressable_base.dart';
import 'package:flutter_project_template_arch/app/widgets/atoms/text/text_base.dart';
import 'package:flutter_project_template_arch/core/general_helpers/extensions/dynamic_size_extension.dart';
import 'package:flutter_project_template_arch/core/general_helpers/extensions/localization_extension.dart';

class LandingIntroductionSection extends StatefulWidget {
  const LandingIntroductionSection({super.key});

  @override
  State<LandingIntroductionSection> createState() =>
      _LandingIntroductionSectionState();
}

class _LandingIntroductionSectionState
    extends State<LandingIntroductionSection> {
  late final _systemModeCubit = context.read<SystemModeCubit>();
  late final _localeCubit = context.read<LocaleCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SystemModeCubit, SystemModeState>(
      builder: (context, state) {
        AppLocalizations tr = context.l10n;
        final fonts = context.themeFont;

        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                state.systemMode == ThemeSystemMode.light
                    ? AssetColors.lightYellow
                    : AssetColors.maroonRed,
                state.systemMode == ThemeMode.light
                    ? AssetColors.lightRed
                    : AssetColors.darkPurple,
              ],
            ),
          ),
          child: Padding(
            padding: context.themePadding.phXXL,
            child: Column(
              children: [
                Gap.height(context.ds(context.isTablet ? 50 : 150)),
                Image.asset(
                  gaplessPlayback: true,
                  state.systemMode == ThemeMode.light
                      ? AssetImages.archLogoBlack
                      : AssetImages.archLogoWhite,
                  height: context.ds(context.isTablet ? 60 : 80),
                ),
                Gap.height(context.ds(context.isTablet ? 40 : 80)),
                TextBase(
                  label: context.l10n.welcomeMessage('Arch'),
                  style: context.isTablet
                      ? fonts.h5ExtraBold
                      : fonts.h4ExtraBold,
                ),
                Gap.height(context.ds(20)),
                TextBase(
                  label: tr.introductionMessage,
                  textAlign: TextAlign.center,
                  style: context.isTablet
                      ? fonts.bodyXsLight
                      : fonts.bodySmLight,
                ),
                Gap.height(context.ds(context.isTablet ? 30 : 40)),
                ButtonBase(
                  height: context.isTablet ? null : 50,
                  width: context.ds(180),
                  label: 'Demo Feature',
                  labelStyle: context.isTablet ? fonts.bodySmLight : null,
                  onPressed: () {
                    router.push(NavigationPath.demoFeature);
                  },
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: context.ds(20),
                  children: [
                    Pressablebase(
                      child: TextBase(
                        label: '🇬🇧',
                        style: fonts.bodyLgRegular,
                      ),
                      onTap: () {
                        _localeCubit.setLocale(const Locale('en'));
                      },
                    ),
                    Pressablebase(
                      child: TextBase(
                        label: '🇫🇷',
                        style: fonts.bodyLgRegular,
                      ),
                      onTap: () {
                        _localeCubit.setLocale(const Locale('fr'));
                      },
                    ),
                  ],
                ),
                Gap.height(context.ds(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkBase(
                      onTap: () {
                        _systemModeCubit.setMode(Brightness.light);
                      },
                      child: TextBase(
                        label: tr.lightMode,
                        style: state.systemMode == ThemeSystemMode.light
                            ? fonts.bodyXsMedium
                            : fonts.bodyXsLight,
                      ),
                    ),
                    TextBase(label: ' | ', style: fonts.bodySmLight),
                    InkBase(
                      onTap: () {
                        _systemModeCubit.setMode(Brightness.dark);
                      },
                      child: TextBase(
                        label: tr.darkMode,
                        style: state.systemMode == ThemeSystemMode.dark
                            ? fonts.bodyXsMedium
                            : fonts.bodyXsLight,
                      ),
                    ),
                  ],
                ),
                Gap.height(context.ds(20)),
                TextBase(
                  label: 'ver 2.5.0',
                  style: context.isTablet
                      ? fonts.captionLight
                      : fonts.bodyXsLight,
                ),
                Gap.height(
                  context.ds(
                    MediaQuery.viewPaddingOf(context).bottom +
                        (context.isTablet ? 0 : 20),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
