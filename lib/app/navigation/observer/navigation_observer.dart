import 'package:flutter/widgets.dart';

class NavigationObserver extends NavigatorObserver {
  NavigationObserver();

  @override
  void didPush(Route<dynamic>? route, Route<dynamic>? previousRoute) {}

  @override
  void didPop(Route<dynamic>? route, Route<dynamic>? previousRoute) {}

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {}
}
