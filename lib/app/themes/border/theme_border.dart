import 'package:material_ui/material_ui.dart';
import 'package:flutter_project_template_arch/core/general_helpers/extensions/dynamic_size_extension.dart';

class ThemeBorder {
  const ThemeBorder(this._scale);

  final double _scale;

  // border Circular
  BorderRadius get bc0 => BorderRadius.circular(0 * _scale);
  BorderRadius get bc2 => BorderRadius.circular(2 * _scale);
  BorderRadius get bc4 => BorderRadius.circular(4 * _scale);
  BorderRadius get bc8 => BorderRadius.circular(8 * _scale);
  BorderRadius get bc12 => BorderRadius.circular(12 * _scale);
  BorderRadius get bc16 => BorderRadius.circular(16 * _scale);
  BorderRadius get bc24 => BorderRadius.circular(24 * _scale);
  BorderRadius get bc32 => BorderRadius.circular(32 * _scale);

  // border top right
  BorderRadius get btr4 =>
      BorderRadius.only(topRight: Radius.circular(4 * _scale));
  BorderRadius get btr8 =>
      BorderRadius.only(topRight: Radius.circular(8 * _scale));
  BorderRadius get btr12 =>
      BorderRadius.only(topRight: Radius.circular(12 * _scale));
  BorderRadius get btr16 =>
      BorderRadius.only(topRight: Radius.circular(16 * _scale));
  BorderRadius get btr24 =>
      BorderRadius.only(topRight: Radius.circular(24 * _scale));
  BorderRadius get btr32 =>
      BorderRadius.only(topRight: Radius.circular(32 * _scale));

  // border top left
  BorderRadius get btl4 =>
      BorderRadius.only(topLeft: Radius.circular(4 * _scale));
  BorderRadius get btl8 =>
      BorderRadius.only(topLeft: Radius.circular(8 * _scale));
  BorderRadius get btl12 =>
      BorderRadius.only(topLeft: Radius.circular(12 * _scale));
  BorderRadius get btl16 =>
      BorderRadius.only(topLeft: Radius.circular(16 * _scale));
  BorderRadius get btl24 =>
      BorderRadius.only(topLeft: Radius.circular(24 * _scale));
  BorderRadius get btl32 =>
      BorderRadius.only(topLeft: Radius.circular(32 * _scale));

  // border bottom right
  BorderRadius get bbr4 =>
      BorderRadius.only(bottomRight: Radius.circular(4 * _scale));
  BorderRadius get bbr8 =>
      BorderRadius.only(bottomRight: Radius.circular(8 * _scale));
  BorderRadius get bbr12 =>
      BorderRadius.only(bottomRight: Radius.circular(12 * _scale));
  BorderRadius get bbr16 =>
      BorderRadius.only(bottomRight: Radius.circular(16 * _scale));
  BorderRadius get bbr24 =>
      BorderRadius.only(bottomRight: Radius.circular(24 * _scale));
  BorderRadius get bbr32 =>
      BorderRadius.only(bottomRight: Radius.circular(32 * _scale));

  // border bottom left
  BorderRadius get bbl4 =>
      BorderRadius.only(bottomLeft: Radius.circular(4 * _scale));
  BorderRadius get bbl8 =>
      BorderRadius.only(bottomLeft: Radius.circular(8 * _scale));
  BorderRadius get bbl12 =>
      BorderRadius.only(bottomLeft: Radius.circular(12 * _scale));
  BorderRadius get bbl16 =>
      BorderRadius.only(bottomLeft: Radius.circular(16 * _scale));
  BorderRadius get bbl24 =>
      BorderRadius.only(bottomLeft: Radius.circular(24 * _scale));
  BorderRadius get bbl32 =>
      BorderRadius.only(bottomLeft: Radius.circular(32 * _scale));

  // border top
  BorderRadius get bt4 => BorderRadius.only(
    topRight: Radius.circular(4 * _scale),
    topLeft: Radius.circular(4 * _scale),
  );
  BorderRadius get bt8 => BorderRadius.only(
    topRight: Radius.circular(8 * _scale),
    topLeft: Radius.circular(8 * _scale),
  );
  BorderRadius get bt12 => BorderRadius.only(
    topRight: Radius.circular(12 * _scale),
    topLeft: Radius.circular(12 * _scale),
  );
  BorderRadius get bt16 => BorderRadius.only(
    topRight: Radius.circular(16 * _scale),
    topLeft: Radius.circular(16 * _scale),
  );
  BorderRadius get bt24 => BorderRadius.only(
    topRight: Radius.circular(24 * _scale),
    topLeft: Radius.circular(24 * _scale),
  );
  BorderRadius get bt32 => BorderRadius.only(
    topRight: Radius.circular(32 * _scale),
    topLeft: Radius.circular(32 * _scale),
  );

  // border bottom
  BorderRadius get bb4 => BorderRadius.only(
    bottomRight: Radius.circular(4 * _scale),
    bottomLeft: Radius.circular(4 * _scale),
  );
  BorderRadius get bb8 => BorderRadius.only(
    bottomRight: Radius.circular(8 * _scale),
    bottomLeft: Radius.circular(8 * _scale),
  );
  BorderRadius get bb12 => BorderRadius.only(
    bottomRight: Radius.circular(12 * _scale),
    bottomLeft: Radius.circular(12 * _scale),
  );
  BorderRadius get bb16 => BorderRadius.only(
    bottomRight: Radius.circular(16 * _scale),
    bottomLeft: Radius.circular(16 * _scale),
  );
  BorderRadius get bb24 => BorderRadius.only(
    bottomRight: Radius.circular(24 * _scale),
    bottomLeft: Radius.circular(24 * _scale),
  );
  BorderRadius get bb32 => BorderRadius.only(
    bottomRight: Radius.circular(32 * _scale),
    bottomLeft: Radius.circular(32 * _scale),
  );

  // border right
  BorderRadius get br4 => BorderRadius.only(
    topRight: Radius.circular(4 * _scale),
    bottomRight: Radius.circular(4 * _scale),
  );
  BorderRadius get br8 => BorderRadius.only(
    topRight: Radius.circular(8 * _scale),
    bottomRight: Radius.circular(8 * _scale),
  );
  BorderRadius get br12 => BorderRadius.only(
    topRight: Radius.circular(12 * _scale),
    bottomRight: Radius.circular(12 * _scale),
  );
  BorderRadius get br16 => BorderRadius.only(
    topRight: Radius.circular(16 * _scale),
    bottomRight: Radius.circular(16 * _scale),
  );
  BorderRadius get br24 => BorderRadius.only(
    topRight: Radius.circular(24 * _scale),
    bottomRight: Radius.circular(24 * _scale),
  );
  BorderRadius get br32 => BorderRadius.only(
    topRight: Radius.circular(32 * _scale),
    bottomRight: Radius.circular(32 * _scale),
  );

  // border left
  BorderRadius get bl4 => BorderRadius.only(
    bottomLeft: Radius.circular(4 * _scale),
    topLeft: Radius.circular(4 * _scale),
  );
  BorderRadius get bl8 => BorderRadius.only(
    bottomLeft: Radius.circular(8 * _scale),
    topLeft: Radius.circular(8 * _scale),
  );
  BorderRadius get bl12 => BorderRadius.only(
    bottomLeft: Radius.circular(12 * _scale),
    topLeft: Radius.circular(12 * _scale),
  );
  BorderRadius get bl16 => BorderRadius.only(
    bottomLeft: Radius.circular(16 * _scale),
    topLeft: Radius.circular(16 * _scale),
  );
  BorderRadius get bl24 => BorderRadius.only(
    bottomLeft: Radius.circular(24 * _scale),
    topLeft: Radius.circular(24 * _scale),
  );
  BorderRadius get bl32 => BorderRadius.only(
    bottomLeft: Radius.circular(32 * _scale),
    topLeft: Radius.circular(32 * _scale),
  );

  ///////////////////////////// BORDER BY SIZE //////////////////////////////

  BorderRadius get radiusNull => BorderRadius.zero;
  BorderRadius get radiusXXS => bc2;
  BorderRadius get radiusXS => bc4;
  BorderRadius get radiusSM => bc8;
  BorderRadius get radiusMD => bc12;
  BorderRadius get radiusLG => bc16;
  BorderRadius get radiusXL => bc24;
  BorderRadius get radiusXXL => bc32;
}

extension ThemeBorderX on BuildContext {
  ThemeBorder get themeBorder => ThemeBorder(dsScale);
}
