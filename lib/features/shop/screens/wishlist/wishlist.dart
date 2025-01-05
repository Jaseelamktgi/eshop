import 'package:eshop/common/widgets/custom_appbar.dart';
import 'package:eshop/common/widgets/icons/rounded_icon.dart';
import 'package:eshop/common/widgets/products/grid_layout.dart';
import 'package:eshop/common/widgets/products/verticalProductCard.dart';
import 'package:eshop/features/shop/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constants/sizes.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          RoundedIcon(
            icon: Iconsax.add,
            onPressed: () => (HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              // Wishlist items
              GridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => Verticalproductcard()),
            ],
          ),
        ),
      ),
    );
  }
}
