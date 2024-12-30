import 'package:eshop/features/authentication/controllers/onboarding.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:eshop/utils/device/device_utlity.dart';
import 'package:flutter/material.dart';

class OnBoardingSkipBtn extends StatelessWidget {
  const OnBoardingSkipBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: DeviceUtility.getAppBarHeight(),
      right: AppSizes.defaultSpace,
      child: TextButton(onPressed: () => OnboardingController.instace.skipPage(), child: Text('Skip')),
    );
  }
}