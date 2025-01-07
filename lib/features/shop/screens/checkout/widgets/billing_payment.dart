import 'package:eshop/common/widgets/custom_shapes/circular_container.dart';
import 'package:eshop/common/widgets/section_heading.dart';
import 'package:eshop/utils/constants/img_strings.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class BillingPayment extends StatelessWidget {
  const BillingPayment({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        SectionHeading(
          titleTxt: 'Payment Methods',
          showActionBtn: true,
          btnTxt: 'Change',
          onPressed: () {},
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            CircularContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? AppColors.light : AppColors.textWhite,
              padding: EdgeInsets.all(AppSizes.sm),
              child: Image(
                image: AssetImage(ImgStrings.clothIcon),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems / 2,
            ),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge),
          ],
        )
      ],
    );
  }
}
