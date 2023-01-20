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
        padding: const EdgeInsets.all(30.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
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
                  50.height,
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      CircleAvatar(
                        radius: 105,
                        backgroundColor: Colors.amber,
                        child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 100,
                        child: ClipOval(
                          child: Lottie.asset("assets/75377-truck.json", fit: BoxFit.cover)
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -41,
                        left: 0,
                        right: 0,
                        //right: 10,
                        child: Center(
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              boxShadow: const [BoxShadow(color: Colors.white, spreadRadius: 10),],
                              image: const DecorationImage(image: AssetImage("assets/port-1845350_1920.jpg"),
                              fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                       Positioned(
                        top: -3,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: const [BoxShadow(color: Colors.white, spreadRadius: 10),],
                            image: const DecorationImage(image: AssetImage("assets/logistics-7711000_1920.jpg"),
                            fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Positioned(
                        top: -3,
                        right: 1,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: const [BoxShadow(color: Colors.white, spreadRadius: 10),],
                            image: const DecorationImage(image: AssetImage("assets/pallet-1665471_1280.jpg"),
                            fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ]
                  ),
                  //Lottie.asset("name"),
                  
                  
                  100.height,
                  const Text(
                    'We ensure the goods arrive in a timely, safe and efficient manner',
                    style: TextStyle(
                      fontFamily: 'GTWalsheim',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                     textAlign: TextAlign.center,
                  ),
                ],
              ),
      ),
    );
  }
}