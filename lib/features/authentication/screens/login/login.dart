import 'package:eshop/common/styles/spacing_styles.dart';
import 'package:eshop/common/widgets/login_signup/form_divider.dart';
import 'package:eshop/features/authentication/screens/login/widgets/login_form.dart';
import 'package:eshop/features/authentication/screens/login/widgets/login_header.dart';
import 'package:eshop/common/widgets/login_signup/social_btns.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: AppSpacingStyles.paddingWithAppbarHeight,
            child: Column(
              children: [
                // Logo, title & subtitle
                LoginHeader(),

                // Login form
                LoginForm(),

                // Divider
                LoginDivider(text: 'Or Sign In With',),

                SizedBox(
                  height: AppSizes.spaceBtwSections,
                ),

                // Social icons
                SocialIcons()
              ],
            )),
      ),
    );
  }
}
