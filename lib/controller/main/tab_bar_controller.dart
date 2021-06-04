import 'package:get/get.dart';

class TabBarController extends GetxController {
  int currentIndex = 0;
  void changePage(int index) {
    if (index != currentIndex) {
      currentIndex = index;
      update();
    }
  }
}
