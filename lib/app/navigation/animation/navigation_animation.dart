import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationAnimation {
  static CustomTransitionPage noTransition(
    context,
    state,
    child,
    String routeName,
  ) {
    return CustomTransitionPage<void>(
      key: state.pageKey,
      child: child,
      transitionDuration: Duration.zero,
      transitionsBuilder: (_, __, ___, Widget child) => child,
      name: routeName,
    );
  }

  static CustomTransitionPage fadeTransition(
    context,
    state,
    child,
    String routeName,
  ) {
    return CustomTransitionPage<void>(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(
            opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
            child: child,
          ),
      transitionDuration: const Duration(milliseconds: 500),
      name: routeName,
    );
  }

  static CustomTransitionPage slideTransition(
    context,
    state,
    child,
    String routeName,
  ) {
    return CustomTransitionPage<void>(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const beginOffset = Offset(
          1.0,
          0.0,
        ); // Start position for the animation (from right)
        const endOffset =
            Offset.zero; // End position for the animation (to left)
        final tween = Tween(begin: beginOffset, end: endOffset);
        final offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      },
      transitionDuration: const Duration(milliseconds: 200),
      name: routeName,
    );
  }
}
