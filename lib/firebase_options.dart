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
        return macos;
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
    apiKey: 'AIzaSyBs2dfdz_yFEXPeQsFXmuhWfnufOGDMtHs',
    appId: '1:101054203052:web:e8d3dda10e0af1acd84b09',
    messagingSenderId: '101054203052',
    projectId: 'services-app-8612f',
    authDomain: 'services-app-8612f.firebaseapp.com',
    storageBucket: 'services-app-8612f.appspot.com',
    measurementId: 'G-SES3EM37NL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDq8xBxiO7jegJB1A42AAcWJn3Uo1XI5ck',
    appId: '1:101054203052:android:f56de5d198708e92d84b09',
    messagingSenderId: '101054203052',
    projectId: 'services-app-8612f',
    storageBucket: 'services-app-8612f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA_pqV2tjx---a1JzP7WACtgQdGPytYLuE',
    appId: '1:101054203052:ios:f800a44e105d15b6d84b09',
    messagingSenderId: '101054203052',
    projectId: 'services-app-8612f',
    storageBucket: 'services-app-8612f.appspot.com',
    iosBundleId: 'com.example.untitled',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA_pqV2tjx---a1JzP7WACtgQdGPytYLuE',
    appId: '1:101054203052:ios:0b3201d2a90eec7ad84b09',
    messagingSenderId: '101054203052',
    projectId: 'services-app-8612f',
    storageBucket: 'services-app-8612f.appspot.com',
    iosBundleId: 'com.example.untitled.RunnerTests',
  );
}
