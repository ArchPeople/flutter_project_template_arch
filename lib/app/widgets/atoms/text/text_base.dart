import 'package:flutter/material.dart';
import 'package:flutter_project_template_arch/app/assets/colors/asset_colors.dart';
import 'package:flutter_project_template_arch/app/themes/fonts/theme_fonts.dart';
import 'package:flutter_project_template_arch/app/themes/system_mode/theme_system_mode.dart';

class TextBase extends StatelessWidget {
  final String accessibilityLabel;
  final String label;
  final TextStyle? style;
  final Color? color;
  final Color? darkColor;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool? softWrap;
  final TextStyle? fontFamily;

  const TextBase({
    super.key,
    this.accessibilityLabel = '',
    this.label = '',
    this.style,
    this.maxLines,
    this.textAlign,
    this.color,
    this.darkColor,
    this.overflow,
    this.softWrap,
    this.fontFamily,
  });

  Color getColor(BuildContext context) {
    if (color != null && Theme.of(context).brightness == ThemeSystemMode.lightBrightness) {
      return color!;
    } else if (darkColor != null &&
        Theme.of(context).brightness == ThemeSystemMode.darkBrightness) {
      return darkColor!;
    } else {
      if (Theme.of(context).brightness == ThemeSystemMode.lightBrightness) {
        return AssetColors.black;
      } else {
        return AssetColors.white;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      excludeSemantics: true,
      label: 'text-$accessibilityLabel',
      child: Text(
        label,
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: softWrap,
        overflow: overflow,
        style: ThemeFonts.defaultTextBase
            .merge(TextStyle(color: getColor(context)))
            .merge(style)
            .merge(ThemeFonts.fh1_5),
      ),
    );
  }
}
