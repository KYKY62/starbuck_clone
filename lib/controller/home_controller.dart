import 'package:get/get.dart';

class HomeController extends GetxController {
  var currentTab = 0.obs;

  current(int value) {
    currentTab.value = value;
  }
}
