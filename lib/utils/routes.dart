import 'package:buttons_routes/homescreen.dart';
import 'package:buttons_routes/secondscreen.dart';
import 'package:buttons_routes/thirdscreen.dart';
import 'package:buttons_routes/utils/page_routes.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RouteName.secondScreen:
        return MaterialPageRoute(
            builder: ((context) =>
                SecondScreen(data: settings.arguments as Map)));
      case RouteName.thirdScreen:
        return MaterialPageRoute(
            builder: (context) => ThirdScreen(
                  data2: settings.arguments as Map,
                ));
      default:
        return MaterialPageRoute(builder: ((context) {
          return const Scaffold(
            body: Center(
              child: Text("404 Error"),
            ),
          );
        }));
    }
  }
}
