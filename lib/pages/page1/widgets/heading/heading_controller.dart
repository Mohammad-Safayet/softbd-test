import 'package:get/get.dart';

class HeadingController extends GetxController {
  final activeCard = 0.obs;

  void onCardClick(int index) {
    activeCard.value = index;
  }
}