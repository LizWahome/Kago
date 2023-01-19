import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:phoneauthentication/constants/cache.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../screens/login_screen.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: RichText(
                      text: const TextSpan(
                          text: 'Ka',
                          style: TextStyle(
                              fontFamily: 'stereofunk',
                              fontSize: 40,
                              color: Colors.black),
                          children: [
                            TextSpan(
                                text: 'go',
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontFamily: 'stereofunk',
                                  fontSize: 40,
                                ))
                          ]),
                    ),
                  ),
                  20.height,
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 241, 204, 216),
                    radius: 100,
                    child: ClipOval(
                      child: Lottie.network(Lottie2, fit: BoxFit.cover)
                      ),
                    ),
                  //Lottie.asset("name"),
                
                  10.height,
                  const Text(
                    'Our transporters are thoroughly vetted',
                    style: TextStyle(
                      fontFamily: 'GTWalsheim',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                ],
              ),
      ),
    );
  }
}