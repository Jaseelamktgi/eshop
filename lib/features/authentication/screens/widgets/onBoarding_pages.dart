import 'package:eshop/utils/constants/sizes.dart';
import 'package:eshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class OnBoarding extends StatelessWidget {
  const OnBoarding({
    super.key,
    required this.img,
    required this.title,
    required this.subTitle,
  });

  final String img, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.defaultSpace),
      child: Column(children: [
        Image(
          image: AssetImage(img),
          height: AppHelperFunctions.screenHeight() * 0.6,
          width: AppHelperFunctions.screenWidth() * 0.6,
        ),
        Text(title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center),
        SizedBox(
          height: AppSizes.spaceBtwItems,
        ),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
