import 'package:material_ui/material_ui.dart';
import 'package:flutter_project_template_arch/core/general_helpers/extensions/dynamic_size_extension.dart';

class ThemeFonts {
  const ThemeFonts(this._scale);

  final double _scale;

  // Font Height
  TextStyle get fh1 => const TextStyle(height: 1.0);
  TextStyle get fh1_5 => const TextStyle(height: 1.5);
  TextStyle get fh2 => const TextStyle(height: 2.0);
  TextStyle get fh2_5 => const TextStyle(height: 2.5);

  // Main font sizes
  TextStyle get fs8 => TextStyle(fontSize: 8 * _scale);
  TextStyle get fs10 => TextStyle(fontSize: 10 * _scale);
  TextStyle get fs12 => TextStyle(fontSize: 12 * _scale);
  TextStyle get fs14 => TextStyle(fontSize: 14 * _scale);
  TextStyle get fs16 => TextStyle(fontSize: 16 * _scale);
  TextStyle get fs18 => TextStyle(fontSize: 18 * _scale);
  TextStyle get fs19 => TextStyle(fontSize: 19.2 * _scale);
  TextStyle get fs20 => TextStyle(fontSize: 20 * _scale);
  TextStyle get fs22 => TextStyle(fontSize: 22.4 * _scale);
  TextStyle get fs24 => TextStyle(fontSize: 24 * _scale);
  TextStyle get fs25 => TextStyle(fontSize: 25.6 * _scale);
  TextStyle get fs28 => TextStyle(fontSize: 28 * _scale);
  TextStyle get fs32 => TextStyle(fontSize: 32 * _scale);
  TextStyle get fs36 => TextStyle(fontSize: 36 * _scale);
  TextStyle get fs40 => TextStyle(fontSize: 40 * _scale);
  TextStyle get fs48 => TextStyle(fontSize: 48 * _scale);
  TextStyle get fs56 => TextStyle(fontSize: 56 * _scale);
  TextStyle get fs64 => TextStyle(fontSize: 64 * _scale);
  TextStyle get fs72 => TextStyle(fontSize: 72 * _scale);
  TextStyle get fs80 => TextStyle(fontSize: 80 * _scale);
  TextStyle get fs88 => TextStyle(fontSize: 88 * _scale);
  TextStyle get fs96 => TextStyle(fontSize: 96 * _scale);

  // Font Weight
  TextStyle get extraBold => const TextStyle(fontWeight: FontWeight.w800);
  TextStyle get bold => const TextStyle(fontWeight: FontWeight.bold);
  TextStyle get semibold => const TextStyle(fontWeight: FontWeight.w600);
  TextStyle get medium => const TextStyle(fontWeight: FontWeight.w500);
  TextStyle get regular => const TextStyle(fontWeight: FontWeight.w400);
  TextStyle get light => const TextStyle(fontWeight: FontWeight.w300);

  // Font Style
  TextStyle get italic => const TextStyle(fontStyle: FontStyle.italic);

  ///////////////////////////// FONT BY SIZE //////////////////////////////

  // Font sizes display
  TextStyle get d1Light => fs96.merge(light);
  TextStyle get d1Regular => fs96.merge(regular);
  TextStyle get d1Medium => fs96.merge(medium);
  TextStyle get d1Semibold => fs96.merge(semibold);
  TextStyle get d1Bold => fs96.merge(bold);
  TextStyle get d1ExtraBold => fs96.merge(extraBold);

  TextStyle get d2Light => fs72.merge(light);
  TextStyle get d2Regular => fs72.merge(regular);
  TextStyle get d2Medium => fs72.merge(medium);
  TextStyle get d2Semibold => fs72.merge(semibold);
  TextStyle get d2Bold => fs72.merge(bold);
  TextStyle get d2ExtraBold => fs72.merge(extraBold);

  TextStyle get d3Light => fs64.merge(light);
  TextStyle get d3Regular => fs64.merge(regular);
  TextStyle get d3Medium => fs64.merge(medium);
  TextStyle get d3Semibold => fs64.merge(semibold);
  TextStyle get d3Bold => fs64.merge(bold);
  TextStyle get d3ExtraBold => fs64.merge(extraBold);

  TextStyle get d4Light => fs56.merge(light);
  TextStyle get d4Regular => fs56.merge(regular);
  TextStyle get d4Medium => fs56.merge(medium);
  TextStyle get d4Semibold => fs56.merge(semibold);
  TextStyle get d4Bold => fs56.merge(bold);
  TextStyle get d4ExtraBold => fs56.merge(extraBold);

  TextStyle get d5Light => fs48.merge(light);
  TextStyle get d5Regular => fs48.merge(regular);
  TextStyle get d5Medium => fs48.merge(medium);
  TextStyle get d5Semibold => fs48.merge(semibold);
  TextStyle get d5Bold => fs48.merge(bold);
  TextStyle get d5ExtraBold => fs48.merge(extraBold);

  TextStyle get d6Light => fs40.merge(light);
  TextStyle get d6Regular => fs40.merge(regular);
  TextStyle get d6Medium => fs40.merge(medium);
  TextStyle get d6Semibold => fs40.merge(semibold);
  TextStyle get d6Bold => fs40.merge(bold);
  TextStyle get d6ExtraBold => fs40.merge(extraBold);

  // Font sizes heading
  TextStyle get h1Light => fs32.merge(light);
  TextStyle get h1Regular => fs32.merge(regular);
  TextStyle get h1Medium => fs32.merge(medium);
  TextStyle get h1Semibold => fs32.merge(semibold);
  TextStyle get h1Bold => fs32.merge(bold);
  TextStyle get h1ExtraBold => fs32.merge(extraBold);

  TextStyle get h2Light => fs28.merge(light);
  TextStyle get h2Regular => fs28.merge(regular);
  TextStyle get h2Medium => fs28.merge(medium);
  TextStyle get h2Semibold => fs28.merge(semibold);
  TextStyle get h2Bold => fs28.merge(bold);
  TextStyle get h2ExtraBold => fs28.merge(extraBold);

  TextStyle get h3Light => fs24.merge(light);
  TextStyle get h3Regular => fs24.merge(regular);
  TextStyle get h3Medium => fs24.merge(medium);
  TextStyle get h3Semibold => fs24.merge(semibold);
  TextStyle get h3Bold => fs24.merge(bold);
  TextStyle get h3ExtraBold => fs24.merge(extraBold);

  TextStyle get h4Light => fs20.merge(light);
  TextStyle get h4Regular => fs20.merge(regular);
  TextStyle get h4Medium => fs20.merge(medium);
  TextStyle get h4Semibold => fs20.merge(semibold);
  TextStyle get h4Bold => fs20.merge(bold);
  TextStyle get h4ExtraBold => fs20.merge(extraBold);

  TextStyle get h5Light => fs16.merge(light);
  TextStyle get h5Regular => fs16.merge(regular);
  TextStyle get h5Medium => fs16.merge(medium);
  TextStyle get h5Semibold => fs16.merge(semibold);
  TextStyle get h5Bold => fs16.merge(bold);
  TextStyle get h5ExtraBold => fs16.merge(extraBold);

  TextStyle get h6Light => fs12.merge(light);
  TextStyle get h6Regular => fs12.merge(regular);
  TextStyle get h6Medium => fs12.merge(medium);
  TextStyle get h6Semibold => fs12.merge(semibold);
  TextStyle get h6Bold => fs12.merge(bold);
  TextStyle get h6ExtraBold => fs12.merge(extraBold);

  // Font sizes sub heading
  TextStyle get sh1 => fs32.merge(medium);
  TextStyle get sh2 => fs28.merge(medium);
  TextStyle get sh3 => fs24.merge(medium);
  TextStyle get sh4 => fs22.merge(medium);
  TextStyle get sh5 => fs18.merge(medium);
  TextStyle get sh6 => fs16.merge(medium);

  // Body-Large
  TextStyle get bodyLgLight => fs18.merge(light);
  TextStyle get bodyLgRegular => fs18.merge(regular);
  TextStyle get bodyLgMedium => fs18.merge(medium);
  TextStyle get bodyLgSemibold => fs18.merge(semibold);
  TextStyle get bodyLgBold => fs18.merge(bold);

  // Body-Medium
  TextStyle get bodyMdLight => fs16.merge(light);
  TextStyle get bodyMdRegular => fs16.merge(regular);
  TextStyle get bodyMdMedium => fs16.merge(medium);
  TextStyle get bodyMdSemibold => fs16.merge(semibold);
  TextStyle get bodyMdBold => fs16.merge(bold);

  // Body-Small
  TextStyle get bodySmLight => fs14.merge(light);
  TextStyle get bodySmRegular => fs14.merge(regular);
  TextStyle get bodySmMedium => fs14.merge(medium);
  TextStyle get bodySmSemibold => fs14.merge(semibold);
  TextStyle get bodySmBold => fs14.merge(bold);

  // Body-XSmall
  TextStyle get bodyXsLight => fs12.merge(light);
  TextStyle get bodyXsRegular => fs12.merge(regular);
  TextStyle get bodyXsMedium => fs12.merge(medium);
  TextStyle get bodyXsSemibold => fs12.merge(semibold);
  TextStyle get bodyXsBold => fs12.merge(bold);

  // Caption
  TextStyle get captionLight => fs10.merge(light);
  TextStyle get captionRegular => fs10.merge(regular);
  TextStyle get captionMedium => fs10.merge(medium);
  TextStyle get captionSemibold => fs10.merge(semibold);
  TextStyle get captionBold => fs10.merge(bold);

  // Default style for TextBase widget
  TextStyle get defaultTextBase => bodyMdRegular;
}

extension ThemeFontsX on BuildContext {
  ThemeFonts get themeFont => ThemeFonts(dsScale);
}
