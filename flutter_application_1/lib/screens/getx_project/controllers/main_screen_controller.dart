import 'dart:developer';

import 'package:get/get.dart';

class MainScreenController extends GetxController {
  RxInt currentIndex = 0.obs;

  void updateOnTap(int value) {
    currentIndex.value = value;
    log(currentIndex.value.toString());
    update();
  }
}
