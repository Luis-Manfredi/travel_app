import 'package:flutter/material.dart';
import 'package:travel_app/ui/screens/home.dart';
import 'package:travel_app/ui/screens/landing.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Home.id:
        return MaterialPageRoute(builder: (_) => const Home());
      case Landing.id:
        return MaterialPageRoute(builder: (_) => const Landing());
      default:
        return null;
    }
  }
}