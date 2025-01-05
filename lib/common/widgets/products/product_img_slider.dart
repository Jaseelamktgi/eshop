import 'package:eshop/common/widgets/products/rounded_img.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/img_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_appbar.dart';
import '../custom_shapes/curved_edges_widget.dart';
import '../icons/rounded_icon.dart';

class ProductImgSlider extends StatelessWidget {
  const ProductImgSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return CurvedEdgesWidget(
      child: Container(
        color: dark ? AppColors.grey : AppColors.light,
        child: Stack(
          children: [
            // main image
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(AppSizes.productImgRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(ImgStrings.product2),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            // slider images
            Positioned(
              bottom: 30,
              right: 0,
              left: AppSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: AlwaysScrollableScrollPhysics(),
                    itemBuilder: (_, __) => SizedBox(
                          width: AppSizes.spaceBtwItems,
                        ),
                    separatorBuilder: (_, index) => RoundedImg(
                          imgUrl: ImgStrings.product2,
                          width: 80,
                          padding: EdgeInsets.all(AppSizes.sm),
                          backgroundColor:
                              dark ? AppColors.dark : AppColors.light,
                          border: Border.all(
                            color: AppColors.primary,
                          ),
                        ),
                    itemCount: 5),
              ),
            ),

            // App bar
            CustomAppbar(
              showBackArrow: true,
              actions: [
                RoundedIcon(
                  icon: Iconsax.heart,
                  onPressed: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
