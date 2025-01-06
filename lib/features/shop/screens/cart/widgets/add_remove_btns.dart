
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../common/widgets/icons/rounded_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class AddRemoveButtons extends StatelessWidget {
  const AddRemoveButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = AppHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        RoundedIcon(
          icon: Iconsax.add,
          width: 40,
          height: 40,
          size: AppSizes.md,
          color: darkMode ? AppColors.light : AppColors.dark,
          backgroundColor: darkMode ? AppColors.darkerGrey : AppColors.light,
        ),
        const SizedBox(
          width: AppSizes.spaceBtwItems,
        ),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(
          width: AppSizes.spaceBtwItems,
        ),
        RoundedIcon(
          icon: Iconsax.minus,
          width: 40,
          height: 40,
          size: AppSizes.md,
          color: darkMode ? AppColors.light : AppColors.dark,
          backgroundColor: darkMode ? AppColors.primary : AppColors.light,
        ),
      ],
    );
  }
}
