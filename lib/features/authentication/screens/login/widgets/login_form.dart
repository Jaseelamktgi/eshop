
import 'package:eshop/features/authentication/screens/signup/signup.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
        child: Column(children: [
          // Email
          TextFormField(
              decoration: InputDecoration(
            labelText: 'Email',
            prefixIcon: Icon(Iconsax.direct_right),
          )),
          SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),

          // Password
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Password',
              suffixIcon: Icon(Iconsax.eye_slash),
              prefixIcon: Icon(Iconsax.password_check),
            ),
          ),
          SizedBox(
            height: AppSizes.spaceBtwInputFields / 2,
          ),

          // Remember me & forgot password
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Checkbox(value: true, onChanged: (value) {}),
            Text('Remember Me'),
            Spacer(),
            TextButton(onPressed: () {}, child: Text('Forget Password?')),
          ]),

          SizedBox(
            height: AppSizes.spaceBtwSections,
          ),

          // Sign in button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: Text('Sign In'))),

          SizedBox(
            height: AppSizes.spaceBtwItems,
          ),

          // Create account button
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(() => const SignupScreen()), child: Text('Create Account'))),
        ]),
      ),
    );
  }
}
