import 'package:eshop/common/widgets/login_signup/form_divider.dart';
import 'package:eshop/common/widgets/login_signup/social_btns.dart';
import 'package:eshop/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // Title
            Text(
              "Let's create your account",
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            SizedBox(height: AppSizes.spaceBtwSections),

            // Form
            SignupForm(),

            // Divider
            LoginDivider(
              text: 'Or Sign Up With',
            ),
            SizedBox(height: AppSizes.spaceBtwSections),

            // Social icons
            SocialIcons()
          ]),
        ),
      ),
    );
  }
}
