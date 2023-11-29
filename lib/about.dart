// ignore_for_file: camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class aboutPage extends StatefulWidget {
  const aboutPage({super.key});

  @override
  State<aboutPage> createState() => aboutPageState();
}

class aboutPageState extends State<aboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 241, 197, 0),
        title: const Text(
          'About Us',
          style: TextStyle(
            color: Colors.purple,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(5.0),
              child: Image.asset(
                'assets/images/lesogstudio.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
              alignment: Alignment.topLeft,
              child: const Text(
                'About Lesog Radio:',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.purple,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20.0),
              child: const Text(
                '''Lesog Radio is a Christian Radio Station that is dedicated to sharing the Gospel message of Jesus Christ with our multicultural community. We believe that our faith unites us and celebrates our diversity. Our programming includes a variety of shows that offer something for everyone, whether you’re looking for uplifting music, engaging discussions, or spiritual education. Our team of dedicated Ministers is committed to providing high quality programming that reflects the Love of God, the moral values of our listeners, and endeavor to make the Central Florida communities we serve a better place to live by providing families with spiritual insights, motivational programs, and multicultural awareness.''',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
