import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));

    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    controller.repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
    
  }

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
            Stack(clipBehavior: Clip.none, children: [
              CircleAvatar(
                radius: 105,
                backgroundColor: Colors.amber,
                child: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 242, 226, 231),
                  radius: 100,
                  child: ClipOval(
                      child: Lottie.asset("assets/50810-forklift-loading-truck.json",
                          fit: BoxFit.cover)),
                ),
              ),
              Positioned(
                bottom: -41,
                left: 0,
                right: 0,
                //right: 10,
                child: Center(
                  child: Container(
                     decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 7,
                        spreadRadius: 5,
                        offset: Offset(5, 5)
                      )
                    ]
                  ),
                    child: RotationTransition(
                      turns: animation,
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
                ),
              ),
              Positioned(
                top: -3,
                child: Container(
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 7,
                        spreadRadius: 5,
                        offset: Offset(5, 5)
                      )
                    ]
                  ),
                  child: RotationTransition(
                    turns: animation,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: const [
                          BoxShadow(color: Colors.white, spreadRadius: 10),
                        ],
                        image: const DecorationImage(
                            image: AssetImage("assets/logistics-7711000_1920.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -3,
                right: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 7,
                        spreadRadius: 5,
                        offset: Offset(5, 5)
                      )
                    ]
                  ),
                  child: RotationTransition(
                    turns: animation,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white, 
                          spreadRadius: 10),
                        ],
                        image: const DecorationImage(
                            image: AssetImage("assets/pallet-1665471_1280.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
            //Lottie.asset("name"),

            100.height,
            const Text(
              'Our transporters are thoroughly vetted',
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
