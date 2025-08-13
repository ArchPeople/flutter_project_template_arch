import 'package:flutter/material.dart';
import 'package:flutter_project_template_arch/core/general_helpers/extensions/dynamic_size_extension.dart';

class ThemeBorder {
  const ThemeBorder._();

  // border Circular
  static BorderRadius bc0 = BorderRadius.circular(0.ds);
  static BorderRadius bc2 = BorderRadius.circular(2.ds);
  static BorderRadius bc4 = BorderRadius.circular(4.ds);
  static BorderRadius bc8 = BorderRadius.circular(8.ds);
  static BorderRadius bc12 = BorderRadius.circular(12.ds);
  static BorderRadius bc16 = BorderRadius.circular(16.ds);
  static BorderRadius bc24 = BorderRadius.circular(24.ds);
  static BorderRadius bc32 = BorderRadius.circular(32.ds);

  // border top right
  static BorderRadius btr4 =
      BorderRadius.only(topRight: Radius.circular(4.ds));
  static BorderRadius btr8 =
      BorderRadius.only(topRight: Radius.circular(8.ds));
  static BorderRadius btr12 =
      BorderRadius.only(topRight: Radius.circular(12.ds));
  static BorderRadius btr16 =
      BorderRadius.only(topRight: Radius.circular(16.ds));
  static BorderRadius btr24 =
      BorderRadius.only(topRight: Radius.circular(24.ds));
  static BorderRadius btr32 =
      BorderRadius.only(topRight: Radius.circular(32.ds));

  // border top left
  static BorderRadius btl4 =
      BorderRadius.only(topLeft: Radius.circular(4.ds));
  static BorderRadius btl8 =
      BorderRadius.only(topLeft: Radius.circular(8.ds));
  static BorderRadius btl12 =
      BorderRadius.only(topLeft: Radius.circular(12.ds));
  static BorderRadius btl16 =
      BorderRadius.only(topLeft: Radius.circular(16.ds));
  static BorderRadius btl24 =
      BorderRadius.only(topLeft: Radius.circular(24.ds));
  static BorderRadius btl32 =
      BorderRadius.only(topLeft: Radius.circular(32.ds));

  // border bottom right
  static BorderRadius bbr4 =
      BorderRadius.only(bottomRight: Radius.circular(4.ds));
  static BorderRadius bbr8 =
      BorderRadius.only(bottomRight: Radius.circular(8.ds));
  static BorderRadius bbr12 =
      BorderRadius.only(bottomRight: Radius.circular(12.ds));
  static BorderRadius bbr16 =
      BorderRadius.only(bottomRight: Radius.circular(16.ds));
  static BorderRadius bbr24 =
      BorderRadius.only(bottomRight: Radius.circular(24.ds));
  static BorderRadius bbr32 =
      BorderRadius.only(bottomRight: Radius.circular(32.ds));

  // border bottom left
  static BorderRadius bbl4 =
      BorderRadius.only(bottomLeft: Radius.circular(4.ds));
  static BorderRadius bbl8 =
      BorderRadius.only(bottomLeft: Radius.circular(8.ds));
  static BorderRadius bbl12 =
      BorderRadius.only(bottomLeft: Radius.circular(12.ds));
  static BorderRadius bbl16 =
      BorderRadius.only(bottomLeft: Radius.circular(16.ds));
  static BorderRadius bbl24 =
      BorderRadius.only(bottomLeft: Radius.circular(24.ds));
  static BorderRadius bbl32 =
      BorderRadius.only(bottomLeft: Radius.circular(32.ds));

  // border top
  static BorderRadius bt4 = BorderRadius.only(
    topRight: Radius.circular(4.ds),
    topLeft: Radius.circular(4.ds),
  );
  static BorderRadius bt8 = BorderRadius.only(
    topRight: Radius.circular(8.ds),
    topLeft: Radius.circular(8.ds),
  );
  static BorderRadius bt12 = BorderRadius.only(
    topRight: Radius.circular(12.ds),
    topLeft: Radius.circular(12.ds),
  );
  static BorderRadius bt16 = BorderRadius.only(
    topRight: Radius.circular(16.ds),
    topLeft: Radius.circular(16.ds),
  );
  static BorderRadius bt24 = BorderRadius.only(
    topRight: Radius.circular(24.ds),
    topLeft: Radius.circular(24.ds),
  );
  static BorderRadius bt32 = BorderRadius.only(
    topRight: Radius.circular(32.ds),
    topLeft: Radius.circular(32.ds),
  );

  // border bottom
  static BorderRadius bb4 = BorderRadius.only(
    bottomRight: Radius.circular(4.ds),
    bottomLeft: Radius.circular(4.ds),
  );
  static BorderRadius bb8 = BorderRadius.only(
    bottomRight: Radius.circular(8.ds),
    bottomLeft: Radius.circular(8.ds),
  );
  static BorderRadius bb12 = BorderRadius.only(
    bottomRight: Radius.circular(12.ds),
    bottomLeft: Radius.circular(12.ds),
  );
  static BorderRadius bb16 = BorderRadius.only(
    bottomRight: Radius.circular(16.ds),
    bottomLeft: Radius.circular(16.ds),
  );
  static BorderRadius bb24 = BorderRadius.only(
    bottomRight: Radius.circular(24.ds),
    bottomLeft: Radius.circular(24.ds),
  );
  static BorderRadius bb32 = BorderRadius.only(
    bottomRight: Radius.circular(32.ds),
    bottomLeft: Radius.circular(32.ds),
  );

  // border right
  static BorderRadius br4 = BorderRadius.only(
    topRight: Radius.circular(4.ds),
    bottomRight: Radius.circular(4.ds),
  );
  static BorderRadius br8 = BorderRadius.only(
    topRight: Radius.circular(8.ds),
    bottomRight: Radius.circular(8.ds),
  );
  static BorderRadius br12 = BorderRadius.only(
    topRight: Radius.circular(12.ds),
    bottomRight: Radius.circular(12.ds),
  );
  static BorderRadius br16 = BorderRadius.only(
    topRight: Radius.circular(16.ds),
    bottomRight: Radius.circular(16.ds),
  );
  static BorderRadius br24 = BorderRadius.only(
    topRight: Radius.circular(24.ds),
    bottomRight: Radius.circular(24.ds),
  );
  static BorderRadius br32 = BorderRadius.only(
    topRight: Radius.circular(32.ds),
    bottomRight: Radius.circular(32.ds),
  );

  // border left
  static BorderRadius bl4 = BorderRadius.only(
    bottomLeft: Radius.circular(4.ds),
    topLeft: Radius.circular(4.ds),
  );
  static BorderRadius bl8 = BorderRadius.only(
    bottomLeft: Radius.circular(8.ds),
    topLeft: Radius.circular(8.ds),
  );
  static BorderRadius bl12 = BorderRadius.only(
    bottomLeft: Radius.circular(12.ds),
    topLeft: Radius.circular(12.ds),
  );
  static BorderRadius bl16 = BorderRadius.only(
    bottomLeft: Radius.circular(16.ds),
    topLeft: Radius.circular(16.ds),
  );
  static BorderRadius bl24 = BorderRadius.only(
    bottomLeft: Radius.circular(24.ds),
    topLeft: Radius.circular(24.ds),
  );
  static BorderRadius bl32 = BorderRadius.only(
    bottomLeft: Radius.circular(32.ds),
    topLeft: Radius.circular(32.ds),
  );

  ///////////////////////////// BORDER BY SIZE //////////////////////////////

  static BorderRadius radiusNull = BorderRadius.zero;
  static BorderRadius radiusXXS = bc2;
  static BorderRadius radiusXS = bc4;
  static BorderRadius radiusSM = bc8;
  static BorderRadius radiusMD = bc12;
  static BorderRadius radiusLG = bc16;
  static BorderRadius radiusXL = bc24;
  static BorderRadius radiusXXL = bc32;
}