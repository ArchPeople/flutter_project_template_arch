import 'package:flutter/widgets.dart';
import 'package:flutter_project_template_arch/app/themes/device_dimension/theme_device_dimension.dart';

extension DynamicSizeX on BuildContext {
  double get dsScale {
    final width = MediaQuery.sizeOf(this).width;
    return width / ThemeDeviceDimension.deviceWidth(width);
  }

  double ds(num value) => value * dsScale;

  bool get isTablet =>
      ThemeDeviceDimension.isTablet(MediaQuery.sizeOf(this).width);
}
