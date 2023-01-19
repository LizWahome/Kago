import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieImage extends StatefulWidget {
  const LottieImage({super.key});

  @override
  State<LottieImage> createState() => _LottieImageState();
}

class _LottieImageState extends State<LottieImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Lottie.asset("name"),
    );
  }
}