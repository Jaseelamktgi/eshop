import 'package:eshop/features/authentication/controllers/onboarding.dart';
import 'package:eshop/utils/constants/colors.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:eshop/utils/device/device_utlity.dart';
import 'package:eshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingSmoothIndicator extends StatelessWidget {
  const OnBoardingSmoothIndicator({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
      final dark = AppHelperFunctions.isDarkMode(context);
      final controller = OnboardingController.instace;

    return Positioned(
        bottom: DeviceUtility.getBottomNavigationBarHeight() + 48,
        left: AppSizes.defaultSpace,
        child: SmoothPageIndicator(
            controller:controller.pageController,
            onDotClicked: controller.dotNavigationClick,
            count: 3,
            effect: ExpandingDotsEffect(
                activeDotColor: dark ? AppColors.light : AppColors.black,
                dotHeight: 6)));
  }
}