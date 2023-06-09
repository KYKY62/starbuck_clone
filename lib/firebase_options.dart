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
    apiKey: 'AIzaSyDkswtUecPJMsPnRPJKLPcLst55ShqIOjU',
    appId: '1:438067296868:web:2479b92766994118bf7d71',
    messagingSenderId: '438067296868',
    projectId: 'starbuckclone',
    authDomain: 'starbuckclone.firebaseapp.com',
    storageBucket: 'starbuckclone.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC9k0rMui2NZUzMEgWJ4Jlgt5hzwbbHM28',
    appId: '1:438067296868:android:d5ab6b2ab73e5bbcbf7d71',
    messagingSenderId: '438067296868',
    projectId: 'starbuckclone',
    storageBucket: 'starbuckclone.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDShObe6MwdaMMPHHIoLlFOyBVsDrX2Qe0',
    appId: '1:438067296868:ios:89540d684397736ebf7d71',
    messagingSenderId: '438067296868',
    projectId: 'starbuckclone',
    storageBucket: 'starbuckclone.appspot.com',
    iosClientId: '438067296868-740id45oaq9lp2nfnln0qut72e170bes.apps.googleusercontent.com',
    iosBundleId: 'com.example.starbuckClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDShObe6MwdaMMPHHIoLlFOyBVsDrX2Qe0',
    appId: '1:438067296868:ios:89540d684397736ebf7d71',
    messagingSenderId: '438067296868',
    projectId: 'starbuckclone',
    storageBucket: 'starbuckclone.appspot.com',
    iosClientId: '438067296868-740id45oaq9lp2nfnln0qut72e170bes.apps.googleusercontent.com',
    iosBundleId: 'com.example.starbuckClone',
  );
}
