import 'package:eshop/utils/constants/sizes.dart';
import 'package:eshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class Reset extends StatelessWidget {
  final String img, title, email, subtitle,elavatedBtnText, outlinedText;
  VoidCallback elevatedOnpressed, outlineOnPressed;

   Reset({
    super.key,
    required this.img,
    required this.title,
    required this.email,
    required this.subtitle,
    required this.elavatedBtnText,
    required this.elevatedOnpressed,
    required this.outlinedText,
    required this.outlineOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Image
        Image(
          image: AssetImage(img),
          width: AppHelperFunctions.screenWidth() * 0.8,
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
          email,
          style: Theme.of(context).textTheme.labelLarge,
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
                onPressed: elevatedOnpressed, child: Text(elavatedBtnText))),
        SizedBox(
          height: AppSizes.spaceBtwItems,
        ),

        SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed: outlineOnPressed,
                child: Text(outlinedText))),
      ],
    );
  }
}
