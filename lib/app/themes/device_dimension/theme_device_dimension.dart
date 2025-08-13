class ThemeDeviceDimension {
  const ThemeDeviceDimension._();

  // Screen dimensions imitations (Add more if needed)
  static double phoneScreenWidth = 360.0;
  static double phoneScreenHeight = 640.0;
  static double tabletScreenWidth =
      600.0; // Changing this will affect tablet screen size initialization in screen_size_util.dart
  static double tabletScreenHeight = 1000.0;

  // Default screen dimensions
  static double defaultScreenWidth =
      phoneScreenWidth; // Change this with any width from above, it will affect dynamic UI
  static double defaultScreenHeight =
      phoneScreenHeight; // Change this with any height from above, it will affect dynamic UI
}
