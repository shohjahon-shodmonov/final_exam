import 'package:final_exam/core/init/splash_screen.dart';
import 'package:final_exam/screens/home/home_page.dart';
import 'package:flutter/material.dart';

class Routes {
  // SINGLETON

  static final Routes _instance = Routes._init();
  static Routes get instance => _instance;

  Routes._init(); //Private consructor

  Route? onGenerateRoute(RouteSettings settings) {
    var args = settings.arguments;

    switch (settings.name) {
      case '/':
        return simpleRoute(SplashScreen());
      case '/home':
        return simpleRoute(HomePage());
    }
  }

  simpleRoute(Widget route) {
    return MaterialPageRoute(builder: (context) => route);
  }
}
