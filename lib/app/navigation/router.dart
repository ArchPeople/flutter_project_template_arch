// import 'package:flutter/material.dart'; // Uncomment this if you want to use StatefullShellRouter
import 'package:flutter_project_template_arch/core/config/config.dart';
import 'package:flutter_project_template_arch/features/demo_feature/view/demo_feature_view.dart';
// import 'package:flutter_project_template_arch/navigation/animation/navigation_animation.dart'; // Uncomment this if you want to use custom animations when navigating to the DemoFeatureView
import 'package:flutter_project_template_arch/app/navigation/object/demo_navigation_object.dart';
import 'package:flutter_project_template_arch/app/navigation/observer/navigation_observer.dart';
import 'package:flutter_project_template_arch/app/navigation/path/navigation_path.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: NavigationPath
      .demoFeature, // Change this to your initial route, usually the splash screen
  navigatorKey: Config.navigatorKey,
  observers: [NavigationObserver()],
  routes: [
    GoRoute(
      path: NavigationPath.demoFeature,
      builder: (context, state) {
        DemoNavigationObject? extra = state.extra != null
            ? state.extra as DemoNavigationObject
            : null; // This is an example if you want to pass extra data to the page
        return DemoFeatureView(
          extra:
              extra, // Pass the extra data to the view, don't forget to add this in the view constructor
        );
      },
    ),

    /// Example of using animation when navigating to the DemoFeatureView, please note that using animation will disable device's back functionality
    // GoRoute(
    //   path: NavigationPath.initialRoute,
    //   pageBuilder: (context, state) {
    //     DemoNavigationObject? extra = state.extra != null
    //         ? state.extra as DemoNavigationObject
    //         : null;
    //     return NavigationAnimation.fadeTransition( // More animation can be found in the NavigationAnimation class
    //       context,
    //       state,
    //       DemoFeatureView(
    //         extra: extra,
    //       ),
    //       NavigationPath.initialRoute,
    //     );
    //   },
    // ),

    /// If you're planning to use NavigationBar or NavigationRail, you can use StatefulShellRouter below to avoid re-loading the active page when switching tabs.
    // StatefulShellRoute.indexedStack(
    //   builder: (context, state, screen) {
    //     // String path = state.fullPath ?? ''; // This is the path of the active tab
    //     // Widget widget = screen; // This is the main view
    //     return DemoFeatureView(); // This is just a placeholder, This should be the main view of the bottomnavbar or railling. Pass the path and widget here
    //   },
    //   branches: [
    //     /// These are the views of each tab, it should be more than one. you can add more views here
    //     StatefulShellBranch(
    //       routes: [
    //         GoRoute(
    //           path: NavigationPath.initialRoute,
    //           builder: (context, state) {
    //             DemoNavigationObject extra =
    //                 state.extra
    //                     as DemoNavigationObject;
    //             return DemoFeatureView(
    //               extra:
    //                   extra,
    //             );
    //           },
    //         ),
    //       ],
    //     ),
    //     /// Add more StatefulShellBranch here if you want to add more tabs
    //     // StatefulShellBranch(
    //     //   routes: [
    //     //     GoRoute(
    //     //       path: NavigationPath.initialRoute,
    //     //       builder: (context, state) {
    //     //         return DemoFeatureView(
    //     //           extra:
    //     //               extra,
    //     //         );
    //     //       },
    //     //     ),
    //     //   ],
    //     // ),
    //   ],
    // ),
  ],
);
