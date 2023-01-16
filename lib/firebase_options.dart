// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBvPJZFB4QXmW7A8J8fRXX5BClRIz0ihKQ',
    appId: '1:275071719934:web:53846d166bcd034e0888af',
    messagingSenderId: '275071719934',
    projectId: 'phone-authentication-d8fca',
    authDomain: 'phone-authentication-d8fca.firebaseapp.com',
    storageBucket: 'phone-authentication-d8fca.appspot.com',
    measurementId: 'G-W578XGBZCS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyADJL8xEOysJRpSGFFAwqdTYwL2Gvkcvtw',
    appId: '1:275071719934:android:3c97d2adfdb1bf970888af',
    messagingSenderId: '275071719934',
    projectId: 'phone-authentication-d8fca',
    storageBucket: 'phone-authentication-d8fca.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCBbDn81XjdF4NQm9OXZtRSjEuhEzf_X0c',
    appId: '1:275071719934:ios:b8a56b1db01ea75d0888af',
    messagingSenderId: '275071719934',
    projectId: 'phone-authentication-d8fca',
    storageBucket: 'phone-authentication-d8fca.appspot.com',
    iosClientId: '275071719934-g53g2nf8fsaj676lrjbtrf8eb1icb7jc.apps.googleusercontent.com',
    iosBundleId: 'com.example.phoneauthentication',
  );
}