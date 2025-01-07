import 'package:eshop/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:eshop/features/shop/screens/checkout/widgets/billing_payment.dart';
import 'package:eshop/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:eshop/features/shop/screens/checkout/widgets/payment_success.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/custom_appbar.dart';
import '../../../../common/widgets/custom_shapes/circular_container.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppbar(
        title: Text('Order Review'),
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
              CircularContainer(
                  showBorder: true,
                  borderColor: darkMode ? AppColors.dark : AppColors.light,
                  child: Column(
                    children: [
                      // Pricing
                      BillingAmountSection(),
                      const SizedBox(
                        height: AppSizes.spaceBtwItems,
                      ),

                      // Divider
                      Divider(),
                      const SizedBox(
                        height: AppSizes.spaceBtwItems,
                      ),

                      // Payment methods
                      BillingPayment(),
                      const SizedBox(
                        height: AppSizes.spaceBtwItems,
                      ),

                      // Address
                    ],
                  )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => const PaymentSuccessScreen()),
          child: Text('Checkout ₹1000.00'),
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
