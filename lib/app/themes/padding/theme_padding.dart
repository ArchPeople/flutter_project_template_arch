import 'package:flutter/material.dart';
import 'package:flutter_project_template_arch/core/general_helpers/extensions/dynamic_size_extension.dart';

class ThemePadding {
  const ThemePadding._();

  // Padding Horizontal
  static EdgeInsets ph0 = EdgeInsets.symmetric(horizontal: 0.ds);
  static EdgeInsets ph2 = EdgeInsets.symmetric(horizontal: 2.ds);
  static EdgeInsets ph4 = EdgeInsets.symmetric(horizontal: 4.ds);
  static EdgeInsets ph8 = EdgeInsets.symmetric(horizontal: 8.ds);
  static EdgeInsets ph12 = EdgeInsets.symmetric(horizontal: 12.ds);
  static EdgeInsets ph16 = EdgeInsets.symmetric(horizontal: 16.ds);
  static EdgeInsets ph20 = EdgeInsets.symmetric(horizontal: 20.ds);
  static EdgeInsets ph24 = EdgeInsets.symmetric(horizontal: 24.ds);
  static EdgeInsets ph32 = EdgeInsets.symmetric(horizontal: 32.ds);

  // Padding Vertical
  static EdgeInsets pv0 = EdgeInsets.symmetric(vertical: 0.ds);
  static EdgeInsets pv2 = EdgeInsets.symmetric(vertical: 2.ds);
  static EdgeInsets pv4 = EdgeInsets.symmetric(vertical: 4.ds);
  static EdgeInsets pv8 = EdgeInsets.symmetric(vertical: 8.ds);
  static EdgeInsets pv12 = EdgeInsets.symmetric(vertical: 12.ds);
  static EdgeInsets pv16 = EdgeInsets.symmetric(vertical: 16.ds);
  static EdgeInsets pv20 = EdgeInsets.symmetric(vertical: 20.ds);
  static EdgeInsets pv24 = EdgeInsets.symmetric(vertical: 24.ds);
  static EdgeInsets pv32 = EdgeInsets.symmetric(vertical: 32.ds);

  // Padding All
  static EdgeInsets pa0 = EdgeInsets.all(0.ds);
  static EdgeInsets pa2 = EdgeInsets.all(2.ds);
  static EdgeInsets pa4 = EdgeInsets.all(4.ds);
  static EdgeInsets pa8 = EdgeInsets.all(8.ds);
  static EdgeInsets pa12 = EdgeInsets.all(12.ds);
  static EdgeInsets pa16 = EdgeInsets.all(16.ds);
  static EdgeInsets pa20 = EdgeInsets.all(20.ds);
  static EdgeInsets pa24 = EdgeInsets.all(24.ds);
  static EdgeInsets pa32 = EdgeInsets.all(32.ds);

  // Padding only bottom
  static EdgeInsets pb0 = EdgeInsets.only(bottom: 0.ds);
  static EdgeInsets pb2 = EdgeInsets.only(bottom: 2.ds);
  static EdgeInsets pb4 = EdgeInsets.only(bottom: 4.ds);
  static EdgeInsets pb8 = EdgeInsets.only(bottom: 8.ds);
  static EdgeInsets pb12 = EdgeInsets.only(bottom: 12.ds);
  static EdgeInsets pb16 = EdgeInsets.only(bottom: 16.ds);
  static EdgeInsets pb20 = EdgeInsets.only(bottom: 20.ds);
  static EdgeInsets pb24 = EdgeInsets.only(bottom: 24.ds);
  static EdgeInsets pb32 = EdgeInsets.only(bottom: 32.ds);

  // Padding only top
  static EdgeInsets pt0 = EdgeInsets.only(top: 0.ds);
  static EdgeInsets pt2 = EdgeInsets.only(top: 2.ds);
  static EdgeInsets pt4 = EdgeInsets.only(top: 4.ds);
  static EdgeInsets pt8 = EdgeInsets.only(top: 8.ds);
  static EdgeInsets pt12 = EdgeInsets.only(top: 12.ds);
  static EdgeInsets pt16 = EdgeInsets.only(top: 16.ds);
  static EdgeInsets pt20 = EdgeInsets.only(top: 20.ds);
  static EdgeInsets pt24 = EdgeInsets.only(top: 24.ds);
  static EdgeInsets pt32 = EdgeInsets.only(top: 32.ds);

  // Padding Only Top Spacing
  static EdgeInsets ptNull = pt0;
  static EdgeInsets ptXXS = pt2;
  static EdgeInsets ptXS = pt4;
  static EdgeInsets ptSM = pt8;
  static EdgeInsets ptMD = pt12;
  static EdgeInsets ptLG = pt16;
  static EdgeInsets ptXL = pt24;
  static EdgeInsets ptXXL = pt32;

  // Padding only left
  static EdgeInsets pl0 = EdgeInsets.only(left: 0.ds);
  static EdgeInsets pl2 = EdgeInsets.only(left: 2.ds);
  static EdgeInsets pl4 = EdgeInsets.only(left: 4.ds);
  static EdgeInsets pl8 = EdgeInsets.only(left: 8.ds);
  static EdgeInsets pl12 = EdgeInsets.only(left: 12.ds);
  static EdgeInsets pl16 = EdgeInsets.only(left: 16.ds);
  static EdgeInsets pl20 = EdgeInsets.only(left: 20.ds);
  static EdgeInsets pl24 = EdgeInsets.only(left: 24.ds);
  static EdgeInsets pl32 = EdgeInsets.only(left: 32.ds);

  // Padding only right
  static EdgeInsets pr0 = EdgeInsets.only(right: 0.ds);
  static EdgeInsets pr2 = EdgeInsets.only(right: 2.ds);
  static EdgeInsets pr4 = EdgeInsets.only(right: 4.ds);
  static EdgeInsets pr8 = EdgeInsets.only(right: 8.ds);
  static EdgeInsets pr12 = EdgeInsets.only(right: 12.ds);
  static EdgeInsets pr16 = EdgeInsets.only(right: 16.ds);
  static EdgeInsets pr20 = EdgeInsets.only(right: 20.ds);
  static EdgeInsets pr24 = EdgeInsets.only(right: 24.ds);
  static EdgeInsets pr32 = EdgeInsets.only(right: 32.ds);

  ///////////////////////////// PADDING SPACING BY SIZE //////////////////////////////

  // Padding Horizontal Spacing
  static EdgeInsets phNull = ph0;
  static EdgeInsets phXXS = ph2;
  static EdgeInsets phXS = ph4;
  static EdgeInsets phSM = ph8;
  static EdgeInsets phMD = ph12;
  static EdgeInsets phLG = ph16;
  static EdgeInsets phXL = ph24;
  static EdgeInsets phXXL = ph32;

  // Padding Vertical Spacing
  static EdgeInsets pvNull = pv0;
  static EdgeInsets pvXXS = pv2;
  static EdgeInsets pvXS = pv4;
  static EdgeInsets pvSM = pv8;
  static EdgeInsets pvMD = pv12;
  static EdgeInsets pvLG = pv16;
  static EdgeInsets pvXL = pv24;
  static EdgeInsets pvXXL = pv32;

  // Padding All Spacing
  static EdgeInsets paNull = pa0;
  static EdgeInsets paXXS = pa2;
  static EdgeInsets paXS = pa4;
  static EdgeInsets paSM = pa8;
  static EdgeInsets paMD = pa12;
  static EdgeInsets paLG = pa16;
  static EdgeInsets paXL = pa24;
  static EdgeInsets paXXL = pa32;

  // Padding Only Bottom Spacing
  static EdgeInsets pbNull = pb0;
  static EdgeInsets pbXXS = pb2;
  static EdgeInsets pbXS = pb4;
  static EdgeInsets pbSM = pb8;
  static EdgeInsets pbMD = pb12;
  static EdgeInsets pbLG = pb16;
  static EdgeInsets pbXL = pb24;
  static EdgeInsets pbXXL = pb32;

  // Padding Only Left Spacing
  static EdgeInsets plNull = pl0;
  static EdgeInsets plXXS = pl2;
  static EdgeInsets plXS = pl4;
  static EdgeInsets plSM = pl8;
  static EdgeInsets plMD = pl12;
  static EdgeInsets plLG = pl16;
  static EdgeInsets plXL = pl24;
  static EdgeInsets plXXL = pl32;

  // Padding Only Right Spacing
  static EdgeInsets prNull = pr0;
  static EdgeInsets prXXS = pr2;
  static EdgeInsets prXS = pr4;
  static EdgeInsets prSM = pr8;
  static EdgeInsets prMD = pr12;
  static EdgeInsets prLG = pr16;
  static EdgeInsets prXL = pr24;
  static EdgeInsets prXXL = pr32;
}
