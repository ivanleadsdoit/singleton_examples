import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:synchronized/synchronized.dart';

class FCMClient {
  FCMClient._();

  static bool isInit = false;

  /// Use synchronized to lock FCM initialization.
  /// Sometimes init() can be called several times in a row when internet
  /// connection is unstable
  final _fCMLock = Lock();

  final _firebaseMessaging = FirebaseMessaging.instance;

  String? token;
  RemoteMessage? initialMessage;

  Future<void> init() {
    return _fCMLock.synchronized(() async {
      if (!isInit) {
        token = await _firebaseMessaging.getToken();
        debugPrint('fcm token: $token');
      }
      await _firebaseMessaging.requestPermission();

      initialMessage = await _firebaseMessaging.getInitialMessage();
      if (initialMessage != null) {
        debugPrint(
          'initialMessage: title ${initialMessage?.notification?.title}, '
          'body: ${initialMessage?.notification?.body}',
        );
      }

      isInit = true;
    });
  }
}
