import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:phoneauthentication/constants/cache.dart';

import '../screens/login_screen.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                    radius: 100,
                    child: ClipOval(
                      child: Lottie.network(Lottie3, fit: BoxFit.cover)
                      ),
                    ),
                  //Lottie.asset("name"),
                  
                  
                  10.height,
                  const Text(
                    'We ensure the goods arrive in a timely, safe and efficient manner',
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