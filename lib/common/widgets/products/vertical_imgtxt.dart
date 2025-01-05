import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class VerticalImgText extends StatelessWidget {
  const VerticalImgText({
    super.key,
    required this.img,
    required this.categoryTxt,
    this.txtColor = AppColors.textWhite,
    this.bgColor,
    this.onTap,
  });

  final String img, categoryTxt;
  final Color txtColor;
  final Color? bgColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final darkMode = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: AppSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(AppSizes.md),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color:
                      bgColor ?? (darkMode ? AppColors.dark : AppColors.light)),
              child: Center(
                child: Image(
                  image: AssetImage(
                    img,
                  ),
                  fit: BoxFit.cover,
                  color: darkMode ? AppColors.light : AppColors.dark,
                ),
              ),
            ),
            SizedBox(
              height: AppSizes.spaceBtwItems / 2,
            ),
            Text(
              categoryTxt,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: txtColor),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
