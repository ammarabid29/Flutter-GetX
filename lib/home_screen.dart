import 'package:flutter/material.dart';
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
        title: const Text("GetX"),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text("GetX Dialog Alert"),
              subtitle: const Text("GetX dialog alert with GetX"),
              onTap: () {
                Get.defaultDialog(
                  title: "Delete Chat",
                  titlePadding: const EdgeInsets.only(top: 20),
                  contentPadding: const EdgeInsets.all(20),
                  middleText: "Are you sure you want to delete this chat?",
                  // content: const Column(
                  //   children: [
                  //     Text("data"),
                  //     Text("data"),
                  //     Text("data"),
                  //     Text("data"),
                  //     Text("data"),
                  //     Text("data"),
                  //     Text("data"),
                  //     Text("data"),
                  //     Text("data"),
                  //     Text("data"),
                  //     Text("data")
                  //   ],
                  // ),
                  cancel: TextButton(
                    onPressed: () {},
                    child: const Text("Cancel"),
                  ),
                  confirm: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text("Ok"),
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("GetX Bottom Sheet"),
              subtitle: const Text("GetX bottom sheet with GetX"),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.light_mode),
                          title: const Text("Light Theme"),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.dark_mode),
                          title: const Text("Dark Theme"),
                          onTap: () {
                            Get.changeTheme(
                              ThemeData.dark(),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Get.snackbar(
            "Ammar Abid",
            "Hello",
            icon: const Icon(Icons.add),
            colorText: Colors.white,
            backgroundColor: Colors.black,
            snackPosition: SnackPosition.BOTTOM,
            mainButton: TextButton(
              onPressed: () {},
              child: const Text("Click"),
            ),
          );
        },
      ),
    );
  }
}
