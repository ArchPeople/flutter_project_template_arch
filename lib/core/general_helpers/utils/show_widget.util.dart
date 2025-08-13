import 'package:flutter/material.dart';
import 'package:flutter_project_template_arch/core/general_helpers/utils/screen_size_util.dart';
import 'package:flutter_project_template_arch/app/themes/padding/theme_padding.dart';
import 'package:flutter_project_template_arch/app/widgets/atoms/bottom_sheet/bottom_sheet_base.dart';
import 'package:flutter_project_template_arch/app/widgets/atoms/dialog/dialog_base.dart';

class ShowWidgetUtil {
  ShowWidgetUtil._();

  /// Bottom Sheet
  static Future<void> dynamicBottomSheet({
    required BuildContext context,
    EdgeInsetsGeometry? padding,
    CrossAxisAlignment? crossAxisAlignment,
    List<Widget>? children,
    bool? isDismissible,
    bool? enableDrag,
    double? height,
    Color? color,
  }) {
    return showModalBottomSheet(
      context: context,
      isDismissible: isDismissible ?? true,
      enableDrag: enableDrag ?? true,
      isScrollControlled: height != null ? true : false,
      builder: (context) {
        return BottomSheetBase(
          color: color,
          padding: padding ?? ThemePadding.paNull,
          height: height != null
              ? height >= ScreenSizeUtil.getScreenHeight()
                    ? (ScreenSizeUtil.getScreenHeight() -
                          ScreenSizeUtil.getStatusBarHeight())
                    : height
              : null,
          crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
          children: children,
        );
      },
    );
  }

  static Future<void> fullScreenBottomSheet({
    required BuildContext context,
    EdgeInsetsGeometry? padding,
    CrossAxisAlignment? crossAxisAlignment,
    List<Widget>? children,
    bool? isDismissible,
    bool? enableDrag,
    Color? color,
  }) {
    return showModalBottomSheet(
      context: context,
      isDismissible: isDismissible ?? true,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return BottomSheetBase(
          color: color,
          padding: padding ?? ThemePadding.paNull,
          height:
              ScreenSizeUtil.getScreenHeight() -
              ScreenSizeUtil.getStatusBarHeight(),
          crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
          children: children,
        );
      },
    );
  }

  /// Dialog
  static Future<void> dialog({
    required BuildContext context,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    CrossAxisAlignment? crossAxisAlignment,
    List<Widget>? children,
    BorderRadius? borderRadius,
    Color? color,
  }) {
    return showDialog(
      context: context,
      builder: (context) {
        return DialogBase(
          margin: margin,
          padding: padding,
          crossAxisAlignment: crossAxisAlignment,
          color: color,
          borderRadius: borderRadius,
          children: children,
        );
      },
    );
  }
}
