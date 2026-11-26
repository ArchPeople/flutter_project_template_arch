import 'package:material_ui/material_ui.dart';
import 'package:flutter_project_template_arch/app/assets/colors/asset_colors.dart';
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
        width: MediaQuery.sizeOf(context).width,
        margin: margin ?? context.themePadding.phLG,
        decoration: BoxDecoration(
          color: color ?? AssetColors.white,
          borderRadius: borderRadius ?? context.themeBorder.radiusNull,
        ),
        padding: padding ?? context.themePadding.paLG,
        child: Column(
          crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: children ?? [],
        ),
      ),
    );
  }
}
