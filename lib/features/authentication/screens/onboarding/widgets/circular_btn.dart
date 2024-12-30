import 'package:eshop/features/authentication/controllers/onboarding.dart';
import 'package:eshop/utils/constants/colors.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:eshop/utils/device/device_utlity.dart';
import 'package:eshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class OnBoardingCircularBtn extends StatelessWidget {
  const OnBoardingCircularBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
          final dark = AppHelperFunctions.isDarkMode(context);

    return Positioned(
        right: AppSizes.defaultSpace,
        bottom: DeviceUtility.getKeyBoardHeight() + 30,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: dark ? AppColors.primary : AppColors.black,
            ),
            onPressed: () {
              OnboardingController.instace.nextPage();
            },
            child: Icon(Iconsax.arrow_right_2)));
  }
}