
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../utils/constants/colors.dart';

class ProductRatingBarIndicator extends StatelessWidget {
  const ProductRatingBarIndicator({
    super.key,
    required this.rating
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      itemBuilder: (_, __) => Icon(Icons.star),
      rating: rating,
      itemCount: 5,
      itemSize: 20,
      unratedColor: AppColors.darkerGrey,
    );
  }
}
