import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:phoneauthentication/auth/auth_state.dart';
import 'package:phoneauthentication/screens/login_screen.dart';
import 'package:phoneauthentication/screens/on_boarding_screen.dart';
import 'package:phoneauthentication/screens/splash_screen.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final prefs = await SharedPreferences.getInstance();
  final showLogin = prefs.getBool('showLogin') ?? false;

  FlutterNativeSplash.remove();
  //WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  //FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(MyApp(showLogin: showLogin));
}

Future initialization(BuildContext? context) async {
  await Future.delayed(const Duration(seconds: 3));
}

class MyApp extends StatelessWidget {
  final bool showLogin;
  const MyApp({super.key, required this.showLogin});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OnBoardingScreen(),
        //home: showLogin ? const LoginScreen() : const OnBoardingScreen(),
      ),
    );
  }
}
