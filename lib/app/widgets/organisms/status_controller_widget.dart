import 'package:flutter/material.dart';
import 'package:flutter_project_template_arch/app/assets/colors/asset_colors.dart';
import 'package:flutter_project_template_arch/core/general_helpers/extensions/dynamic_size_extension.dart';
import 'package:flutter_project_template_arch/app/themes/border/theme_border.dart';
import 'package:flutter_project_template_arch/app/themes/padding/theme_padding.dart';
import 'package:flutter_project_template_arch/app/widgets/atoms/gap/gap.dart';
import 'package:flutter_project_template_arch/app/widgets/molecules/action_panel.dart';

class StatusControllerWidget extends StatelessWidget {
  final String title;
  final String buttonLabel;
  final VoidCallback onPressed;
  final bool disabled;
  final Color statusColor;

  const StatusControllerWidget({
    super.key,
    required this.title,
    required this.buttonLabel,
    required this.onPressed,
    this.disabled = false,
    required this.statusColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: ThemePadding.pa16,
      decoration: BoxDecoration(
        borderRadius: ThemeBorder.bc8,
        border: BoxBorder.all(width: 1.ds, color: AssetColors.grey),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 40.ds,
              decoration: BoxDecoration(
                color: statusColor,
                borderRadius: ThemeBorder.bc4,
              ),
            ),
            Gap.height(20.ds),
            ActionPanel(
              title: title,
              buttonLabel: buttonLabel,
              onPressed: onPressed,
              disabled: disabled,
            ),
          ],
        ),
      ),
    );
  }
}
