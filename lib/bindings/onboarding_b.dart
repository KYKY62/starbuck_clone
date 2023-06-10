import 'package:get/get.dart';
import 'package:starbuck_clone/controller/onboarding_controller.dart';

class OnboardingB implements Bindings {
  @override
  void dependencies() {
    Get.put(OnboardingController());
  }
}
