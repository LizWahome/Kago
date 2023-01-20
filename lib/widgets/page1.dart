import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:phoneauthentication/constants/cache.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              Stack(clipBehavior: Clip.none, children: [
                RotatedBox(
                  quarterTurns: 4,
                  child: CircleAvatar(
                    radius: 105,
                    backgroundColor: Colors.amber,
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 203, 219, 248),
                      radius: 100,
                      child: ClipOval(
                          child: Lottie.asset("assets/35070-car-loading.json", fit: BoxFit.cover)),
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
                        boxShadow: const [
                          BoxShadow(color: Colors.white, spreadRadius: 10),
                        ],
                        image: const DecorationImage(
                            image: AssetImage("assets/port-1845350_1920.jpg"),
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
                      boxShadow: const [
                        BoxShadow(color: Colors.white, spreadRadius: 10),
                      ],
                      image: const DecorationImage(
                          image:
                              AssetImage("assets/logistics-7711000_1920.jpg"),
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
                      boxShadow: const [
                        BoxShadow(color: Colors.white, spreadRadius: 10),
                      ],
                      image: const DecorationImage(
                          image: AssetImage("assets/pallet-1665471_1280.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ]),
              150.height,
              const Text(
                'Get your goods transported',
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
      ),
    );
  }
}
