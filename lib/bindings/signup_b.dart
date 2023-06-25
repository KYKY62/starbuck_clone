import 'package:get/get.dart';
import 'package:starbuck_clone/controller/signup_controller.dart';

class SignUpB implements Bindings {
  @override
  void dependencies() {
    Get.put(SignUpController());
  }
}
