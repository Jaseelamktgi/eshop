import 'package:eshop/features/authentication/controllers/onboarding.dart';
import 'package:eshop/features/authentication/screens/widgets/circular_btn.dart';
import 'package:eshop/features/authentication/screens/widgets/onBoarding_pages.dart';
import 'package:eshop/features/authentication/screens/widgets/skip_btn.dart';
import 'package:eshop/features/authentication/screens/widgets/smooth_indicator.dart';
import 'package:eshop/utils/constants/img_strings.dart';
import 'package:eshop/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(children: [
        // Horizontal scrollable pages
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: [
            OnBoarding(
              img: ImgStrings.onboarding1,
              title: TextStrings.onBoardingTitle1,
              subTitle: TextStrings.onBoardingSubTitle1,
            ),
            OnBoarding(
              img: ImgStrings.onboarding2,
              title: TextStrings.onBoardingTitle2,
              subTitle: TextStrings.onBoardingSubTitle2,
            ),
            OnBoarding(
              img: ImgStrings.onboarding3,
              title: TextStrings.onBoardingTitle3,
              subTitle: TextStrings.onBoardingSubTitle3,
            ),
          ],
        ),

        // Skip btn
        OnBoardingSkipBtn(),

        // Dot Navigation smooth indicator
        OnBoardingSmoothIndicator(),

        // Circular btn
        OnBoardingCircularBtn()
      ]),
    );
  }
}
