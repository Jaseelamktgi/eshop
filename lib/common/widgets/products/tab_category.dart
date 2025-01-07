import 'package:eshop/common/widgets/products/grid_layout.dart';
import 'package:eshop/common/widgets/products/top_brands_card.dart';
import 'package:eshop/common/widgets/products/vertical_product_card.dart';
import 'package:eshop/common/widgets/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/img_strings.dart';
import '../../../utils/constants/sizes.dart';

class TabCategory extends StatelessWidget {
  const TabCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              // Brands
              TopBrandsCard(imageUrls: [
                ImgStrings.product2,
                ImgStrings.product2,
                ImgStrings.product2,
              ]),
              SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              // Products

              SectionHeading(
                titleTxt: 'You might like',
                showActionBtn: true,
                onPressed: () {},
              ),
              SizedBox(
                height: AppSizes.spaceBtwItems,
              ),

              GridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => Verticalproductcard()),
              SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
