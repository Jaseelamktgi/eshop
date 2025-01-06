import 'package:eshop/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_appbar.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text('Checkout'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              // Items in cart
              CartItems(showAddRemoveBtns: true),
              SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              // Coupon TextField
              CouponCode(),
              SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              // Billing
            ],
          ),
        ),
      ),
    );
  }
}

class CouponCode extends StatelessWidget {
  const CouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = AppHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Flexible(
            child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Have a coupon code?',
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        )),

        // Apply button
        SizedBox(
          width: 80,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                foregroundColor: darkMode
                    ? AppColors.light.withValues(alpha: 0.5)
                    : AppColors.dark.withValues(alpha: 0.5),
                backgroundColor: AppColors.grey.withValues(alpha: 0.2),
                side: BorderSide(color: AppColors.grey.withValues(alpha: 0.1))),
            child: Text('Apply'),
          ),
        )
      ],
    );
  }
}
