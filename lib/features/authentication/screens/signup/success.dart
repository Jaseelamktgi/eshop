import 'package:eshop/utils/constants/sizes.dart';
import 'package:eshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  SuccessScreen(
      {super.key,
      required this.img,
      required this.title,
      required this.subtitle,
      required this.onPressed});

  final String img, title, subtitle;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              children: [
                // Image
                Image(
                  image: AssetImage(img),
                  width: AppHelperFunctions.screenWidth() * 0.8,
                  height: AppHelperFunctions.screenHeight()* 0.4,
                ),

                // Title & subtitle
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: AppSizes.spaceBtwItems,
                ),

                Text(
                  subtitle,
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
                        onPressed: onPressed, child: Text('Continue'))),
                SizedBox(
                  height: AppSizes.spaceBtwItems,
                ),
              ],
            )),
      ),
    );
  }
}
