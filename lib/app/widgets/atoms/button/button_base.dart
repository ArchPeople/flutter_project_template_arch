import 'package:flutter/material.dart';
import 'package:flutter_project_template_arch/app/assets/colors/asset_colors.dart';
import 'package:flutter_project_template_arch/core/general_helpers/extensions/dynamic_size_extension.dart';
import 'package:flutter_project_template_arch/app/themes/system_mode/theme_system_mode.dart';
import 'package:flutter_project_template_arch/app/widgets/atoms/text/text_base.dart';

class ButtonBase extends StatelessWidget {
  final String accessibilityLabel;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? backgroundDarkColor;
  final Color? foregroundDarkColor;
  final double? width;
  final double? height;
  final String? label;
  final TextStyle? labelStyle;
  final VoidCallback onPressed;
  final VoidCallback? onLongPress;
  final bool disabled;

  const ButtonBase({
    super.key,
    this.accessibilityLabel = '',
    this.backgroundColor,
    this.foregroundColor,
    this.backgroundDarkColor,
    this.foregroundDarkColor,
    this.width,
    this.height,
    required this.label,
    this.labelStyle,
    required this.onPressed,
    this.onLongPress,
    this.disabled = false,
  });

  Color getForegroundColor(BuildContext context) {
    if (disabled) {
      return AssetColors.grey;
    } else {
      if (foregroundColor != null &&
          Theme.of(context).brightness == ThemeSystemMode.lightBrightness) {
        return foregroundColor!;
      } else if (foregroundDarkColor != null &&
          Theme.of(context).brightness == ThemeSystemMode.darkBrightness) {
        return foregroundDarkColor!;
      } else {
        return AssetColors.white;
      }
    }
  }

  Color getBackgroundColor(BuildContext context) {
    if (disabled) {
      return AssetColors.lightGrey;
    } else {
      if (backgroundColor != null &&
          Theme.of(context).brightness == ThemeSystemMode.lightBrightness) {
        return backgroundColor!;
      } else if (backgroundDarkColor != null &&
          Theme.of(context).brightness == ThemeSystemMode.darkBrightness) {
        return backgroundDarkColor!;
      } else {
        if (Theme.of(context).brightness == ThemeSystemMode.lightBrightness) {
          return AssetColors.blue;
        } else {
          return AssetColors.purple;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      excludeSemantics: true,
      label: 'button-$accessibilityLabel',
      child: SizedBox(
        width: width ?? double.infinity,
        height: height ?? 40.ds,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: getBackgroundColor(context),
          ),
          onPressed: disabled ? null : onPressed,
          onLongPress: onLongPress,
          child: TextBase(
            label: label!,
            color: getForegroundColor(context),
            style: labelStyle,
          ),
        ),
      ),
    );
  }
}
