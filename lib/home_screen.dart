import 'package:flutter/material.dart';
import 'package:flutter_getx/counter_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Learning"),
      ),
      body: Center(
        child: Obx(() {
          return Text(
            controller.counter.toString(),
            style: const TextStyle(fontSize: 60),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
