import 'package:eshop/common/widgets/custom_appbar.dart';
import 'package:eshop/common/widgets/custom_shapes/circular_container.dart';
import 'package:eshop/common/widgets/products/cart_count.dart';
import 'package:eshop/common/widgets/products/circular_img.dart';
import 'package:eshop/common/widgets/search_bar.dart';
import 'package:eshop/common/widgets/section_heading.dart';
import 'package:eshop/utils/constants/colors.dart';
import 'package:eshop/utils/constants/img_strings.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:eshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppbar(
        padding: EdgeInsets.all(0),
        backgroundColor: darkMode ? AppColors.dark : AppColors.light,
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CartCounterIcon(
            iconColor: darkMode ? AppColors.light : AppColors.dark,
            badgeColor: AppColors.darkGrey,
          )
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: darkMode ? AppColors.dark : AppColors.light,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(AppSizes.defaultSpace),
                  child: ListView(
                    children: [
                      // Search bar
                      SizedBox(
                        height: AppSizes.spaceBtwItems,
                      ),
                      CustomSearchBar(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(
                        height: AppSizes.spaceBtwSections,
                      ),

                      // Featured brands
                      SectionHeading(
                        titleTxt: 'Featured Brands',
                        showActionBtn: true,
                      ),
                      SizedBox(
                        height: AppSizes.spaceBtwItems / 1.5,
                      ),

                      CircularContainer(
                        height: 70,
                        padding: EdgeInsets.all(AppSizes.sm),
                        borderRadius: AppSizes.cardRadiusLg,
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            CircularImg(
                                image: ImgStrings.clothIcon,
                                isNetworkImg: false,
                                backgroundColor: Colors.transparent,
                                overlayColor:
                                    AppHelperFunctions.isDarkMode(context)
                                        ? AppColors.light
                                        : AppColors.dark),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Container()),
    );
  }
}
