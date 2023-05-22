import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> imageBoarding = [
      Image.asset(
        'assets/boarding1.png',
        fit: BoxFit.cover,
      ),
      Image.asset(
        'assets/boarding2.png',
        fit: BoxFit.cover,
      ),
      Image.asset(
        'assets/boarding3.png',
        fit: BoxFit.cover,
      ),
      Stack(
        children: [
          Image.asset(
            'assets/boarding4.png',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: GestureDetector(
              onTap: () {},
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Finish",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff131010),
        body: Swiper(
          loop: false,
          itemBuilder: (BuildContext context, int index) {
            return imageBoarding[index];
          },
          itemCount: imageBoarding.length,
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