import 'package:get/get.dart';

class FavoriteController extends GetxController {
  RxList<String> fruitsList = ["Orange", "Banana", "Apple", "Mango"].obs;
  RxList tempFruitsList = [].obs;

  addToFavorite(String value) {
    tempFruitsList.add(value);
  }

  removeFromFavorite(String value) {
    tempFruitsList.remove(value);
  }
}
