import 'package:flutter/material.dart';
import 'package:flutter_project_template_arch/core/general_helpers/extensions/dynamic_size_extension.dart';

class ThemeFonts {
  const ThemeFonts._();

  // Font Height
  static TextStyle fh1 = TextStyle(height: 1.0);
  static TextStyle fh1_5 = TextStyle(height: 1.5);
  static TextStyle fh2 = TextStyle(height: 2.0);
  static TextStyle fh2_5 = TextStyle(height: 2.5);

  // Main font sizes
  static TextStyle fs8 = TextStyle(fontSize: 8.ds);
  static TextStyle fs10 = TextStyle(fontSize: 10.ds);
  static TextStyle fs12 = TextStyle(fontSize: 12.ds);
  static TextStyle fs14 = TextStyle(fontSize: 14.ds);
  static TextStyle fs16 = TextStyle(fontSize: 16.ds);
  static TextStyle fs18 = TextStyle(fontSize: 18.ds);
  static TextStyle fs19 = TextStyle(fontSize: 19.2.ds);
  static TextStyle fs20 = TextStyle(fontSize: 20.ds);
  static TextStyle fs22 = TextStyle(fontSize: 22.4.ds);
  static TextStyle fs24 = TextStyle(fontSize: 24.ds);
  static TextStyle fs25 = TextStyle(fontSize: 25.6.ds);
  static TextStyle fs28 = TextStyle(fontSize: 28.ds);
  static TextStyle fs32 = TextStyle(fontSize: 32.ds);
  static TextStyle fs36 = TextStyle(fontSize: 36.ds);
  static TextStyle fs40 = TextStyle(fontSize: 40.ds);
  static TextStyle fs48 = TextStyle(fontSize: 48.ds);
  static TextStyle fs56 = TextStyle(fontSize: 56.ds);
  static TextStyle fs64 = TextStyle(fontSize: 64.ds);
  static TextStyle fs72 = TextStyle(fontSize: 72.ds);
  static TextStyle fs80 = TextStyle(fontSize: 80.ds);
  static TextStyle fs88 = TextStyle(fontSize: 88.ds);
  static TextStyle fs96 = TextStyle(fontSize: 96.ds);

  // Font Weight
  static TextStyle extraBold = const TextStyle(fontWeight: FontWeight.w800);
  static TextStyle bold = const TextStyle(fontWeight: FontWeight.bold);
  static TextStyle semibold = const TextStyle(fontWeight: FontWeight.w600);
  static TextStyle medium = const TextStyle(fontWeight: FontWeight.w500);
  static TextStyle regular = const TextStyle(fontWeight: FontWeight.w400);
  static TextStyle light = const TextStyle(fontWeight: FontWeight.w300);

  // Font Style
  static TextStyle italic = const TextStyle(fontStyle: FontStyle.italic);

  ///////////////////////////// FONT BY SIZE //////////////////////////////

  // Font sizes display
  static TextStyle d1Light = ThemeFonts.fs96.merge(ThemeFonts.light);
  static TextStyle d1Regular = ThemeFonts.fs96.merge(ThemeFonts.regular);
  static TextStyle d1Medium = ThemeFonts.fs96.merge(ThemeFonts.medium);
  static TextStyle d1Semibold = ThemeFonts.fs96.merge(ThemeFonts.semibold);
  static TextStyle d1Bold = ThemeFonts.fs96.merge(ThemeFonts.bold);
  static TextStyle d1ExtraBold = ThemeFonts.fs96.merge(ThemeFonts.extraBold);

  static TextStyle d2Light = ThemeFonts.fs72.merge(ThemeFonts.light);
  static TextStyle d2Regular = ThemeFonts.fs72.merge(ThemeFonts.regular);
  static TextStyle d2Medium = ThemeFonts.fs72.merge(ThemeFonts.medium);
  static TextStyle d2Semibold = ThemeFonts.fs72.merge(ThemeFonts.semibold);
  static TextStyle d2Bold = ThemeFonts.fs72.merge(ThemeFonts.bold);
  static TextStyle d2ExtraBold = ThemeFonts.fs72.merge(ThemeFonts.extraBold);

  static TextStyle d3Light = ThemeFonts.fs64.merge(ThemeFonts.light);
  static TextStyle d3Regular = ThemeFonts.fs64.merge(ThemeFonts.regular);
  static TextStyle d3Medium = ThemeFonts.fs64.merge(ThemeFonts.medium);
  static TextStyle d3Semibold = ThemeFonts.fs64.merge(ThemeFonts.semibold);
  static TextStyle d3Bold = ThemeFonts.fs64.merge(ThemeFonts.bold);
  static TextStyle d3ExtraBold = ThemeFonts.fs64.merge(ThemeFonts.extraBold);

  static TextStyle d4Light = ThemeFonts.fs56.merge(ThemeFonts.light);
  static TextStyle d4Regular = ThemeFonts.fs56.merge(ThemeFonts.regular);
  static TextStyle d4Medium = ThemeFonts.fs56.merge(ThemeFonts.medium);
  static TextStyle d4Semibold = ThemeFonts.fs56.merge(ThemeFonts.semibold);
  static TextStyle d4Bold = ThemeFonts.fs56.merge(ThemeFonts.bold);
  static TextStyle d4ExtraBold = ThemeFonts.fs56.merge(ThemeFonts.extraBold);

  static TextStyle d5Light = ThemeFonts.fs48.merge(ThemeFonts.light);
  static TextStyle d5Regular = ThemeFonts.fs48.merge(ThemeFonts.regular);
  static TextStyle d5Medium = ThemeFonts.fs48.merge(ThemeFonts.medium);
  static TextStyle d5Semibold = ThemeFonts.fs48.merge(ThemeFonts.semibold);
  static TextStyle d5Bold = ThemeFonts.fs48.merge(ThemeFonts.bold);
  static TextStyle d5ExtraBold = ThemeFonts.fs48.merge(ThemeFonts.extraBold);

  static TextStyle d6Light = ThemeFonts.fs40.merge(ThemeFonts.light);
  static TextStyle d6Regular = ThemeFonts.fs40.merge(ThemeFonts.regular);
  static TextStyle d6Medium = ThemeFonts.fs40.merge(ThemeFonts.medium);
  static TextStyle d6Semibold = ThemeFonts.fs40.merge(ThemeFonts.semibold);
  static TextStyle d6Bold = ThemeFonts.fs40.merge(ThemeFonts.bold);
  static TextStyle d6ExtraBold = ThemeFonts.fs40.merge(ThemeFonts.extraBold);

  // Font sizes heading
  static TextStyle h1Light = ThemeFonts.fs32.merge(ThemeFonts.light);
  static TextStyle h1Regular = ThemeFonts.fs32.merge(ThemeFonts.regular);
  static TextStyle h1Medium = ThemeFonts.fs32.merge(ThemeFonts.medium);
  static TextStyle h1Semibold = ThemeFonts.fs32.merge(ThemeFonts.semibold);
  static TextStyle h1Bold = ThemeFonts.fs32.merge(ThemeFonts.bold);
  static TextStyle h1ExtraBold = ThemeFonts.fs32.merge(ThemeFonts.extraBold);

  static TextStyle h2Light = ThemeFonts.fs28.merge(ThemeFonts.light);
  static TextStyle h2Regular = ThemeFonts.fs28.merge(ThemeFonts.regular);
  static TextStyle h2Medium = ThemeFonts.fs28.merge(ThemeFonts.medium);
  static TextStyle h2Semibold = ThemeFonts.fs28.merge(ThemeFonts.semibold);
  static TextStyle h2Bold = ThemeFonts.fs28.merge(ThemeFonts.bold);
  static TextStyle h2ExtraBold = ThemeFonts.fs28.merge(ThemeFonts.extraBold);

  static TextStyle h3Light = ThemeFonts.fs24.merge(ThemeFonts.light);
  static TextStyle h3Regular = ThemeFonts.fs24.merge(ThemeFonts.regular);
  static TextStyle h3Medium = ThemeFonts.fs24.merge(ThemeFonts.medium);
  static TextStyle h3Semibold = ThemeFonts.fs24.merge(ThemeFonts.semibold);
  static TextStyle h3Bold = ThemeFonts.fs24.merge(ThemeFonts.bold);
  static TextStyle h3ExtraBold = ThemeFonts.fs24.merge(ThemeFonts.extraBold);

  static TextStyle h4Light = ThemeFonts.fs20.merge(ThemeFonts.light);
  static TextStyle h4Regular = ThemeFonts.fs20.merge(ThemeFonts.regular);
  static TextStyle h4Medium = ThemeFonts.fs20.merge(ThemeFonts.medium);
  static TextStyle h4Semibold = ThemeFonts.fs20.merge(ThemeFonts.semibold);
  static TextStyle h4Bold = ThemeFonts.fs20.merge(ThemeFonts.bold);
  static TextStyle h4ExtraBold = ThemeFonts.fs20.merge(ThemeFonts.extraBold);

  static TextStyle h5Light = ThemeFonts.fs16.merge(ThemeFonts.light);
  static TextStyle h5Regular = ThemeFonts.fs16.merge(ThemeFonts.regular);
  static TextStyle h5Medium = ThemeFonts.fs16.merge(ThemeFonts.medium);
  static TextStyle h5Semibold = ThemeFonts.fs16.merge(ThemeFonts.semibold);
  static TextStyle h5Bold = ThemeFonts.fs16.merge(ThemeFonts.bold);
  static TextStyle h5ExtraBold = ThemeFonts.fs16.merge(ThemeFonts.extraBold);

  static TextStyle h6Light = ThemeFonts.fs12.merge(ThemeFonts.light);
  static TextStyle h6Regular = ThemeFonts.fs12.merge(ThemeFonts.regular);
  static TextStyle h6Medium = ThemeFonts.fs12.merge(ThemeFonts.medium);
  static TextStyle h6Semibold = ThemeFonts.fs12.merge(ThemeFonts.semibold);
  static TextStyle h6Bold = ThemeFonts.fs12.merge(ThemeFonts.bold);
  static TextStyle h6ExtraBold = ThemeFonts.fs12.merge(ThemeFonts.extraBold);

  // Font sizes sub heading
  static TextStyle sh1 = ThemeFonts.fs32.merge(ThemeFonts.medium);
  static TextStyle sh2 = ThemeFonts.fs28.merge(ThemeFonts.medium);
  static TextStyle sh3 = ThemeFonts.fs24.merge(ThemeFonts.medium);
  static TextStyle sh4 = ThemeFonts.fs22.merge(ThemeFonts.medium);
  static TextStyle sh5 = ThemeFonts.fs18.merge(ThemeFonts.medium);
  static TextStyle sh6 = ThemeFonts.fs16.merge(ThemeFonts.medium);

  // Body-Large
  static TextStyle bodyLgLight = ThemeFonts.fs18.merge(ThemeFonts.light);
  static TextStyle bodyLgRegular = ThemeFonts.fs18.merge(ThemeFonts.regular);
  static TextStyle bodyLgMedium = ThemeFonts.fs18.merge(ThemeFonts.medium);
  static TextStyle bodyLgSemibold = ThemeFonts.fs18.merge(ThemeFonts.semibold);
  static TextStyle bodyLgBold = ThemeFonts.fs18.merge(ThemeFonts.bold);

  // Body-Medium
  static TextStyle bodyMdLight = ThemeFonts.fs16.merge(ThemeFonts.light);
  static TextStyle bodyMdRegular = ThemeFonts.fs16.merge(ThemeFonts.regular);
  static TextStyle bodyMdMedium = ThemeFonts.fs16.merge(ThemeFonts.medium);
  static TextStyle bodyMdSemibold = ThemeFonts.fs16.merge(ThemeFonts.semibold);
  static TextStyle bodyMdBold = ThemeFonts.fs16.merge(ThemeFonts.bold);

  // Body-Small
  static TextStyle bodySmLight = ThemeFonts.fs14.merge(ThemeFonts.light);
  static TextStyle bodySmRegular = ThemeFonts.fs14.merge(ThemeFonts.regular);
  static TextStyle bodySmMedium = ThemeFonts.fs14.merge(ThemeFonts.medium);
  static TextStyle bodySmSemibold = ThemeFonts.fs14.merge(ThemeFonts.semibold);
  static TextStyle bodySmBold = ThemeFonts.fs14.merge(ThemeFonts.bold);

  // Body-XSmall
  static TextStyle bodyXsLight = ThemeFonts.fs12.merge(ThemeFonts.light);
  static TextStyle bodyXsRegular = ThemeFonts.fs12.merge(ThemeFonts.regular);
  static TextStyle bodyXsMedium = ThemeFonts.fs12.merge(ThemeFonts.medium);
  static TextStyle bodyXsSemibold = ThemeFonts.fs12.merge(ThemeFonts.semibold);
  static TextStyle bodyXsBold = ThemeFonts.fs12.merge(ThemeFonts.bold);

  // Caption
  static TextStyle captionLight = ThemeFonts.fs10.merge(ThemeFonts.light);
  static TextStyle captionRegular = ThemeFonts.fs10.merge(ThemeFonts.regular);
  static TextStyle captionMedium = ThemeFonts.fs10.merge(ThemeFonts.medium);
  static TextStyle captionSemibold = ThemeFonts.fs10.merge(ThemeFonts.semibold);
  static TextStyle captionBold = ThemeFonts.fs10.merge(ThemeFonts.bold);

  // Default style for TextBase widget
  static TextStyle defaultTextBase = ThemeFonts.bodyMdRegular;
}
