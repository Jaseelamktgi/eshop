import 'package:eshop/common/widgets/section_heading.dart';
import 'package:eshop/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../utils/constants/sizes.dart';

class BillingAddress extends StatelessWidget {
  const BillingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(
          titleTxt: 'Shipping Address',
          showActionBtn: true,
          btnTxt: 'Change',
          onPressed: () {},
        ),
        Text(
          'Adam Smith',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems / 2,
        ),

        Row(
          children: [
            const Icon(
              Iconsax.call,
              size: 16,
              color: AppColors.grey,
            ),
            const SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            Text(
              '+1 234 567 890',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Iconsax.location,
              size: 16,
              color: AppColors.grey,
            ),
            const SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            Expanded(
              child: Text(
                '1234 Main St, Anytown, USA',
                style: Theme.of(context).textTheme.bodyMedium,
                softWrap: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
