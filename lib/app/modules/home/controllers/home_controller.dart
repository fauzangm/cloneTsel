import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  var currentIndex = 0.obs;

  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
