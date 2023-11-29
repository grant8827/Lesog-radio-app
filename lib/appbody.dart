// ignore_for_file: camel_case_types, dead_code, avoid_print, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class homeBodyPage extends StatefulWidget {
  const homeBodyPage({super.key});

  @override
  State<homeBodyPage> createState() => homeBodyPageState();
}

class homeBodyPageState extends State<homeBodyPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
                top: 30.0,
                bottom: 40.0,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20), // Image border
                child: SizedBox.fromSize(
                  // Image radius
                  child: Image.asset('assets/images/lesogradio1.png',
                      fit: BoxFit.cover),
                ),
              )),
          Container(
            margin: const EdgeInsets.only(bottom: 30.0),
            child: const Text(
              'Welcome To',
              style: TextStyle(
                fontSize: 30.0,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.all(10.0),
              child: const FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "LESOG RADIO",
                  style: TextStyle(
                    fontSize: 50,
                    color: Color.fromARGB(255, 234, 152, 0),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OoohBaby',
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Color.fromARGB(255, 92, 13, 106),
                        offset: Offset(5.0, 5.0),
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
