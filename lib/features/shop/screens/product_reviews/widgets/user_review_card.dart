import 'package:eshop/common/widgets/custom_shapes/circular_container.dart';
import 'package:eshop/common/widgets/products/ratingbar_indicator.dart';
import 'package:eshop/utils/constants/img_strings.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AppHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(ImgStrings.user),
                ),
                SizedBox(
                  width: AppSizes.spaceBtwItems,
                ),
                Text(
                  'John Doe',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
        ),
        SizedBox(
          height: AppSizes.spaceBtwItems,
        ),

        // Review
        Row(
          children: [
            ProductRatingBarIndicator(rating: 3.4),
            SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            Text(
              '01/01/2021',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        SizedBox(
          height: AppSizes.spaceBtwItems,
        ),

        ReadMoreText(
          'I recently purchased this shirt, and I’m thoroughly impressed with its quality and design. The fabric is incredibly soft and breathable, making it perfect for long hours of wear without feeling uncomfortable. The stitching is flawless, and the attention to detail is evident in every seam.',
          trimLines: 3,
          trimMode: TrimMode.Line,
          trimExpandedText: 'Show less',
          trimCollapsedText: 'Show more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: AppColors.primary),
        ),
        SizedBox(
          height: AppSizes.spaceBtwItems,
        ),

        // Company Review
        CircularContainer(
          height: 240,
          borderRadius: 15,
          backgroundColor: darkMode ? AppColors.darkerGrey : AppColors.grey,
          child: Padding(
              padding: EdgeInsets.all(AppSizes.md),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('T Store',
                          style: Theme.of(context).textTheme.titleMedium),
                      Text('01/01/2021',
                          style: Theme.of(context).textTheme.bodyMedium)
                    ],
                  ),
                  SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),
                  ReadMoreText(
                    'I recently purchased this shirt, and I’m thoroughly impressed with its quality and design. The fabric is incredibly soft and breathable, making it perfect for long hours of wear without feeling uncomfortable. The stitching is flawless, and the attention to detail is evident in every seam.',
                    trimLines: 3,
                    trimMode: TrimMode.Line,
                    trimExpandedText: 'Show less',
                    trimCollapsedText: 'Show more',
                    moreStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        overflow: TextOverflow.ellipsis,
                        color: AppColors.primary),
                  ),
                ],
              )),
        )
      ],
    );
  }
}
