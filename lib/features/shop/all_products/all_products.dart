import 'package:eshop/common/widgets/custom_appbar.dart';
import 'package:eshop/common/widgets/products/grid_layout.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../common/widgets/products/vertical_product_card.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text('All Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              // Dropdowns
              DropdownButtonFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                    Iconsax.sort,
                  )),
                  onChanged: (value) {},
                  items: [
                    'Name',
                    'Price',
                    'Rating',
                    'Popularity',
                    'Date',
                    'Stock',
                    'Brand',
                    'Category',
                    'Color',
                    'Size'
                  ]
                      .map(
                        (option) => DropdownMenuItem(
                          value: option,
                          child: Text(option),
                        ),
                      )
                      .toList()),
              SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              // products
              GridLayout(
                  itemCount: 6,
                  itemBuilder: (_, index) {
                    return Verticalproductcard();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
