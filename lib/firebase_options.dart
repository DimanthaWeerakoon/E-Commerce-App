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
    apiKey: 'AIzaSyDNsaXvs1MGILj3G2RSeL2PSXgV5iNRi9E',
    appId: '1:327321067669:web:6d2b2c7c9f66c82e0cfb9c',
    messagingSenderId: '327321067669',
    projectId: 'ecommerce-app-ff5f5',
    authDomain: 'ecommerce-app-ff5f5.firebaseapp.com',
    storageBucket: 'ecommerce-app-ff5f5.appspot.com',
    measurementId: 'G-3X751CG2D4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDwMQxJW_A0eFnmCKhZhl3t2sjTqCbKCCE',
    appId: '1:327321067669:android:8e6839a09289da990cfb9c',
    messagingSenderId: '327321067669',
    projectId: 'ecommerce-app-ff5f5',
    storageBucket: 'ecommerce-app-ff5f5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCkNMaropZFVHWuPtF8jhF2WEoO0asesWA',
    appId: '1:327321067669:ios:6c9835c03aa7c1760cfb9c',
    messagingSenderId: '327321067669',
    projectId: 'ecommerce-app-ff5f5',
    storageBucket: 'ecommerce-app-ff5f5.appspot.com',
    androidClientId: '327321067669-pre1iviir0kkos8v2027rfa1oj0co6e1.apps.googleusercontent.com',
    iosClientId: '327321067669-0v2hov1g9qvnod56eth1j4n1ulb91dp1.apps.googleusercontent.com',
    iosBundleId: 'commerce.dimantha.eCommerceApp',
  );
}