import 'package:buttons_routes/utils/page_routes.dart';
import 'package:buttons_routes/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      initialRoute: RouteName.homeScreen,
      onGenerateRoute: Routes.generateRoute,
      
    );
  }
}
