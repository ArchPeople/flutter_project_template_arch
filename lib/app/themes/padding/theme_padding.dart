import 'package:material_ui/material_ui.dart';
import 'package:flutter_project_template_arch/core/general_helpers/extensions/dynamic_size_extension.dart';

class ThemePadding {
  const ThemePadding(this._scale);

  final double _scale;

  // Padding Horizontal
  EdgeInsets get ph0 => EdgeInsets.symmetric(horizontal: 0 * _scale);
  EdgeInsets get ph2 => EdgeInsets.symmetric(horizontal: 2 * _scale);
  EdgeInsets get ph4 => EdgeInsets.symmetric(horizontal: 4 * _scale);
  EdgeInsets get ph8 => EdgeInsets.symmetric(horizontal: 8 * _scale);
  EdgeInsets get ph12 => EdgeInsets.symmetric(horizontal: 12 * _scale);
  EdgeInsets get ph16 => EdgeInsets.symmetric(horizontal: 16 * _scale);
  EdgeInsets get ph20 => EdgeInsets.symmetric(horizontal: 20 * _scale);
  EdgeInsets get ph24 => EdgeInsets.symmetric(horizontal: 24 * _scale);
  EdgeInsets get ph32 => EdgeInsets.symmetric(horizontal: 32 * _scale);

  // Padding Vertical
  EdgeInsets get pv0 => EdgeInsets.symmetric(vertical: 0 * _scale);
  EdgeInsets get pv2 => EdgeInsets.symmetric(vertical: 2 * _scale);
  EdgeInsets get pv4 => EdgeInsets.symmetric(vertical: 4 * _scale);
  EdgeInsets get pv8 => EdgeInsets.symmetric(vertical: 8 * _scale);
  EdgeInsets get pv12 => EdgeInsets.symmetric(vertical: 12 * _scale);
  EdgeInsets get pv16 => EdgeInsets.symmetric(vertical: 16 * _scale);
  EdgeInsets get pv20 => EdgeInsets.symmetric(vertical: 20 * _scale);
  EdgeInsets get pv24 => EdgeInsets.symmetric(vertical: 24 * _scale);
  EdgeInsets get pv32 => EdgeInsets.symmetric(vertical: 32 * _scale);

  // Padding All
  EdgeInsets get pa0 => EdgeInsets.all(0 * _scale);
  EdgeInsets get pa2 => EdgeInsets.all(2 * _scale);
  EdgeInsets get pa4 => EdgeInsets.all(4 * _scale);
  EdgeInsets get pa8 => EdgeInsets.all(8 * _scale);
  EdgeInsets get pa12 => EdgeInsets.all(12 * _scale);
  EdgeInsets get pa16 => EdgeInsets.all(16 * _scale);
  EdgeInsets get pa20 => EdgeInsets.all(20 * _scale);
  EdgeInsets get pa24 => EdgeInsets.all(24 * _scale);
  EdgeInsets get pa32 => EdgeInsets.all(32 * _scale);

  // Padding only bottom
  EdgeInsets get pb0 => EdgeInsets.only(bottom: 0 * _scale);
  EdgeInsets get pb2 => EdgeInsets.only(bottom: 2 * _scale);
  EdgeInsets get pb4 => EdgeInsets.only(bottom: 4 * _scale);
  EdgeInsets get pb8 => EdgeInsets.only(bottom: 8 * _scale);
  EdgeInsets get pb12 => EdgeInsets.only(bottom: 12 * _scale);
  EdgeInsets get pb16 => EdgeInsets.only(bottom: 16 * _scale);
  EdgeInsets get pb20 => EdgeInsets.only(bottom: 20 * _scale);
  EdgeInsets get pb24 => EdgeInsets.only(bottom: 24 * _scale);
  EdgeInsets get pb32 => EdgeInsets.only(bottom: 32 * _scale);

  // Padding only top
  EdgeInsets get pt0 => EdgeInsets.only(top: 0 * _scale);
  EdgeInsets get pt2 => EdgeInsets.only(top: 2 * _scale);
  EdgeInsets get pt4 => EdgeInsets.only(top: 4 * _scale);
  EdgeInsets get pt8 => EdgeInsets.only(top: 8 * _scale);
  EdgeInsets get pt12 => EdgeInsets.only(top: 12 * _scale);
  EdgeInsets get pt16 => EdgeInsets.only(top: 16 * _scale);
  EdgeInsets get pt20 => EdgeInsets.only(top: 20 * _scale);
  EdgeInsets get pt24 => EdgeInsets.only(top: 24 * _scale);
  EdgeInsets get pt32 => EdgeInsets.only(top: 32 * _scale);

  // Padding Only Top Spacing
  EdgeInsets get ptNull => pt0;
  EdgeInsets get ptXXS => pt2;
  EdgeInsets get ptXS => pt4;
  EdgeInsets get ptSM => pt8;
  EdgeInsets get ptMD => pt12;
  EdgeInsets get ptLG => pt16;
  EdgeInsets get ptXL => pt24;
  EdgeInsets get ptXXL => pt32;

  // Padding only left
  EdgeInsets get pl0 => EdgeInsets.only(left: 0 * _scale);
  EdgeInsets get pl2 => EdgeInsets.only(left: 2 * _scale);
  EdgeInsets get pl4 => EdgeInsets.only(left: 4 * _scale);
  EdgeInsets get pl8 => EdgeInsets.only(left: 8 * _scale);
  EdgeInsets get pl12 => EdgeInsets.only(left: 12 * _scale);
  EdgeInsets get pl16 => EdgeInsets.only(left: 16 * _scale);
  EdgeInsets get pl20 => EdgeInsets.only(left: 20 * _scale);
  EdgeInsets get pl24 => EdgeInsets.only(left: 24 * _scale);
  EdgeInsets get pl32 => EdgeInsets.only(left: 32 * _scale);

  // Padding only right
  EdgeInsets get pr0 => EdgeInsets.only(right: 0 * _scale);
  EdgeInsets get pr2 => EdgeInsets.only(right: 2 * _scale);
  EdgeInsets get pr4 => EdgeInsets.only(right: 4 * _scale);
  EdgeInsets get pr8 => EdgeInsets.only(right: 8 * _scale);
  EdgeInsets get pr12 => EdgeInsets.only(right: 12 * _scale);
  EdgeInsets get pr16 => EdgeInsets.only(right: 16 * _scale);
  EdgeInsets get pr20 => EdgeInsets.only(right: 20 * _scale);
  EdgeInsets get pr24 => EdgeInsets.only(right: 24 * _scale);
  EdgeInsets get pr32 => EdgeInsets.only(right: 32 * _scale);

  ///////////////////////////// PADDING SPACING BY SIZE //////////////////////////////

  // Padding Horizontal Spacing
  EdgeInsets get phNull => ph0;
  EdgeInsets get phXXS => ph2;
  EdgeInsets get phXS => ph4;
  EdgeInsets get phSM => ph8;
  EdgeInsets get phMD => ph12;
  EdgeInsets get phLG => ph16;
  EdgeInsets get phXL => ph24;
  EdgeInsets get phXXL => ph32;

  // Padding Vertical Spacing
  EdgeInsets get pvNull => pv0;
  EdgeInsets get pvXXS => pv2;
  EdgeInsets get pvXS => pv4;
  EdgeInsets get pvSM => pv8;
  EdgeInsets get pvMD => pv12;
  EdgeInsets get pvLG => pv16;
  EdgeInsets get pvXL => pv24;
  EdgeInsets get pvXXL => pv32;

  // Padding All Spacing
  EdgeInsets get paNull => pa0;
  EdgeInsets get paXXS => pa2;
  EdgeInsets get paXS => pa4;
  EdgeInsets get paSM => pa8;
  EdgeInsets get paMD => pa12;
  EdgeInsets get paLG => pa16;
  EdgeInsets get paXL => pa24;
  EdgeInsets get paXXL => pa32;

  // Padding Only Bottom Spacing
  EdgeInsets get pbNull => pb0;
  EdgeInsets get pbXXS => pb2;
  EdgeInsets get pbXS => pb4;
  EdgeInsets get pbSM => pb8;
  EdgeInsets get pbMD => pb12;
  EdgeInsets get pbLG => pb16;
  EdgeInsets get pbXL => pb24;
  EdgeInsets get pbXXL => pb32;

  // Padding Only Left Spacing
  EdgeInsets get plNull => pl0;
  EdgeInsets get plXXS => pl2;
  EdgeInsets get plXS => pl4;
  EdgeInsets get plSM => pl8;
  EdgeInsets get plMD => pl12;
  EdgeInsets get plLG => pl16;
  EdgeInsets get plXL => pl24;
  EdgeInsets get plXXL => pl32;

  // Padding Only Right Spacing
  EdgeInsets get prNull => pr0;
  EdgeInsets get prXXS => pr2;
  EdgeInsets get prXS => pr4;
  EdgeInsets get prSM => pr8;
  EdgeInsets get prMD => pr12;
  EdgeInsets get prLG => pr16;
  EdgeInsets get prXL => pr24;
  EdgeInsets get prXXL => pr32;
}

extension ThemePaddingX on BuildContext {
  ThemePadding get themePadding => ThemePadding(dsScale);
}
