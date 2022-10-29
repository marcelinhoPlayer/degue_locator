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
    apiKey: "AIzaSyBaeOJucw5hEqmTPuLRSLUEmDjVwAAFsPc",
    authDomain: "dengue-locator-1-58d80.firebaseapp.com",
    projectId: "dengue-locator-1-58d80",
    storageBucket: "dengue-locator-1-58d80.appspot.com",
    messagingSenderId: "766965573463",
    appId: "1:766965573463:web:bfe0045d831ee49c808012",
    measurementId: "G-KXXKZW5JGT",
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD8pRphRq-W_5_ZQ8HgnjOq_ai9qhTGlHc',
    appId: '1:886691144291:android:053d130d46317829bc8e56',
    messagingSenderId: '886691144291',
    projectId: 'dengue-locator-1',
    storageBucket: 'dengue-locator-1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyACuTw-ysCFD_9629HI4ZVt3v48FsyxNBY',
    appId: '1:886691144291:ios:219cd7e02e999de3bc8e56',
    messagingSenderId: '886691144291',
    projectId: 'dengue-locator-1',
    storageBucket: 'dengue-locator-1.appspot.com',
    iosClientId:
        '886691144291-9luo00u3hccmer6rlb229fct3ek0i1hk.apps.googleusercontent.com',
    iosBundleId: 'com.example.degueLocator',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyACuTw-ysCFD_9629HI4ZVt3v48FsyxNBY',
    appId: '1:886691144291:ios:219cd7e02e999de3bc8e56',
    messagingSenderId: '886691144291',
    projectId: 'dengue-locator-1',
    storageBucket: 'dengue-locator-1.appspot.com',
    iosClientId:
        '886691144291-9luo00u3hccmer6rlb229fct3ek0i1hk.apps.googleusercontent.com',
    iosBundleId: 'com.example.degueLocator',
  );
}
