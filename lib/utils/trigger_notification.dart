import 'package:awesome_notifications/awesome_notifications.dart';

class Notificationz {
  showNotification(String title, String body) {
    AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 10, 
        title: title,
        channelKey: 'basic_channel',
        body: body,
        )
    );
  }
}
