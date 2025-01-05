import 'package:eshop/common/widgets/products/bottom_addtocart.dart';
import 'package:eshop/common/widgets/products/product_attributes.dart';
import 'package:eshop/common/widgets/products/product_meta_data.dart';
import 'package:eshop/common/widgets/products/rating_share.dart';
import 'package:eshop/common/widgets/section_heading.dart';
import 'package:eshop/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

import '../../../../common/widgets/products/product_img_slider.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product image slider
            ProductImgSlider(),

            // Product details
            Padding(
              padding: EdgeInsets.only(
                right: AppSizes.defaultSpace,
                left: AppSizes.defaultSpace,
                bottom: AppSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  // Rating & share
                  RatingShare(),

                  // Price , title , stock ,brand
                  ProductMetaData(),

                  // Attributes
                  ProductAttributes(),

                  // Checkout btn
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Checkout'))),

                  SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),

                  // Description
                  SectionHeading(titleTxt: 'Description', showActionBtn: false),
                  SizedBox(height: AppSizes.spaceBtwItems),
                  ReadMoreText(
                    'Discover premium-quality shirts designed for style and comfort. Made from breathable, soft fabrics, these shirts ensure a perfect fit for every occasion. Whether you’re heading to the office, attending a formal event, or enjoying a casual day out, their versatile design effortlessly blends elegance with practicality. With meticulous stitching and durable materials, these shirts promise long-lasting wear. Available in a variety of colors and patterns, they are the perfect addition to elevate your wardrobe.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: AppSizes.spaceBtwSections),

                  // Reviews
                  const Divider(),
                  SizedBox(height: AppSizes.spaceBtwItems),
                  SectionHeading(
                    titleTxt: 'Reviews (105)',
                    showActionBtn: true,
                    onPressed: () => Get.to(() => const ProductReviewsScreen()),
                  ),

                  SizedBox(height: AppSizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAddtocart(),
    );
  }
}
