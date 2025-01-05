import 'package:eshop/common/widgets/custom_appbar.dart';
import 'package:eshop/common/widgets/products/ratingbar_indicator.dart';
import 'package:eshop/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'widgets/overall_product_rating.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text(
          'Reviews & Ratings',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'See what our customers are saying! Honest reviews and ratings that showcase quality, comfort, and style.'),
              SizedBox(
                height: AppSizes.spaceBtwItems,
              ),

              // Overall product rating
              OverAllProductRating(),
              ProductRatingBarIndicator(rating: 3.4),
              Text(
                '12,251',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              // User Review Cards
              UserReviewCard()
            ],
          ),
        ),
      ),
    );
  }
}
