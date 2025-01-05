import 'package:eshop/common/styles/shadows.dart';
import 'package:eshop/common/widgets/custom_shapes/circular_container.dart';
import 'package:eshop/common/widgets/products/rounded_img.dart';
import 'package:eshop/utils/constants/img_strings.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../icons/rounded_icon.dart';

class Verticalproductcard extends StatelessWidget {
  const Verticalproductcard({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AppHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [AppShadowStyles.verticalProductShadow],
          borderRadius: BorderRadius.circular(AppSizes.productImgRadius),
          color: darkMode ? AppColors.darkerGrey : AppColors.textWhite,
        ),
        child: Column(
          children: [
            // Thumbnail, Discount btn, like btn
            Stack(
              children: [
                // Thumbnail
                RoundedImg(
                  imgUrl: ImgStrings.product1,
                  applyImageRadius: true,
                ),

                // Discount btn
                Positioned(
                  top: 10,
                  left: 5,
                  child: CircularContainer(
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
                ),

                // Like btn
                Positioned(
                  top: 0,
                  right: 0,
                  child: RoundedIcon(
                    width: 40,
                    height: 40,
                    size: AppSizes.iconMd,
                    icon: Iconsax.heart,
                    color: Colors.red,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: AppSizes.spaceBtwItems,
            ),

            // Product Deatils
            Padding(
                padding: const EdgeInsets.only(left: AppSizes.sm),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nike Shoes',
                        style: Theme.of(context).textTheme.bodyMedium,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        textAlign: TextAlign.left,
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
                    ])),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                Padding(
                  padding: const EdgeInsets.only(left: AppSizes.sm),
                  child: Text(
                    '\$120',
                    style: Theme.of(context).textTheme.headlineMedium,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),

                // Add btn
                Container(
                  decoration: BoxDecoration(
                      color: darkMode ? AppColors.dark : AppColors.light,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppSizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(AppSizes.productImgRadius))),
                  child: SizedBox(
                    width: AppSizes.iconLg * 1.2,
                    height: AppSizes.iconLg * 1.2,
                    child: Center(
                        child: Icon(
                      Iconsax.add_circle,
                      color: AppColors.textWhite,
                    )),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
