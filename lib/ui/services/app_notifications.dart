import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationsAPI {
  static final _notifications = FlutterLocalNotificationsPlugin();

  static Future _notificationsDetails() async {
    const android = AndroidInitializationSettings('@mipmap/ic_launcher');
    const settings = InitializationSettings(android: android);
    await _notifications.initialize(
      settings,
      onDidReceiveNotificationResponse: (payload) async {}
    );

    return const NotificationDetails(
      android: AndroidNotificationDetails(
        'channel id',
        'channel name',
        importance: Importance.max
      ),
      // iOS: IOSNotificationDetails()
    );
  }
 
  static Future showNotification({
    int id = 0,
    String? title,
    String? body,
    String? payload
  }) async => _notifications.show(
    id,
    title,
    body,
    await _notificationsDetails(),
    payload: payload
  );
}