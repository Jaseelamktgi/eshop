import 'package:eshop/common/widgets/custom_appbar.dart';
import 'package:eshop/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:eshop/features/shop/screens/checkout/checkout.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text('Cart'),
        showBackArrow: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: CartItems(showAddRemoveBtns: true),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => const CheckoutScreen()),
          child: Text('Checkout ₹1000.00'),
        ),
      ),
    );
  }
}
