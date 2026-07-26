import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_template_arch/app/assets/colors/asset_colors.dart';
import 'package:flutter_project_template_arch/app/assets/images/asset_images.dart';
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
import 'package:flutter_project_template_arch/core/general_helpers/utils/screen_size_util.dart';

class LandingIntroductionSection extends StatefulWidget {
  const LandingIntroductionSection({super.key});

  @override
  State<LandingIntroductionSection> createState() =>
      _LandingIntroductionSectionState();
}

class _LandingIntroductionSectionState
    extends State<LandingIntroductionSection> {
  late final _systemModeCubit = context.read<SystemModeCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SystemModeCubit, SystemModeState>(
      builder: (context, state) {
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
            padding: ThemePadding.phXXL,
            child: Column(
              children: [
                Gap.height(150.ds),
                Image.asset(
                  gaplessPlayback: true,
                  state.systemMode == ThemeMode.light
                      ? AssetImages.archLogoBlack
                      : AssetImages.archLogoWhite,
                  height: 80.ds,
                ),
                Gap.height(80.ds),
                TextBase(
                  label: 'welcome_message'.tr(args: ['Arch']),
                  style: ThemeFonts.h4ExtraBold,
                ),
                Gap.height(20.ds),
                TextBase(
                  label: 'introduction_message'.tr(),
                  textAlign: TextAlign.center,
                  style: ThemeFonts.bodySmLight,
                ),
                Gap.height(40.ds),
                ButtonBase(
                  width: 180.ds,
                  label: 'Demo Feature',
                  onPressed: () {
                    router.push(NavigationPath.demoFeature);
                  },
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20.ds,
                  children: [
                    Pressablebase(
                      child: TextBase(
                        label: '🇬🇧',
                        style: ThemeFonts.bodyLgRegular,
                      ),
                      onTap: () {
                        context.setLocale(Locale('en'));
                      },
                    ),
                    Pressablebase(
                      child: TextBase(
                        label: '🇫🇷',
                        style: ThemeFonts.bodyLgRegular,
                      ),
                      onTap: () {
                        context.setLocale(Locale('fr'));
                      },
                    ),
                  ],
                ),
                Gap.height(20.ds),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkBase(
                      onTap: () {
                        _systemModeCubit.setMode(Brightness.light);
                      },
                      child: TextBase(
                        label: 'light_mode'.tr(),
                        style: state.systemMode == ThemeSystemMode.light
                            ? ThemeFonts.bodyXsMedium
                            : ThemeFonts.bodyXsLight,
                      ),
                    ),
                    TextBase(label: ' | ', style: ThemeFonts.bodySmLight),
                    InkBase(
                      onTap: () {
                        _systemModeCubit.setMode(Brightness.dark);
                      },
                      child: TextBase(
                        label: 'dark_mode'.tr(),
                        style: state.systemMode == ThemeSystemMode.dark
                            ? ThemeFonts.bodyXsMedium
                            : ThemeFonts.bodyXsLight,
                      ),
                    ),
                  ],
                ),
                Gap.height(20.ds),
                TextBase(label: 'ver 2.1.2', style: ThemeFonts.bodyXsLight),
                Gap.height(ScreenSizeUtil.getBottomBarHeight().ds + 20.ds),
              ],
            ),
          ),
        );
      },
    );
  }
}
