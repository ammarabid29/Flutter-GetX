import 'package:flutter/material.dart';
import 'package:flutter_getx/notification_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NotificationsController notificationsController = Get.put(
    NotificationsController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Learning"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Notifications"),
              Obx(
                () => Switch(
                  value: notificationsController.notifications.value,
                  onChanged: (value) {
                    notificationsController.setNotifications(value);
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
