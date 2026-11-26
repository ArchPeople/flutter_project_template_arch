import 'package:material_ui/material_ui.dart';
import 'package:flutter_project_template_arch/core/general_helpers/extensions/dynamic_size_extension.dart';

class ThemeMargin {
  const ThemeMargin(this._scale);

  final double _scale;

  // Margin Horizontal
  EdgeInsets get mh0 => EdgeInsets.symmetric(horizontal: 0 * _scale);
  EdgeInsets get mh2 => EdgeInsets.symmetric(horizontal: 2 * _scale);
  EdgeInsets get mh4 => EdgeInsets.symmetric(horizontal: 4 * _scale);
  EdgeInsets get mh8 => EdgeInsets.symmetric(horizontal: 8 * _scale);
  EdgeInsets get mh12 => EdgeInsets.symmetric(horizontal: 12 * _scale);
  EdgeInsets get mh16 => EdgeInsets.symmetric(horizontal: 16 * _scale);
  EdgeInsets get mh20 => EdgeInsets.symmetric(horizontal: 20 * _scale);
  EdgeInsets get mh24 => EdgeInsets.symmetric(horizontal: 24 * _scale);
  EdgeInsets get mh32 => EdgeInsets.symmetric(horizontal: 32 * _scale);

  // Margin Vertical
  EdgeInsets get mv0 => EdgeInsets.symmetric(vertical: 0 * _scale);
  EdgeInsets get mv2 => EdgeInsets.symmetric(vertical: 2 * _scale);
  EdgeInsets get mv4 => EdgeInsets.symmetric(vertical: 4 * _scale);
  EdgeInsets get mv8 => EdgeInsets.symmetric(vertical: 8 * _scale);
  EdgeInsets get mv12 => EdgeInsets.symmetric(vertical: 12 * _scale);
  EdgeInsets get mv16 => EdgeInsets.symmetric(vertical: 16 * _scale);
  EdgeInsets get mv20 => EdgeInsets.symmetric(vertical: 20 * _scale);
  EdgeInsets get mv24 => EdgeInsets.symmetric(vertical: 24 * _scale);
  EdgeInsets get mv32 => EdgeInsets.symmetric(vertical: 32 * _scale);

  // Margin All
  EdgeInsets get ma0 => EdgeInsets.all(0 * _scale);
  EdgeInsets get ma2 => EdgeInsets.all(2 * _scale);
  EdgeInsets get ma4 => EdgeInsets.all(4 * _scale);
  EdgeInsets get ma8 => EdgeInsets.all(8 * _scale);
  EdgeInsets get ma12 => EdgeInsets.all(12 * _scale);
  EdgeInsets get ma16 => EdgeInsets.all(16 * _scale);
  EdgeInsets get ma20 => EdgeInsets.all(20 * _scale);
  EdgeInsets get ma24 => EdgeInsets.all(24 * _scale);
  EdgeInsets get ma32 => EdgeInsets.all(32 * _scale);

  // Margin only bottom
  EdgeInsets get mb0 => EdgeInsets.only(bottom: 0 * _scale);
  EdgeInsets get mb2 => EdgeInsets.only(bottom: 2 * _scale);
  EdgeInsets get mb4 => EdgeInsets.only(bottom: 4 * _scale);
  EdgeInsets get mb8 => EdgeInsets.only(bottom: 8 * _scale);
  EdgeInsets get mb12 => EdgeInsets.only(bottom: 12 * _scale);
  EdgeInsets get mb16 => EdgeInsets.only(bottom: 16 * _scale);
  EdgeInsets get mb20 => EdgeInsets.only(bottom: 20 * _scale);
  EdgeInsets get mb24 => EdgeInsets.only(bottom: 24 * _scale);
  EdgeInsets get mb32 => EdgeInsets.only(bottom: 32 * _scale);

  // Margin only top
  EdgeInsets get mt0 => EdgeInsets.only(top: 0 * _scale);
  EdgeInsets get mt2 => EdgeInsets.only(top: 2 * _scale);
  EdgeInsets get mt4 => EdgeInsets.only(top: 4 * _scale);
  EdgeInsets get mt8 => EdgeInsets.only(top: 8 * _scale);
  EdgeInsets get mt12 => EdgeInsets.only(top: 12 * _scale);
  EdgeInsets get mt16 => EdgeInsets.only(top: 16 * _scale);
  EdgeInsets get mt20 => EdgeInsets.only(top: 20 * _scale);
  EdgeInsets get mt24 => EdgeInsets.only(top: 24 * _scale);
  EdgeInsets get mt32 => EdgeInsets.only(top: 32 * _scale);

  // Margin only left
  EdgeInsets get ml0 => EdgeInsets.only(left: 0 * _scale);
  EdgeInsets get ml2 => EdgeInsets.only(left: 2 * _scale);
  EdgeInsets get ml4 => EdgeInsets.only(left: 4 * _scale);
  EdgeInsets get ml8 => EdgeInsets.only(left: 8 * _scale);
  EdgeInsets get ml12 => EdgeInsets.only(left: 12 * _scale);
  EdgeInsets get ml16 => EdgeInsets.only(left: 16 * _scale);
  EdgeInsets get ml20 => EdgeInsets.only(left: 20 * _scale);
  EdgeInsets get ml24 => EdgeInsets.only(left: 24 * _scale);
  EdgeInsets get ml32 => EdgeInsets.only(left: 32 * _scale);

  // Margin only right
  EdgeInsets get mr0 => EdgeInsets.only(right: 0 * _scale);
  EdgeInsets get mr2 => EdgeInsets.only(right: 2 * _scale);
  EdgeInsets get mr4 => EdgeInsets.only(right: 4 * _scale);
  EdgeInsets get mr8 => EdgeInsets.only(right: 8 * _scale);
  EdgeInsets get mr12 => EdgeInsets.only(right: 12 * _scale);
  EdgeInsets get mr16 => EdgeInsets.only(right: 16 * _scale);
  EdgeInsets get mr20 => EdgeInsets.only(right: 20 * _scale);
  EdgeInsets get mr24 => EdgeInsets.only(right: 24 * _scale);
  EdgeInsets get mr32 => EdgeInsets.only(right: 32 * _scale);

  ///////////////////////////// MARGIN SPACING BY SIZE //////////////////////////////

  // Margin Horizontal Spacing
  EdgeInsets get mhNull => mh0;
  EdgeInsets get mhXXS => mh2;
  EdgeInsets get mhXS => mh4;
  EdgeInsets get mhSM => mh8;
  EdgeInsets get mhMD => mh12;
  EdgeInsets get mhLG => mh16;
  EdgeInsets get mhXL => mh24;
  EdgeInsets get mhXXL => mh32;

  // Margin Vertical Spacing
  EdgeInsets get mvNull => mv0;
  EdgeInsets get mvXXS => mv2;
  EdgeInsets get mvXS => mv4;
  EdgeInsets get mvSM => mv8;
  EdgeInsets get mvMD => mv12;
  EdgeInsets get mvLG => mv16;
  EdgeInsets get mvXL => mv24;
  EdgeInsets get mvXXL => mv32;

  // Margin All Spacing
  EdgeInsets get maNull => ma0;
  EdgeInsets get maXXS => ma2;
  EdgeInsets get maXS => ma4;
  EdgeInsets get maSM => ma8;
  EdgeInsets get maMD => ma12;
  EdgeInsets get maLG => ma16;
  EdgeInsets get maXL => ma24;
  EdgeInsets get maXXL => ma32;

  // Margin Bottom Spacing
  EdgeInsets get mbNull => mb0;
  EdgeInsets get mbXXS => mb2;
  EdgeInsets get mbXS => mb4;
  EdgeInsets get mbSM => mb8;
  EdgeInsets get mbMD => mb12;
  EdgeInsets get mbLG => mb16;
  EdgeInsets get mbXL => mb24;
  EdgeInsets get mbXXL => mb32;

  // Margin Top Spacing
  EdgeInsets get mtNull => mt0;
  EdgeInsets get mtXXS => mt2;
  EdgeInsets get mtXS => mt4;
  EdgeInsets get mtSM => mt8;
  EdgeInsets get mtMD => mt12;
  EdgeInsets get mtLG => mt16;
  EdgeInsets get mtXL => mt24;
  EdgeInsets get mtXXL => mt32;

  // Margin Left Spacing
  EdgeInsets get mlNull => ml0;
  EdgeInsets get mlXXS => ml2;
  EdgeInsets get mlXS => ml4;
  EdgeInsets get mlSM => ml8;
  EdgeInsets get mlMD => ml12;
  EdgeInsets get mlLG => ml16;
  EdgeInsets get mlXL => ml24;
  EdgeInsets get mlXXL => ml32;

  // Margin Right Spacing
  EdgeInsets get mrNull => mr0;
  EdgeInsets get mrXXS => mr2;
  EdgeInsets get mrXS => mr4;
  EdgeInsets get mrSM => mr8;
  EdgeInsets get mrMD => mr12;
  EdgeInsets get mrLG => mr16;
  EdgeInsets get mrXL => mr24;
  EdgeInsets get mrXXL => mr32;
}

extension ThemeMarginX on BuildContext {
  ThemeMargin get themeMargin => ThemeMargin(dsScale);
}
