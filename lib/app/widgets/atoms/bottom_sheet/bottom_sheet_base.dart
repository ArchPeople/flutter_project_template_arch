import 'package:flutter/material.dart';
import 'package:flutter_project_template_arch/app/assets/colors/asset_colors.dart';
import 'package:flutter_project_template_arch/app/themes/border/theme_border.dart';
import 'package:flutter_project_template_arch/app/themes/padding/theme_padding.dart';

class BottomSheetBase extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final CrossAxisAlignment? crossAxisAlignment;
  final List<Widget>? children;
  final double? height;
  final Color? color;

  const BottomSheetBase({
    super.key,
    this.padding,
    this.crossAxisAlignment,
    this.children,
    this.height,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? AssetColors.white,
        borderRadius: ThemeBorder.bt24
      ),
      padding: padding ?? ThemePadding.paNull,
      height: height,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: children ?? [],
      ),
    );
  }
}
