import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
        return windows;
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
    apiKey: 'AIzaSyDOxWZf3_hhvBA6WsmRVJudK6-mga4fQM4',
    appId: '1:931031759392:web:ed70d05e3d689a999f5a45',
    messagingSenderId: '931031759392',
    projectId: 'myteleton-database',
    authDomain: 'myteleton-database.firebaseapp.com',
    storageBucket: 'myteleton-database.firebasestorage.app',
    measurementId: 'G-543YTN6WSH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCwoFMJXMOrpJjwvqSnkGbphF1_CY4g8ds',
    appId: '1:931031759392:android:c61ed8a05eef99299f5a45',
    messagingSenderId: '931031759392',
    projectId: 'myteleton-database',
    storageBucket: 'myteleton-database.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD2SsnsC1OhUicpGfreT_H6qvhhsMdtoPU',
    appId: '1:931031759392:ios:564a4d9f949655c49f5a45',
    messagingSenderId: '931031759392',
    projectId: 'myteleton-database',
    storageBucket: 'myteleton-database.firebasestorage.app',
    iosBundleId: 'com.example.myteleton',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD2SsnsC1OhUicpGfreT_H6qvhhsMdtoPU',
    appId: '1:931031759392:ios:564a4d9f949655c49f5a45',
    messagingSenderId: '931031759392',
    projectId: 'myteleton-database',
    storageBucket: 'myteleton-database.firebasestorage.app',
    iosBundleId: 'com.example.myteleton',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDOxWZf3_hhvBA6WsmRVJudK6-mga4fQM4',
    appId: '1:931031759392:web:67a6be1a7d710c4f9f5a45',
    messagingSenderId: '931031759392',
    projectId: 'myteleton-database',
    authDomain: 'myteleton-database.firebaseapp.com',
    storageBucket: 'myteleton-database.firebasestorage.app',
    measurementId: 'G-M5TFLE21CQ',
  );
}
