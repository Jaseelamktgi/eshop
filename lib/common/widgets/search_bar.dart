import 'package:eshop/utils/constants/colors.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:eshop/utils/device/device_utlity.dart';
import 'package:eshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar(
      {super.key,
      required this.text,
      this.icon = Iconsax.search_normal_1_copy,
      this.showBackground = true,
      this.showBorder = false,
      this.padding =
          const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
      this.onTap});

  final String text;
  final IconData icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final darkMode = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: DeviceUtility.getScreenWidth(context),
          padding: const EdgeInsets.all(AppSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? darkMode
                    ? AppColors.dark
                    : AppColors.textWhite
                : Colors.transparent,
            border: showBorder ? Border.all(color: AppColors.grey) : null,
            borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: darkMode ? AppColors.grey : AppColors.darkerGrey,
              ),
              const SizedBox(
                width: AppSizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall!.apply(
                    color: darkMode ? AppColors.grey : AppColors.darkerGrey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
