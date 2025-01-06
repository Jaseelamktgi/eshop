import 'package:eshop/features/shop/screens/cart/cart.dart';
import 'package:eshop/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custom_appbar.dart';
import '../../../../../common/widgets/products/cart_count.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome to Eshop",
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: AppColors.grey),
          ),
          Text(
            "Adam Smith",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: Colors.white),
          )
        ],
      ),
      actions: [
        CartCounterIcon(
          onPressed: () => Get.to(() => const CartScreen()),
          iconColor: AppColors.textWhite,
          badgeColor: AppColors.dark.withValues(alpha: 0.5),
        ),
      ],
    );
  }
}
