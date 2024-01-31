import 'package:flutter/material.dart';
import 'package:partial_halper_app/presentation/loading_screen/loading_screen.dart';
import 'package:partial_halper_app/presentation/landing_page_screen/landing_page_screen.dart';
import 'package:partial_halper_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loadingScreen = '/loading_screen';

  static const String landingPageScreen = '/landing_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        loadingScreen: LoadingScreen.builder,
        landingPageScreen: LandingPageScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LoadingScreen.builder
      };
}
