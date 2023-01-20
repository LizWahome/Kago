import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:phoneauthentication/widgets/page1.dart';
import 'package:phoneauthentication/widgets/page2.dart';
import 'package:phoneauthentication/widgets/page3.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 600,
              //height: screenSize.size.height * 0.6,
              child: PageView(
                controller: controller,
                children: const [Page1(), Page2(), Page3()],
              ),
            ),
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: const WormEffect(
                  spacing: 16,
                  dotColor: Colors.black26,
                  activeDotColor: Colors.amber),
              onDotClicked: (index) => controller.animateToPage(index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn),
            ),
            60.height,
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  shadowColor: MaterialStateProperty.all<Color>(Colors.amber),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                  ),
                  side: MaterialStateProperty.all<BorderSide>(
                      const BorderSide(width: 1.5, style: BorderStyle.solid))),
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('showLogin', true);

                if (mounted) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                }
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 18),
                child: Text(
                  'Continue',
                  style: TextStyle(
                      fontFamily: 'GTWalsheim',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
