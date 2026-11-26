import 'package:material_ui/material_ui.dart';
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
      padding: context.themePadding.pa16,
      decoration: BoxDecoration(
        borderRadius: context.themeBorder.bc8,
        border: BoxBorder.all(width: context.ds(1), color: AssetColors.grey),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: context.ds(40),
              decoration: BoxDecoration(
                color: statusColor,
                borderRadius: context.themeBorder.bc4,
              ),
            ),
            Gap.height(context.ds(20)),
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
