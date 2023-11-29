// ignore_for_file: unused_import, avoid_print, curly_braces_in_flow_control_structures, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:lesogradio99_9fm/dropdown.dart';
import 'package:lesogradio99_9fm/homepage.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'OoohBaby',
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 241, 197, 0),
          title: const Text(
            'Follow Us On',
            style: TextStyle(
              color: Colors.purple,
            ),
          ),
          actions: [
            IconButton(
                padding: const EdgeInsets.only(right: 20.0),
                icon: const Icon(
                  FontAwesomeIcons.facebook,
                  color: Colors.blue,
                  size: 30.0,
                ),
                onPressed: () async {
                  Uri website = Uri.parse('https://www.facebook.com/LesogFM');
                  if (await launchUrl(website)) {
                    //open website
                  } else {
                    //do nothing
                  }
                }),
            IconButton(
                padding: const EdgeInsets.only(right: 20.0),
                icon: const Icon(
                  FontAwesomeIcons.youtube,
                  color: Color.fromARGB(255, 183, 0, 0),
                  size: 30.0,
                ),
                onPressed: () async {
                  Uri website =
                      Uri.parse('https://www.youtube.com/@lesogradio/streams');
                  if (await launchUrl(website)) {
                    //open website
                  } else {
                    //do nothing
                  }
                }),
            IconButton(
              padding: const EdgeInsets.only(
                right: 30.0,
              ),
              iconSize: 25.0,
              onPressed: () {
                Share.share(
                    'https://apps.apple.com/jm/app/lesog-radio-99-9fm/id6453359499',
                    subject: 'Look what I made!');
              },
              icon: const FaIcon(FontAwesomeIcons.shareAlt),
              color: const Color.fromARGB(255, 30, 30, 30),
            ),
            const dropdownmenu(),
          ],
        ),
        body: const homePage(),
        bottomNavigationBar: Container(
          color: Colors.purple,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  icon: const Icon(
                    FontAwesomeIcons.phone,
                    color: Color.fromARGB(255, 0, 135, 188),
                    size: 30.0,
                  ),
                  onPressed: () async {
                    Uri phone = Uri.parse('tel:4078143234');
                    if (await launchUrl(phone)) {
//dialer open
                    } else {
                      //do nothing
                    }
                  }),
              IconButton(
                  icon: const Icon(
                    FontAwesomeIcons.envelope,
                    size: 30.0,
                    color: Color.fromARGB(255, 226, 221, 221),
                  ),
                  onPressed: () async {
                    Uri email = Uri.parse('mailto:lesogradio@gmail.com');
                    if (await launchUrl(email)) {
                      //open email
                    } else {
                      //do nothing
                    }
                  }),
              IconButton(
                icon: const Icon(
                  FontAwesomeIcons.locationDot,
                  color: Colors.red,
                  size: 30.0,
                ),
                onPressed: () async {
                  Uri address = Uri.parse(
                      'https://www.google.com/maps/search/?api=1&query=407SPARKAVEApopkaFl32703');
                  if (await launchUrl(address)) {
                    //open map
                  } else {
                    //do nothing
                  }
                },
              ),
              IconButton(
                  icon: const Icon(
                    FontAwesomeIcons.globe,
                    color: Colors.blue,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    Uri website = Uri.parse('https://www.lesogradio.com/');
                    if (await launchUrl(website)) {
                      //open website
                    } else {
                      //do nothing
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
