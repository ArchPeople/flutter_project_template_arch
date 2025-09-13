import 'package:flutter/material.dart';

class InkBase extends StatelessWidget {
  final String accessibilityLabel;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final Widget child;

  const InkBase({
    super.key,
    this.accessibilityLabel = '',
    this.onTap,
    this.onLongPress,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      excludeSemantics: true,
      label: 'pressable-$accessibilityLabel',
      child: InkWell(
        onTap: () {
          onTap?.call();
        },
        onLongPress: () {
          onLongPress?.call();
        },
        child: child,
      ),
    );
  }
}
