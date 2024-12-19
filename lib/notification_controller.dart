import 'package:get/get.dart';

class NotificationsController extends GetxController {
  RxBool notifications = false.obs;

  setNotifications(bool value) {
    notifications.value = value;
  }
}
