
import 'package:eshop/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({
    super.key,
    this.iconColor,
    this.onPressed ,
  });

  final Color? iconColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              Iconsax.shopping_bag,
              color: iconColor,
            )),
        Positioned(
          right: 4,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColors.dark.withValues(alpha: 0.5)),
            child: Center(
                child: Text('2',
                    style: Theme.of(context).textTheme.labelSmall!.apply(
                        color: AppColors.textWhite, fontSizeFactor: 0.8))),
          ),
        )
      ],
    );
  }
}
