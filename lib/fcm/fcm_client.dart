import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

class FCMClient {
  FCMClient._();

  static bool isInit = false;

  String? token;
  RemoteMessage? initialMessage;

  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> init() async {
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
  }
}
