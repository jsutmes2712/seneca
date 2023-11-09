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
    apiKey: 'AIzaSyBnzC1_n49eCoJK1iT1qg5NTV25_xU5O-4',
    appId: '1:994178374365:web:771b37f0e2b684769a5934',
    messagingSenderId: '994178374365',
    projectId: 'iseneca-jsm',
    authDomain: 'iseneca-jsm.firebaseapp.com',
    storageBucket: 'iseneca-jsm.appspot.com',
    measurementId: 'G-4L5348MLCL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB8fh2FNDS7NmXX2UnSiCkUJhMBasMpVPM',
    appId: '1:994178374365:android:43d6d2884fc9c20f9a5934',
    messagingSenderId: '994178374365',
    projectId: 'iseneca-jsm',
    storageBucket: 'iseneca-jsm.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDUA51DXCr2Hiwm5tMVQmolM6PO2-oQZJY',
    appId: '1:994178374365:ios:dfde08427c53510c9a5934',
    messagingSenderId: '994178374365',
    projectId: 'iseneca-jsm',
    storageBucket: 'iseneca-jsm.appspot.com',
    iosClientId: '994178374365-r4v37j3ifs6jj3vd1ccmvfrm6re950i3.apps.googleusercontent.com',
    iosBundleId: 'com.example.seneca',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDUA51DXCr2Hiwm5tMVQmolM6PO2-oQZJY',
    appId: '1:994178374365:ios:1e377a142268ccf59a5934',
    messagingSenderId: '994178374365',
    projectId: 'iseneca-jsm',
    storageBucket: 'iseneca-jsm.appspot.com',
    iosClientId: '994178374365-l3gmsunlhc5nb3414i6ktvvk6d0eai4h.apps.googleusercontent.com',
    iosBundleId: 'com.example.seneca.RunnerTests',
  );
}