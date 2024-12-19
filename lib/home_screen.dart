import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_getx/image_picker_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ImagePickerController imagePickerController = Get.put(
    ImagePickerController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Learning"),
      ),
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: imagePickerController.imagePath.isNotEmpty
                    ? FileImage(
                        File(imagePickerController.imagePath.toString()))
                    : null,
              ),
            ),
            TextButton(
              onPressed: () {
                imagePickerController.getImage();
              },
              child: const Text("Pick Image"),
            ),
          ],
        ),
      ),
    );
  }
}
