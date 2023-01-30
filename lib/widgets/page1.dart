import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> with TickerProviderStateMixin {
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
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xFF414046),
                          //color: Color.fromRGBO(65, 64, 70, 1),
                          //blurRadius: 3,
                          //spreadRadius: 1,
                          offset: Offset(3, 3)
                        )
                      ],
                      color: const Color(0xFFFCEA09),
                    ),
                    height: 80,
                    width: 140,
                    
                    child: Stack(
                      clipBehavior: Clip.none, children: [
                      Positioned(
                          bottom: 3,
                          right: 5,
                          child: SvgPicture.asset(
                            'assets/WhatsApp_Image_2023-01-30_at_09.07.09__1_-removebg-preview_adobe_express.svg', width: 20, height: 20),
                            ),
                      const Positioned(
                          top: -5,
                          left: 26,
                          //right: 100,
                          child: Text(
                            "Kago",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                                fontFamily: 'GTWalsheim',
                                color: Colors.black,
                                fontSize: 44),
                          )),
                    ]),
                  ),
                ],
              ),
              // child: RichText(
              //   text: const TextSpan(
              //       text: 'Ka',
              //       style: TextStyle(
              //           fontFamily: 'stereofunk',
              //           fontSize: 40,
              //           color: Colors.black),
              //       children: [
              //         TextSpan(
              //             text: 'go',
              //             style: TextStyle(
              //               color: Colors.amber,
              //               fontFamily: 'stereofunk',
              //               fontSize: 40,
              //             ))
              //       ]),
              // ),
            ),
            50.height,
            Stack(clipBehavior: Clip.none, children: [
              CircleAvatar(
                radius: 103,
                backgroundColor: const Color(0xFFFCEA09),
                child: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 207, 226, 235),
                  radius: 100,
                  child: ClipOval(
                      child: Lottie.asset("assets/35070-car-loading.json",
                          fit: BoxFit.cover)),
                ),
              ),
              Positioned(
                //bottom: -41,
                // left: 0,
                // right: 0,
                bottom: -5,
                right: 10,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: const [
                          BoxShadow(
                              color: Color(0xFF414046),
                              blurRadius: 7,
                              spreadRadius: 5,
                              offset: Offset(5, 5))
                        ]),
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
                //top: -3,
                left: -40,
                top: 0,
                bottom: 0,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: const [
                          BoxShadow(
                              color: Color(0xFF414046),
                              blurRadius: 7,
                              spreadRadius: 5,
                              offset: Offset(5, 5))
                        ]),
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
                              image:
                                  AssetImage("assets/logistics-7711000_1920.jpg"),
                              fit: BoxFit.cover),
                        ),
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
                            color: Color(0xFF414046),
                            blurRadius: 7,
                            spreadRadius: 5,
                            offset: Offset(5, 5))
                      ]),
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
    );
  }
}
