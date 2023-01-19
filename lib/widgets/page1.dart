
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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
                    backgroundColor: Colors.amber,
                    radius: 86,
                    child: CircleAvatar(
                      radius: 78,
                      child: ClipOval(
                        child: Lottie.network(Lottie1, fit: BoxFit.cover),
                      ),
                      
                    ),
                  ),
                  
                  // CircleAvatar(
                  //   //backgroundColor: Color.fromARGB(255, 248, 241, 241),
                  //   radius: 100,
                  //   child: ClipOval(
                  //     child: Lottie.network(Lottie1, fit: BoxFit.cover, 
                  //     // width: double.maxFinite,
                  //     // height: double.maxFinite
                  //     //height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width
                  //     )
                  //     ),
                  //   ),
                  //Lottie.asset("name"),
            
                  10.height,
                  const Center(
                    child: Text(
                      'Get your goods transported',
                      style: TextStyle(
                        fontFamily: 'GTWalsheim',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  
                ],
              ),
      ),
    );
  }
}