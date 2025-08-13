import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  final double width;
  final double height;

  const Gap({super.key, this.width = 0, this.height = 0});

  factory Gap.height([double height = 0]) => Gap(height: height);

  factory Gap.width([double width = 0]) => Gap(width: width);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width, height: height);
  }
}
