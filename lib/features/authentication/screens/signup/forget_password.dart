import 'package:eshop/features/authentication/screens/signup/reset_password.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Forget Password',
                style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(
              height: AppSizes.sm,
            ),
            Text(
                "Don't worry! It occurs. Please enter the email address associated with your account and we will email you a link to reset your password.",
                style: Theme.of(context).textTheme.bodyMedium),
            SizedBox(
              height: AppSizes.spaceBtwSections *2,
            ),

            TextFormField(
              decoration: InputDecoration(
            labelText: 'Email',
            prefixIcon: Icon(Iconsax.direct_right),
          )),
          SizedBox(
              height: AppSizes.spaceBtwSections ,
            ),

          SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () => Get.to(() => const ResetPassword()) , child: Text('Submit'))),

          ],
        ),
      ),
    );
  }
}
