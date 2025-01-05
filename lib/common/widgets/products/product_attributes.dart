import 'package:eshop/common/widgets/custom_shapes/circular_container.dart';
import 'package:eshop/common/widgets/products/choice_chip.dart';
import 'package:eshop/common/widgets/section_heading.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // Selected attribute pricing & description
        CircularContainer(
            height: 100,
            padding: EdgeInsets.all(AppSizes.md),
            borderRadius: AppSizes.sm,
            backgroundColor: dark ? AppColors.darkerGrey : AppColors.grey,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SectionHeading(titleTxt: 'Variation', showActionBtn: false),
                ])),
        SizedBox(
          height: AppSizes.spaceBtwSections,
        ),

        // Attribute
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Colors
            SectionHeading(titleTxt: 'Colors', showActionBtn: false),
            SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            Wrap(
              children: [
                ChoiceChips(
                  text: 'Red',
                  selected: true,
                  onSelected: (value) {},
                ),
                ChoiceChips(
                  text: 'Green',
                  selected: false,
                  onSelected: (value) {},
                ),
                ChoiceChips(
                  text: 'Blue',
                  selected: false,
                  onSelected: (value) {},
                ),
                ChoiceChips(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
                ChoiceChips(
                  text: 'Orange',
                  selected: false,
                  onSelected: (value) {},
                ),
                ChoiceChips(
                  text: 'Purple',
                  selected: false,
                  onSelected: (value) {},
                ),
                ChoiceChips(
                  text: 'Pink',
                  selected: false,
                  onSelected: (value) {},
                ),
                ChoiceChips(
                  text: 'Cyan',
                  selected: false,
                  onSelected: (value) {},
                ),
                ChoiceChips(
                  text: 'Brown',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: AppSizes.spaceBtwSections,
        ),

        Column(
          children: [
            SectionHeading(titleTxt: 'Sizes', showActionBtn: false),
            SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            Wrap(
              spacing: 8,
              children: [
                ChoiceChips(
                  text: 'S',
                  selected: true,
                  onSelected: (value) {},
                ),
                ChoiceChips(
                  text: 'M',
                  selected: false,
                  onSelected: (value) {},
                ),
                ChoiceChips(
                  text: 'L',
                  selected: false,
                  onSelected: (value) {},
                ),
                ChoiceChips(
                  text: 'XL',
                  selected: false,
                  onSelected: (value) {},
                ),
                ChoiceChips(
                  text: 'XXL',
                  selected: false,
                  onSelected: (value) {},
                ),
                ChoiceChips(
                  text: '3XL',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: AppSizes.spaceBtwSections,
        ),
      ],
    );
  }
}
