// ignore_for_file: camel_case_types, avoid_unnecessary_containers, avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class contactPage extends StatefulWidget {
  const contactPage({super.key});

  @override
  State<contactPage> createState() => contactPageState();
}

class contactPageState extends State<contactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Contact Us'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
                alignment: Alignment.topLeft,
                child: const Text(
                  'Contact Lesog Radio',
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
                  '''We would love to hear from you!!! If you have any questions or comments, please do not hesitate to contact us:''',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.all(20.0),
                child: const Text(
                  'Call Us: 407-814-3234',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.all(20.0),
                child: const Text(
                  'Email Us: lesogradio@gmail.com',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.all(20.0),
                child: const Text(
                  'Address: 407 S PARK AVE Apopka Fl 32703',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    child: const Text(
                      'Follow Us On',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.purple,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  IconButton(
                      padding: const EdgeInsets.only(right: 30.0),
                      icon: const Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                        size: 45.0,
                      ),
                      onPressed: () async {
                        Uri website =
                            Uri.parse('https://www.facebook.com/LesogFM');
                        if (await launchUrl(website)) {
                          //open website
                        } else {
                          //do nothing
                        }
                      }),
                  IconButton(
                      padding: const EdgeInsets.only(left: 20.0),
                      icon: const Icon(
                        FontAwesomeIcons.youtube,
                        color: Color.fromARGB(255, 183, 0, 0),
                        size: 45.0,
                      ),
                      onPressed: () async {
                        Uri website = Uri.parse(
                            'https://www.youtube.com/@lesogradio/streams');
                        if (await launchUrl(website)) {
                          //open website
                        } else {
                          //do nothing
                        }
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
