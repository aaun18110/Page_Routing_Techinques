import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  dynamic data2;
  ThirdScreen({super.key, required this.data2});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Third Screen"), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: RichText(
                    text: TextSpan(
                        text: "Semester   :   ",
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                        children: [
                      TextSpan(
                        text: widget.data2["Sem"],
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      )
                    ])),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: RichText(
                    text: TextSpan(
                        text: "Dep   :   ",
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                        children: [
                      TextSpan(
                        text: widget.data2["Dep"],
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      )
                    ])),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 251, 255, 0)),
                    child: const Center(
                      child: Text(
                        "Third Screen",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
