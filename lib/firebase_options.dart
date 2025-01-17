// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyC9K3nYvXalu7rpwp506mUY924m6S6L2gw',
    appId: '1:845175140458:web:eb5598f8aad93b7d249a13',
    messagingSenderId: '845175140458',
    projectId: 'foody-b9f94',
    authDomain: 'foody-b9f94.firebaseapp.com',
    storageBucket: 'foody-b9f94.appspot.com',
    measurementId: 'G-QR72YEW27Z',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBAS37HwwrzoiF9l9gHJY3Br0t4Q-2hWB8',
    appId: '1:845175140458:android:c6ba0d6b786e1ca0249a13',
    messagingSenderId: '845175140458',
    projectId: 'foody-b9f94',
    storageBucket: 'foody-b9f94.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBkFZz09xN79C9fm88RsyIQORlstFR17pY',
    appId: '1:845175140458:ios:cf61c3f502e8a594249a13',
    messagingSenderId: '845175140458',
    projectId: 'foody-b9f94',
    storageBucket: 'foody-b9f94.appspot.com',
    iosBundleId: 'com.example.foody',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBkFZz09xN79C9fm88RsyIQORlstFR17pY',
    appId: '1:845175140458:ios:cf61c3f502e8a594249a13',
    messagingSenderId: '845175140458',
    projectId: 'foody-b9f94',
    storageBucket: 'foody-b9f94.appspot.com',
    iosBundleId: 'com.example.foody',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC9K3nYvXalu7rpwp506mUY924m6S6L2gw',
    appId: '1:845175140458:web:229cb1ff60beac72249a13',
    messagingSenderId: '845175140458',
    projectId: 'foody-b9f94',
    authDomain: 'foody-b9f94.firebaseapp.com',
    storageBucket: 'foody-b9f94.appspot.com',
    measurementId: 'G-FF390K33YW',
  );
}
