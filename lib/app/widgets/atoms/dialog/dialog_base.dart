import 'package:flutter/material.dart';
import 'package:flutter_project_template_arch/app/assets/colors/asset_colors.dart';
import 'package:flutter_project_template_arch/core/general_helpers/utils/screen_size_util.dart';
import 'package:flutter_project_template_arch/app/themes/border/theme_border.dart';
import 'package:flutter_project_template_arch/app/themes/padding/theme_padding.dart';

class DialogBase extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final CrossAxisAlignment? crossAxisAlignment;
  final List<Widget>? children;
  final Color? color;
  final BorderRadius? borderRadius;

  const DialogBase({
    super.key,
    this.margin,
    this.padding,
    this.crossAxisAlignment,
    this.children,
    this.color,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      child: Container(
        width: ScreenSizeUtil.getScreenWidth(),
        margin: margin ?? ThemePadding.phLG,
        decoration: BoxDecoration(
          color: color ?? AssetColors.white,
          borderRadius: borderRadius ?? ThemeBorder.radiusNull,
        ),
        padding: padding ?? ThemePadding.paLG,
        child: Column(
          crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min, children: children ?? []
          ),
      ),
    );
  }
}
