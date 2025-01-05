import 'package:eshop/common/widgets/custom_appbar.dart';
import 'package:eshop/common/widgets/custom_tab_bar.dart';
import 'package:eshop/common/widgets/products/cart_count.dart';
import 'package:eshop/common/widgets/products/grid_layout.dart';
import 'package:eshop/common/widgets/products/tab_category.dart';
import 'package:eshop/common/widgets/search_bar.dart';
import 'package:eshop/common/widgets/section_heading.dart';
import 'package:eshop/utils/constants/colors.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:eshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/products/featured_brands_container.dart';
class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AppHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                    backgroundColor:
                        darkMode ? AppColors.dark : AppColors.light,
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

                          GridLayout(
                              itemCount: 4,
                              mainAxisExtent: 70,
                              itemBuilder: (_, index) {
                                return GestureDetector(
                                    onTap: () {},
                                    child: FeaturedBrandsContainer());
                              }),
                        ],
                      ),
                    ),

                    // Tab bar
                    bottom: CustomTabBar(tabs: [
                      Tab(
                        child: Text('Sports'),
                      ),
                      Tab(
                        child: Text('Clothing'),
                      ),
                      Tab(
                        child: Text('Accessories'),
                      ),
                      Tab(
                        child: Text('Shoes'),
                      ),
                      Tab(
                        child: Text('Bags'),
                      ),
                    ])),
              ];
            },
            // Body
            body: TabBarView(children: [
              TabCategory(),
              TabCategory(),
              TabCategory(),
              TabCategory(),
              TabCategory(),
            ])),
      ),
    );
  }
}
