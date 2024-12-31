import 'package:eshop/common/widgets/login_signup/reset.dart';
import 'package:eshop/features/authentication/screens/signup/verify_email.dart';
import 'package:eshop/utils/constants/img_strings.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Reset(
            img: ImgStrings.resetPassword,
            title: 'Password Reset Email Sent',
            email: 'john@gmail.com',
            subtitle:
                'Your Account Security is Our Priority! We have Send You a Secure Link  to Saftely Change Your Password and Keep Your Account Safe',
            elavatedBtnText: 'Done',
            elevatedOnpressed: () => Get.to(() => const VerifyEmailScreen()),
            outlinedText: 'Resend Email',
            outlineOnPressed: () => Get.to(() => const VerifyEmailScreen())),
      ),
    );
  }
}
