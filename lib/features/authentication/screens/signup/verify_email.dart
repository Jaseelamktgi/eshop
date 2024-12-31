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
            child: Column(
              children: [
                // Image
                Image(
                  image: AssetImage(ImgStrings.verifyEmail),
                  width: AppHelperFunctions.screenWidth() * 0.8,
                ),

                // Title & subtitle
                Text(
                  'Verify your email address',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: AppSizes.spaceBtwItems,
                ),

                Text(
                  'john@gmail.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: AppSizes.spaceBtwItems,
                ),

                Text(
                  'Congratulations! Your account is almost ready. Verify your email address to Star Shopping Now',
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: AppSizes.spaceBtwSections,
                ),

                // Button
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () => Get.to(() => SuccessScreen(
                              img: ImgStrings.loginSuccess,
                              title: 'Your account successfully created',
                              subtitle:
                                  'Welcome to our unlimited shopping experience. Your account is created. You can start shopping now.',
                              onPressed: () =>
                                  Get.to(() => const LoginScreen()),
                            )),
                        child: Text('Continue'))),
                SizedBox(
                  height: AppSizes.spaceBtwItems,
                ),

                SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () =>
                            Get.to(() => const VerifyEmailScreen()),
                        child: Text('Resend Email'))),
              ],
            )),
      ),
    );
  }
}
