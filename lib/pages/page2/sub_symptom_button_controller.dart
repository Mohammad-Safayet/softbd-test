import 'package:get/get.dart';

class SubSymptomButtonController extends GetxController {
  final isButtonSelected = false.obs;

  void select() {
    isButtonSelected.value = true;
  }

  void deselct() {
    isButtonSelected.value = false;
  }
}