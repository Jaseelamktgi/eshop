import 'package:eshop/common/widgets/custom_appbar.dart';
import 'package:eshop/common/widgets/products/grid_layout.dart';
import 'package:eshop/common/widgets/products/top_brands_card.dart';
import 'package:eshop/common/widgets/section_heading.dart';
import 'package:eshop/utils/constants/img_strings.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: Text('Brands'),showBackArrow: true,),
      body: SingleChildScrollView(child: Padding(padding: EdgeInsets.all(AppSizes.defaultSpace),child: 
      Column(
        children: [
          SectionHeading(titleTxt: 'Brands',showActionBtn: false),
          SizedBox(height: AppSizes.spaceBtwItems,),

          // Brands
          GridLayout(
            mainAxisExtent: 80,
            itemCount: 6, itemBuilder: (context, index){
            return TopBrandsCard(imageUrls: I);
          })
        ],
      ),),),
    );
  }
}