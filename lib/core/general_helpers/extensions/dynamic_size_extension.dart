import 'package:flutter_project_template_arch/core/general_helpers/utils/screen_size_util.dart';
import 'package:flutter_project_template_arch/app/themes/device_dimension/theme_device_dimension.dart';

extension DynamicSizeX on num {
  double get ds {
    double width = ScreenSizeUtil.getScreenWidth();
    double scale = width / ThemeDeviceDimension.defaultScreenWidth;
    return this * scale;
  }
}