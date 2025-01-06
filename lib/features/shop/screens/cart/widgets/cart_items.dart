import 'package:eshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../common/widgets/products/rounded_img.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/img_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final darkMode = AppHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        // Image
        RoundedImg(
          imgUrl: ImgStrings.product2,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(AppSizes.sm),
          backgroundColor: darkMode ? AppColors.dark : AppColors.light,
        ),
        SizedBox(
          width: AppSizes.spaceBtwItems,
        ),

        // Title, Price, Size
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
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
              Flexible(
                  child: Text(
                'Black Shirt',
                style: Theme.of(context).textTheme.bodyMedium,
              )),

              // Attributes
              Text.rich(TextSpan(children: [
                TextSpan(
                  text: 'Size: ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: 'L ',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                TextSpan(
                  text: ' Color: ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: 'Black',
                  style: Theme.of(context).textTheme.bodyLarge,
                )
              ]))
            ],
          ),
        )
      ],
    );
  }
}
