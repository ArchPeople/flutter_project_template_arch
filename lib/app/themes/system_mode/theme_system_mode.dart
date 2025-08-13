import 'package:flutter/material.dart';
import 'package:flutter_project_template_arch/app/assets/colors/asset_colors.dart';

class ThemeSystemMode {
  ThemeSystemMode._();

  // Device mode
  static ThemeMode light = ThemeMode.light;
  static ThemeMode dark = ThemeMode.dark;
  static ThemeMode system = ThemeMode.system;

  // Brightness mode
  static Brightness lightBrightness = Brightness.light;
  static Brightness darkBrightness = Brightness.dark;

  // Mode configuration
  static ThemeData lightConfig = ThemeData(
    brightness: lightBrightness,
    colorScheme: ColorScheme.light(
      primary: AssetColors.white,
      brightness: lightBrightness,
    ),
    useMaterial3: true,
  );

  static ThemeData darkConfig = ThemeData(
    brightness: darkBrightness,
    colorScheme: ColorScheme.dark(
      primary: AssetColors.grey,
      brightness: darkBrightness,
    ),
    useMaterial3: true,
  );
}
