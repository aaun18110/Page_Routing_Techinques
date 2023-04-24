import 'package:buttons_routes/utils/page_routes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SecondScreen extends StatefulWidget {
  dynamic data;
  SecondScreen({super.key, required this.data});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Screen"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
                text: TextSpan(
              text: "Name   :   ",
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
              children: [
                TextSpan(
                    text: widget.data["name"],
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w400))
              ],
            )),
            const SizedBox(
              height: 20,
            ),
            RichText(
                text: TextSpan(
                    text: "Roll No  :   ",
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                    children: [
                  TextSpan(
                    text: widget.data["roll_no"],
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  )
                ])),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RouteName.thirdScreen,
                        arguments: {"Sem": "5th", "Dep": "BSSE"});
                  },
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 22, 187, 0)),
                    child: const Center(
                      child: Text(
                        "Second Screen",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 30,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
