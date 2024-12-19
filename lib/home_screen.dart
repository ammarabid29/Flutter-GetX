import 'package:flutter/material.dart';
import 'package:flutter_getx/login_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  LoginController loginController = Get.put(
    LoginController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Learning"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: loginController.emailController.value,
              decoration: const InputDecoration(hintText: "Email"),
            ),
            TextFormField(
              controller: loginController.passwordController.value,
              decoration: const InputDecoration(hintText: "Password"),
            ),
            const SizedBox(height: 50),
            Obx(
              () => InkWell(
                onTap: () {
                  loginController.loginApi();
                },
                child: Container(
                  height: 45,
                  color: Colors.grey,
                  child: Center(
                    child: loginController.loading.value
                        ? const CircularProgressIndicator()
                        : const Text("Login"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
