import 'package:eshop/common/widgets/icons/rounded_icon.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class BottomAddtocart extends StatelessWidget {
  const BottomAddtocart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Container(
      decoration: BoxDecoration(
          color: dark ? AppColors.darkerGrey : AppColors.light,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(AppSizes.cardRadiusLg),
            topRight: Radius.circular(AppSizes.cardRadiusLg),
          )),
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.sm),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                // -
                RoundedIcon(
                  icon: Iconsax.minus,
                  backgroundColor: AppColors.darkerGrey,
                  width: 40,
                  height: 40,
                  color: AppColors.textWhite,
                ),
                SizedBox(
                  width: AppSizes.spaceBtwItems,
                ),
                Text(
                  '2',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                SizedBox(
                  width: AppSizes.spaceBtwItems,
                ),

                // +
                RoundedIcon(
                  icon: Iconsax.add,
                  backgroundColor: AppColors.dark,
                  width: 40,
                  height: 40,
                  color: AppColors.textWhite,
                ),
                SizedBox(
                  width: AppSizes.spaceBtwItems,
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(AppSizes.md),
                  backgroundColor: AppColors.dark,
                  side: BorderSide(color: AppColors.dark),
                ),
                child: Text(
                  'Add to cart',
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
          ],
        ),
      ),
    );
  }
}
