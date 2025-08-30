import 'package:flutter/material.dart';
import 'package:movies_app/screens/login_screen.dart';
import 'package:movies_app/screens/register_screen.dart';
import 'app_routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());

      case AppRoutes.register:
        return MaterialPageRoute(builder: (_) => RegisterScreen());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text("The page does not exist")),
      ),
    );
  }
}
