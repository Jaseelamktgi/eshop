
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class RatingShare extends StatelessWidget {
  const RatingShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(children: [
        Icon(
          Iconsax.star,
          size: 24,
          color: Colors.amber,
        ),
        SizedBox(
          width: AppSizes.spaceBtwItems / 2,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
            text: '4.5',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          TextSpan(
            text: ' (23)',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .apply(color: AppColors.grey),
          )
        ]))
      ]),
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.share,
            size: AppSizes.iconMd,
          ))
    ]);
  }
}
