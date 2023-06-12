import 'package:get/get.dart';
import 'package:starbuck_clone/bindings/onboarding_b.dart';
import 'package:starbuck_clone/routes/routes.dart';
import 'package:starbuck_clone/view/intro/intro_page.dart';
import 'package:starbuck_clone/view/onboarding/onboarding_page.dart';
import 'package:starbuck_clone/view/sign_up/signup_page.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.onboarding,
      page: () => OnboardingPage(),
      binding: OnboardingB(),
    ),
    GetPage(
      name: Routes.intro,
      page: () => const IntroPage(),
    ),
    GetPage(
      name: Routes.signup,
      page: () => const SignUpPage(),
    ),
  ];
}
