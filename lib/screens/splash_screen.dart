// import 'package:flutter/material.dart';
// import 'package:phoneauthentication/screens/login_screen.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     _navigateToLogin();
//   }

//   _navigateToLogin() async {
//     await Future.delayed(const Duration(seconds: 3), () {});
//     if (mounted) {
//       Navigator.pushReplacement(context,
//           MaterialPageRoute(builder: ((context) => const LoginScreen())));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//       decoration: const BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage("images/iPhone 14 - 1.png"),
//           fit: BoxFit.cover
//         ),
//       ),
//     ));
//   }
// }
