import 'package:flutter/material.dart';
import 'package:flutter_getx/screen_one.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Learning"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Get.to(
                  () => const ScreenOne(name: "Ammar"),
                );
              },
              child: const Text("Go to next screen"),
            ),
          ),
        ],
      ),
    );
  }
}
