import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:get/get.dart';
import 'package:starbuck_clone/view/onboarding/controller/onboarding_controller.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({super.key});
  final onboardingC = Get.find<OnboardingController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff131010),
        body: Swiper(
          loop: false,
          itemBuilder: (BuildContext context, int index) {
            return onboardingC.imageBoarding[index];
          },
          itemCount: onboardingC.imageBoarding.length,
          pagination: SwiperCustomPagination(
            builder: (BuildContext context, SwiperPluginConfig config) {
              return Align(
                alignment: Alignment.topCenter,
                child: DotsIndicator(
                  dotsCount: config.itemCount,
                  position: config.activeIndex,
                  decorator: const DotsDecorator(
                    // Atur tampilan dots sesuai kebutuhan Anda
                    color: Colors.white,
                    activeColor: Color(0xff006241),
                  ),
                ),
              );
            },
          ),
          // control: const swiper(),
        ),
      ),
    );
  }
}
// 'Halaman ${config.activeIndex + 1} dari ${config.itemCount}',