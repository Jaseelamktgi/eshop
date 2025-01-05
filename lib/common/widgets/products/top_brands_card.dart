import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/circular_container.dart';
import 'featured_brands_container.dart';

class TopBrandsCard extends StatelessWidget {
  final List<String> imageUrls;

  const TopBrandsCard({
    super.key,
    required this.imageUrls,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = AppHelperFunctions.isDarkMode(context);
    return FeaturedBrandsContainer(
      height: 200,
      child: [
        SizedBox(
          height: AppSizes.spaceBtwItems,
        ),
        Row(
          children: imageUrls.map((url) {
            return Expanded(
              child: CircularContainer(
                borderRadius: AppSizes.cardRadiusSm,
                height: 100,
                backgroundColor: darkMode ? AppColors.dark : AppColors.light,
                margin: EdgeInsets.only(right: AppSizes.sm, left: AppSizes.sm),
                padding: EdgeInsets.all(AppSizes.md),
                child: Image(
                  image: AssetImage(url),
                  fit: BoxFit.contain,
                ),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
