import 'package:eshop/common/widgets/products/grid_layout.dart';
import 'package:eshop/common/widgets/products/verticalProductCard.dart';
import 'package:eshop/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:eshop/utils/constants/img_strings.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/primary_header.dart';
import '../../../../common/widgets/products/vertical_imgtxt.dart';
import '../../../../common/widgets/search_bar.dart';
import '../../../../common/widgets/section_heading.dart';
import 'widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimayHeader(
                child: Column(
              children: [
                // Appbar
                HomeAppBar(),
                SizedBox(height: AppSizes.spaceBtwSections),

                // Search bar
                CustomSearchBar(
                  text: 'Search in Store',
                ),
                SizedBox(height: AppSizes.spaceBtwSections),

                // Categories Section
                Padding(
                  padding: const EdgeInsets.only(left: AppSizes.defaultSpace),
                  child: Column(
                    children: [
                      SectionHeading(
                        titleTxt: 'Popular Categories',
                        showActionBtn: false,
                        textColor: Colors.white,
                      ),
                      SizedBox(height: AppSizes.spaceBtwItems),

                      // Categories
                      SizedBox(
                        height: 80,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) => VerticalImgText(
                              img: ImgStrings.cosmeticIcon,
                              categoryTxt: 'Cosemetics'),
                          itemCount: 9,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),

            // Promo Slider
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  PromoSlider(bannerImg: [
                    ImgStrings.banner1,
                    ImgStrings.banner3,
                    ImgStrings.banner4,
                  ]),
                  SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),

                  // Popular Products
                  SectionHeading(
                    titleTxt: 'Popular Products',
                    onPressed: () {},
                  ),
                  SizedBox(height: AppSizes.spaceBtwItems),

                  GridLayout(
                      itemCount: 10,
                      itemBuilder: (_, index) => Verticalproductcard()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
