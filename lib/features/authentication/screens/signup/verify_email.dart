import 'package:eshop/common/widgets/login_signup/reset.dart';
import 'package:eshop/features/authentication/screens/login/login.dart';
import 'package:eshop/features/authentication/screens/signup/success.dart';
import 'package:eshop/utils/constants/img_strings.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:eshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => LoginScreen()),
              icon: Icon(Icons.close))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(AppSizes.defaultSpace),
            child: Reset(
                img: ImgStrings.verifyEmail,
                title: 'Verify your email address',
                email: 'john@gmail.com',
                subtitle:
                    'Congratulations! Your account is almost ready. Verify your email address to Star Shopping Now',
                    elavatedBtnText: 'Continue',
                elevatedOnpressed: () => Get.to(() => SuccessScreen(
                      img: ImgStrings.loginSuccess,
                      title: 'Your account successfully created',
                      subtitle:
                          'Welcome to our unlimited shopping experience. Your account is created. You can start shopping now.',
                      onPressed: () => Get.to(() => const LoginScreen()),
                    )),
                    outlinedText: 'Resend Email',
                outlineOnPressed: () => Get.to(() => const VerifyEmailScreen()))),
      ),
    );
  }
}
