import 'package:flutter/material.dart';
import 'package:flutter_getx/opacity_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  OpacityController opacityController = Get.put(OpacityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Learning"),
      ),
      body: Column(
        children: [
          Obx(
            () => Container(
              height: 200,
              width: 200,
              color: Colors.red.withOpacity(opacityController.opacity.value),
            ),
          ),
          Obx(
            () => Slider(
              value: opacityController.opacity.value,
              onChanged: (value) {
                opacityController.setOpaacity(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
