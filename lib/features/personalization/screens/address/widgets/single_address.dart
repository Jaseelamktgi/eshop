import 'package:eshop/common/widgets/custom_shapes/circular_container.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final darkMode = AppHelperFunctions.isDarkMode(context);
    return CircularContainer(
      height: 140,
      borderRadius: 20,
      width: double.infinity,
      showBorder: true,
      padding: EdgeInsets.all(AppSizes.md),
      backgroundColor: selectedAddress
          ? AppColors.primary.withValues(alpha: 0.1)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : darkMode
              ? AppColors.darkerGrey
              : AppColors.grey,
      margin: EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 5,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle : null,
              color: selectedAddress
                  ? darkMode
                      ? AppColors.light
                      : AppColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('John Doe',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge),
              SizedBox(
                height: AppSizes.sm / 2,
              ),
              Text(
                '+91 1234-567-890',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: AppSizes.sm / 2,
              ),
              Text(
                '123, Street, City, Pincode',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          )
        ],
      ),
    );
  }
}
