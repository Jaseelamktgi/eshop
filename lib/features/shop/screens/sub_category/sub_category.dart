import 'package:eshop/common/widgets/custom_appbar.dart';
import 'package:eshop/common/widgets/products/horizontal_product_card.dart';
import 'package:eshop/common/widgets/products/rounded_img.dart';
import 'package:eshop/common/widgets/section_heading.dart';
import 'package:eshop/utils/constants/img_strings.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text('Sports Shirts'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(children: [
          // Banner
          RoundedImg(
            imgUrl: ImgStrings.banner1,
            width: double.infinity,
            applyImageRadius: true,
          ),
          SizedBox(
            height: AppSizes.spaceBtwSections,
          ),

          // Sub categories
          Column(
            children: [
              // Heading
              SectionHeading(titleTxt: 'Popular Categories'),
              SizedBox(
                height: AppSizes.spaceBtwItems,
              ),

              // categories
              SizedBox(
                height: 120,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    width: AppSizes.spaceBtwItems,
                  ),
                  itemBuilder: (context, index) {
                    return HorizontalProductCard();
                  },
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
