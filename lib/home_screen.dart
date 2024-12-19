import 'package:flutter/material.dart';
import 'package:flutter_getx/favorite_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FavoriteController favoriteController = Get.put(
    FavoriteController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Learning"),
      ),
      body: ListView.builder(
        itemCount: favoriteController.fruitsList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                if (favoriteController.tempFruitsList
                    .contains(favoriteController.fruitsList[index])) {
                  favoriteController
                      .removeFromFavorite(favoriteController.fruitsList[index]);
                } else {
                  favoriteController
                      .addToFavorite(favoriteController.fruitsList[index]);
                }
              },
              title: Text(favoriteController.fruitsList[index]),
              trailing: Obx(
                () => Icon(
                  Icons.favorite,
                  color: favoriteController.tempFruitsList
                          .contains(favoriteController.fruitsList[index])
                      ? Colors.red
                      : Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
