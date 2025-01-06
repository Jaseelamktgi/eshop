
import 'package:eshop/features/shop/screens/cart/widgets/add_remove_btns.dart';
import 'package:eshop/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
    required this.showAddRemoveBtns,
  });

  final bool showAddRemoveBtns;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (_, __) {
          return Column(
            children: [
              CartItem(),
              if (showAddRemoveBtns)
                const SizedBox(
                  height: AppSizes.spaceBtwSections,
                ),
              if (showAddRemoveBtns)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 70,
                        ),

                        // Add & Remove buttons
                        AddRemoveButtons(),
                      ],
                    ),
                    // Price
                    Text(
                      ' ₹1000.00',
                      style: Theme.of(context).textTheme.titleSmall,
                    )
                  ],
                )
            ],
          );
        },
        separatorBuilder: (_, __) => SizedBox(
              height: AppSizes.spaceBtwSections,
            ),
        itemCount: 4);
  }
}
