class ThemeDeviceDimension {
  const ThemeDeviceDimension._();

  // Design base screen dimensions (Add more if needed)
  static const double phoneScreenWidth = 360.0;
  static const double phoneScreenHeight = 640.0;
  static const double tabletScreenWidth = 600.0; // Also the tablet breakpoint
  static const double tabletScreenHeight = 1000.0;

  static bool isTablet(double screenWidth) => screenWidth >= tabletScreenWidth;

  /// Design base width for the current form factor, so the scale follows
  /// orientation changes and fold/unfold instead of the first launch.
  static double deviceWidth(double screenWidth) =>
      isTablet(screenWidth) ? tabletScreenWidth : phoneScreenWidth;
}
