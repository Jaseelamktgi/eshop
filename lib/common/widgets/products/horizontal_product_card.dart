import 'package:eshop/common/widgets/custom_shapes/circular_container.dart';
import 'package:eshop/common/widgets/icons/rounded_icon.dart';
import 'package:eshop/common/widgets/products/rounded_img.dart';
import 'package:eshop/utils/constants/img_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../../styles/shadows.dart';

class HorizontalProductCard extends StatelessWidget {
  const HorizontalProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AppHelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        // boxShadow: [AppShadowStyles.verticalProductShadow],
        borderRadius: BorderRadius.circular(AppSizes.productImgRadius),
        color: darkMode ? AppColors.darkerGrey : AppColors.textWhite,
      ),
      child: Row(
        children: [
          // Thumbnail
          CircularContainer(
            height: 120,
            padding: EdgeInsets.all(AppSizes.sm),
            backgroundColor: darkMode ? AppColors.dark : AppColors.light,
            child: Stack(
              children: [
                // Image
                SizedBox(
                  height: 120,
                  width: 120,
                  child: RoundedImg(
                    imgUrl: ImgStrings.product2,
                    fit: BoxFit.contain,
                    applyImageRadius: true,
                  ),
                ),

                // Sale tag
                Positioned(
                  top: 12,
                  child: CircularContainer(
                    borderRadius: AppSizes.sm,
                    backgroundColor: AppColors.secondary.withValues(alpha: 0.8),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppSizes.sm, vertical: AppSizes.xs),
                    child: Text(
                      '25% ',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: AppColors.dark),
                    ),
                  ),
                ),

                // Favourite tag
                Positioned(
                  top: 0,
                  right: 0,
                  child: RoundedIcon(icon: Iconsax.heart, color: Colors.red),
                )
              ],
            ),
          ),

          // Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: EdgeInsets.only(
                top: AppSizes.sm,
                left: AppSizes.sm,
              ),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Black Nike Full Sleeve Shirt',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      SizedBox(
                        height: AppSizes.spaceBtwItems / 2,
                      ),
                      Row(
                        children: [
                          Text(
                            'Nike',
                            style: Theme.of(context).textTheme.labelMedium,
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
                    ],
                  ),

                  const Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Price
                      Flexible(
                        child: Text('\$20.00',
                            style: Theme.of(context).textTheme.titleLarge),
                      ),

                      // Add to cart
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(AppSizes.productImgRadius),
                          ),
                        ),
                        child: SizedBox(
                          width: AppSizes.iconLg * 1.2,
                          height: AppSizes.iconLg * 1.2,
                          child: Center(
                            child:
                                Icon(Iconsax.add, color: AppColors.textWhite),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
