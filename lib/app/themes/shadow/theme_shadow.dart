import 'package:flutter/material.dart';

class ThemeShadow {
  const ThemeShadow._();

  static BoxShadow smallShadow = BoxShadow(
    color: Colors.black,
    spreadRadius: 0,
    blurRadius: 3,
    offset: const Offset(0, 1),
    blurStyle: BlurStyle.inner,
  );

  static BoxShadow mediumShadow = BoxShadow(
    color: Colors.black,
    spreadRadius: 0,
    blurRadius: 12,
    offset: const Offset(0, 4),
  );

  static BoxShadow largeShadow = BoxShadow(
    color: Colors.black,
    spreadRadius: 0,
    blurRadius: 12,
    offset: const Offset(0, 5),
    blurStyle: BlurStyle.inner,
  );
}