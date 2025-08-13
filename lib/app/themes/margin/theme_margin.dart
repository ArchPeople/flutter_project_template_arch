import 'package:flutter/material.dart';
import 'package:flutter_project_template_arch/core/general_helpers/extensions/dynamic_size_extension.dart';

class ThemeMargin {
  const ThemeMargin._();

  // Margin Horizontal
  static EdgeInsets mh0 = EdgeInsets.symmetric(horizontal: 0.ds);
  static EdgeInsets mh2 = EdgeInsets.symmetric(horizontal: 2.ds);
  static EdgeInsets mh4 = EdgeInsets.symmetric(horizontal: 4.ds);
  static EdgeInsets mh8 = EdgeInsets.symmetric(horizontal: 8.ds);
  static EdgeInsets mh12 = EdgeInsets.symmetric(horizontal: 12.ds);
  static EdgeInsets mh16 = EdgeInsets.symmetric(horizontal: 16.ds);
  static EdgeInsets mh20 = EdgeInsets.symmetric(horizontal: 20.ds);
  static EdgeInsets mh24 = EdgeInsets.symmetric(horizontal: 24.ds);
  static EdgeInsets mh32 = EdgeInsets.symmetric(horizontal: 32.ds);

  // Margin Vertical
  static EdgeInsets mv0 = EdgeInsets.symmetric(vertical: 0.ds);
  static EdgeInsets mv2 = EdgeInsets.symmetric(vertical: 2.ds);
  static EdgeInsets mv4 = EdgeInsets.symmetric(vertical: 4.ds);
  static EdgeInsets mv8 = EdgeInsets.symmetric(vertical: 8.ds);
  static EdgeInsets mv12 = EdgeInsets.symmetric(vertical: 12.ds);
  static EdgeInsets mv16 = EdgeInsets.symmetric(vertical: 16.ds);
  static EdgeInsets mv20 = EdgeInsets.symmetric(vertical: 20.ds);
  static EdgeInsets mv24 = EdgeInsets.symmetric(vertical: 24.ds);
  static EdgeInsets mv32 = EdgeInsets.symmetric(vertical: 32.ds);

  // Margin All
  static EdgeInsets ma0 = EdgeInsets.all(0.ds);
  static EdgeInsets ma2 = EdgeInsets.all(2.ds);
  static EdgeInsets ma4 = EdgeInsets.all(4.ds);
  static EdgeInsets ma8 = EdgeInsets.all(8.ds);
  static EdgeInsets ma12 = EdgeInsets.all(12.ds);
  static EdgeInsets ma16 = EdgeInsets.all(16.ds);
  static EdgeInsets ma20 = EdgeInsets.all(20.ds);
  static EdgeInsets ma24 = EdgeInsets.all(24.ds);
  static EdgeInsets ma32 = EdgeInsets.all(32.ds);

  // Margin only bottom
  static EdgeInsets mb0 = EdgeInsets.only(bottom: 0.ds);
  static EdgeInsets mb2 = EdgeInsets.only(bottom: 2.ds);
  static EdgeInsets mb4 = EdgeInsets.only(bottom: 4.ds);
  static EdgeInsets mb8 = EdgeInsets.only(bottom: 8.ds);
  static EdgeInsets mb12 = EdgeInsets.only(bottom: 12.ds);
  static EdgeInsets mb16 = EdgeInsets.only(bottom: 16.ds);
  static EdgeInsets mb20 = EdgeInsets.only(bottom: 20.ds);
  static EdgeInsets mb24 = EdgeInsets.only(bottom: 24.ds);
  static EdgeInsets mb32 = EdgeInsets.only(bottom: 32.ds);

  // Margin only top
  static EdgeInsets mt0 = EdgeInsets.only(top: 0.ds);
  static EdgeInsets mt2 = EdgeInsets.only(top: 2.ds);
  static EdgeInsets mt4 = EdgeInsets.only(top: 4.ds);
  static EdgeInsets mt8 = EdgeInsets.only(top: 8.ds);
  static EdgeInsets mt12 = EdgeInsets.only(top: 12.ds);
  static EdgeInsets mt16 = EdgeInsets.only(top: 16.ds);
  static EdgeInsets mt20 = EdgeInsets.only(top: 20.ds);
  static EdgeInsets mt24 = EdgeInsets.only(top: 24.ds);
  static EdgeInsets mt32 = EdgeInsets.only(top: 32.ds);

  // Margin only left
  static EdgeInsets ml0 = EdgeInsets.only(left: 0.ds);
  static EdgeInsets ml2 = EdgeInsets.only(left: 2.ds);
  static EdgeInsets ml4 = EdgeInsets.only(left: 4.ds);
  static EdgeInsets ml8 = EdgeInsets.only(left: 8.ds);
  static EdgeInsets ml12 = EdgeInsets.only(left: 12.ds);
  static EdgeInsets ml16 = EdgeInsets.only(left: 16.ds);
  static EdgeInsets ml20 = EdgeInsets.only(left: 20.ds);
  static EdgeInsets ml24 = EdgeInsets.only(left: 24.ds);
  static EdgeInsets ml32 = EdgeInsets.only(left: 32.ds);

  // Margin only right
  static EdgeInsets mr0 = EdgeInsets.only(right: 0.ds);
  static EdgeInsets mr2 = EdgeInsets.only(right: 2.ds);
  static EdgeInsets mr4 = EdgeInsets.only(right: 4.ds);
  static EdgeInsets mr8 = EdgeInsets.only(right: 8.ds);
  static EdgeInsets mr12 = EdgeInsets.only(right: 12.ds);
  static EdgeInsets mr16 = EdgeInsets.only(right: 16.ds);
  static EdgeInsets mr20 = EdgeInsets.only(right: 20.ds);
  static EdgeInsets mr24 = EdgeInsets.only(right: 24.ds);
  static EdgeInsets mr32 = EdgeInsets.only(right: 32.ds);

  ///////////////////////////// MARGIN SPACING BY SIZE //////////////////////////////

  // Margin Horizontal Spacing
  static EdgeInsets mhNull = mh0;
  static EdgeInsets mhXXS = mh2;
  static EdgeInsets mhXS = mh4;
  static EdgeInsets mhSM = mh8;
  static EdgeInsets mhMD = mh12;
  static EdgeInsets mhLG = mh16;
  static EdgeInsets mhXL = mh24;
  static EdgeInsets mhXXL = mh32;

  // Margin Vertical Spacing
  static EdgeInsets mvNull = mv0;
  static EdgeInsets mvXXS = mv2;
  static EdgeInsets mvXS = mv4;
  static EdgeInsets mvSM = mv8;
  static EdgeInsets mvMD = mv12;
  static EdgeInsets mvLG = mv16;
  static EdgeInsets mvXL = mv24;
  static EdgeInsets mvXXL = mv32;

  // Margin All Spacing
  static EdgeInsets maNull = ma0;
  static EdgeInsets maXXS = ma2;
  static EdgeInsets maXS = ma4;
  static EdgeInsets maSM = ma8;
  static EdgeInsets maMD = ma12;
  static EdgeInsets maLG = ma16;
  static EdgeInsets maXL = ma24;
  static EdgeInsets maXXL = ma32;

  // Margin Bottom Spacing
  static EdgeInsets mbNull = mb0;
  static EdgeInsets mbXXS = mb2;
  static EdgeInsets mbXS = mb4;
  static EdgeInsets mbSM = mb8;
  static EdgeInsets mbMD = mb12;
  static EdgeInsets mbLG = mb16;
  static EdgeInsets mbXL = mb24;
  static EdgeInsets mbXXL = mb32;

  // Margin Top Spacing
  static EdgeInsets mtNull = mt0;
  static EdgeInsets mtXXS = mt2;
  static EdgeInsets mtXS = mt4;
  static EdgeInsets mtSM = mt8;
  static EdgeInsets mtMD = mt12;
  static EdgeInsets mtLG = mt16;
  static EdgeInsets mtXL = mt24;
  static EdgeInsets mtXXL = mt32;

  // Margin Left Spacing
  static EdgeInsets mlNull = ml0;
  static EdgeInsets mlXXS = ml2;
  static EdgeInsets mlXS = ml4;
  static EdgeInsets mlSM = ml8;
  static EdgeInsets mlMD = ml12;
  static EdgeInsets mlLG = ml16;
  static EdgeInsets mlXL = ml24;
  static EdgeInsets mlXXL = ml32;

  // Margin Right Spacing
  static EdgeInsets mrNull = mr0;
  static EdgeInsets mrXXS = mr2;
  static EdgeInsets mrXS = mr4;
  static EdgeInsets mrSM = mr8;
  static EdgeInsets mrMD = mr12;
  static EdgeInsets mrLG = mr16;
  static EdgeInsets mrXL = mr24;
  static EdgeInsets mrXXL = mr32;
}
