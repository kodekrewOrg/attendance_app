// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'package:flutter_dotenv/flutter_dotenv.dart';

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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for android - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static FirebaseOptions web = FirebaseOptions(
    apiKey: dotenv.get('WEB_API_KEY'),
    appId: dotenv.get('WEB_APP_ID'),
    messagingSenderId: dotenv.get('WEB_MESSAGING_SENDER_ID'),
    projectId: dotenv.get('WEB_PROJECT_ID'),
    authDomain: dotenv.get('WEB_AUTH_DOMAIN'),
    storageBucket: dotenv.get('WEB_STORAGE_BUCKET'),
  );

  static FirebaseOptions macos = FirebaseOptions(
    apiKey: dotenv.get('MACOS_API_KEY'),
    appId: dotenv.get("MACOS_APP_ID"),
    messagingSenderId: dotenv.get('MACOS_MESSAGING_SENDER_ID'),
    projectId: dotenv.get('MACOS_PROJECT_ID'),
    storageBucket: dotenv.get('MACOS_STORAGE_BUCKET'),
    iosClientId: dotenv.get('MACOS_IOS_CLIENT_ID'),
    iosBundleId: dotenv.get('MACOS_IOS_BUNDLE_ID'),
  );
}