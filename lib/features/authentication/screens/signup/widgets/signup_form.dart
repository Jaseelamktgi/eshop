
import 'package:eshop/utils/constants/sizes.dart';
import 'package:eshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Form(
        child: Column(children: [
      // First & last name
      Row(
        children: [
          Expanded(
            child: TextFormField(
                expands: false,
                decoration: InputDecoration(
                  labelText: 'First Name',
                  prefixIcon: Icon(Iconsax.user),
                )),
          ),
          SizedBox(width: AppSizes.spaceBtwItems),
          Expanded(
            child: TextFormField(
                expands: false,
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  prefixIcon: Icon(Iconsax.user),
                )),
          ),
        ],
      ),
      SizedBox(height: AppSizes.spaceBtwInputFields),

      // Username
      TextFormField(
          expands: false,
          decoration: InputDecoration(
            labelText: 'Username',
            prefixIcon: Icon(Iconsax.user_edit),
          )),
      SizedBox(height: AppSizes.spaceBtwInputFields),

      // Email
      TextFormField(
          expands: false,
          decoration: InputDecoration(
            labelText: 'Email',
            prefixIcon: Icon(Iconsax.direct),
          )),
      SizedBox(height: AppSizes.spaceBtwInputFields),

      //Phone number
      TextFormField(
          expands: false,
          decoration: InputDecoration(
            labelText: 'Phone Number',
            prefixIcon: Icon(Iconsax.call),
          )),
      SizedBox(height: AppSizes.spaceBtwInputFields),

      // Password
      TextFormField(
          expands: false,
          decoration: InputDecoration(
            labelText: 'Password',
            suffixIcon: Icon(Iconsax.eye_slash),
            prefixIcon: Icon(Iconsax.password_check),
          )),
      SizedBox(height: AppSizes.spaceBtwItems),

      // Term & conditions Checkbox
      Row(
        children: [
          SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(
              value: false,
              onChanged: (value) {},
            ),
          ),
          SizedBox(width: AppSizes.spaceBtwItems),
          RichText(
              text: TextSpan(
                  text: 'I agree to  ',
                  style: Theme.of(context).textTheme.labelSmall,
                  children: [
                TextSpan(
                  text: 'Privacy Policy',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(color: Colors.blue),
                ),
                TextSpan(
                  text: ' and ',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                TextSpan(
                  text: 'Terms of use',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(color: Colors.blue),
                ),
              ]))
        ],
      ),
      SizedBox(height: AppSizes.spaceBtwSections),

      // Signup Button
      SizedBox(
          width: double.infinity,
          child: ElevatedButton(onPressed: () {}, child: Text('Sign Up'))),
      SizedBox(height: AppSizes.spaceBtwSections),
    ]));
  }
}
