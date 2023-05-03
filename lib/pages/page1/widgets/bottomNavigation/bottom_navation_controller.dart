import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  final activeIndex = 0.obs;

  void changeIndex(int index) {
    activeIndex.value = index;
  }
}