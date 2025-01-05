import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../custom_shapes/circular_container.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Discount and Price
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircularContainer(
              width: 40,
              height: 25,
              borderRadius: AppSizes.sm,
              backgroundColor: AppColors.secondary.withValues(alpha: 0.8),
              padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.sm, vertical: AppSizes.xs),
              child: Text('25%',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: AppColors.black)),
            ),
            SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            Text(
              '\$20.00 ',
              style: Theme.of(context).textTheme.titleSmall!.apply(
                  decoration: TextDecoration.lineThrough, fontWeightDelta: 2),
            ),
            SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            Text(
              '\$35.00',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .apply(fontWeightDelta: 2, fontSizeDelta: 5),
            ),
          ],
        ),
        SizedBox(
          height: AppSizes.spaceBtwItems,
        ),

        // Product Name
        Text('Black T-Shirt', style: Theme.of(context).textTheme.bodyLarge!),
        SizedBox(
          height: AppSizes.spaceBtwItems / 1.5,
        ),

        // Status
        Row(
          children: [
            Text('Status : ', style: Theme.of(context).textTheme.bodyMedium),
            Text(' In Stock', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(
          height: AppSizes.spaceBtwItems / 1.5,
        ),

        // Brand
        Row(
          children: [
            Text(
              'Nike',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(fontWeightDelta: 2),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            Icon(
              Iconsax.verify,
              color: AppColors.primary,
              size: AppSizes.iconXs,
            ),
          ],
        ),
        SizedBox(
          height: AppSizes.spaceBtwSections,
        ),
      ],
    );
  }
}
