import 'package:flutter/material.dart';

class Pressablebase extends StatelessWidget {
  final String accessibilityLabel;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final Widget child;

  const Pressablebase({
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
      child: GestureDetector(
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
