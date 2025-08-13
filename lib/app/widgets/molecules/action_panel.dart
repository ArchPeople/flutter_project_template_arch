import 'package:flutter/material.dart';
import 'package:flutter_project_template_arch/core/general_helpers/extensions/dynamic_size_extension.dart';
import 'package:flutter_project_template_arch/app/widgets/atoms/button/button_base.dart';
import 'package:flutter_project_template_arch/app/widgets/atoms/text/text_base.dart';

class ActionPanel extends StatelessWidget {
  final String title;
  final String buttonLabel;
  final VoidCallback onPressed;
  final bool disabled;

  const ActionPanel({
    super.key,
    required this.title,
    required this.buttonLabel,
    required this.onPressed,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          TextBase(label: title),
          Spacer(),
          SizedBox(
            width: 100.ds,
            child: ButtonBase(
              label: buttonLabel,
              onPressed: onPressed,
              disabled: disabled,
            ),
          ),
        ],
      ),
    );
  }
}
