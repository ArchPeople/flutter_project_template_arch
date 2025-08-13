import 'package:flutter/material.dart';
import 'package:flutter_project_template_arch/core/config/env/env.dart';

class Config {
  const Config._();

  // Navigator Key
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static String demoDomain = 'https://reactnative.dev';

  // Environment (Add more if you add more keys in the env.dart file)
  static String demo = Env.demo;
}