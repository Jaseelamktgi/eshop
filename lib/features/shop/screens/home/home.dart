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
                              img: ImgStrings.shoeIcon, categoryTxt: 'Animals'),
                          itemCount: 9,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),

            // Image Banner
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: PromoSlider(bannerImg: [
                ImgStrings.banner1,
                ImgStrings.banner3,
                ImgStrings.banner4,
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
