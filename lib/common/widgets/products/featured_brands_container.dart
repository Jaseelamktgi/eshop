import 'package:eshop/common/widgets/products/circular_img.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/img_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/circular_container.dart';

class FeaturedBrandsContainer extends StatelessWidget {
  const FeaturedBrandsContainer({super.key, this.child, this.height = 70});

  final double? height;
  final List<Widget>? child;

  @override
  Widget build(BuildContext context) {
    return CircularContainer(
      height: height,
      borderRadius: AppSizes.cardRadiusLg,
      showBorder: true,
      backgroundColor: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Flexible(
                child: CircularImg(
                    image: ImgStrings.clothIcon,
                    isNetworkImg: false,
                    backgroundColor: Colors.transparent,
                    overlayColor: AppHelperFunctions.isDarkMode(context)
                        ? AppColors.light
                        : AppColors.dark),
              ),

              // Brand name
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Nike',
                          style: Theme.of(context).textTheme.headlineSmall,
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
                    Text(
                      '256 products and other',
                      style: Theme.of(context).textTheme.labelSmall,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
            ],
          ),

          // Extra widgets
          if (child != null) ...?child,
        ],
      ),
    );
  }
}
