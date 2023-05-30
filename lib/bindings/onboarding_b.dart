import 'package:get/get.dart';
import 'package:starbuck_clone/view/onboarding/controller/onboarding_controller.dart';

class OnboardingB implements Bindings {
  @override
  void dependencies() {
    Get.put(OnboardingController());
  }
}
