import 'package:buttons_routes/utils/page_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen"), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(
            onTap: () {
              print("tap");
              Navigator.pushNamed(context, RouteName.secondScreen, arguments: {
                "name": "Ali",
                "roll_no": "5116",
              });
            },
            child: Container(
              width: double.infinity,
              height: 60,
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 255, 0, 0)),
              child: const Center(
                child: Text(
                  "Home Screen",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
