import 'package:eshop/utils/constants/colors.dart';
import 'package:eshop/utils/constants/img_strings.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:eshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CircularImg extends StatelessWidget {
  const CircularImg(
      {super.key,
      this.width = 56,
      this.height = 56,
      this.padding = AppSizes.sm,
      this.fit = BoxFit.cover,
      required this.image,
      this.isNetworkImg = false,
      this.overlayColor,
      this.backgroundColor});

  final double width, height, padding;
  final BoxFit? fit;
  final String image;
  final bool isNetworkImg;
  final Color? overlayColor, backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ??
            (AppHelperFunctions.isDarkMode(context)
                ? AppColors.dark
                : AppColors.light),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image(
          image: isNetworkImg
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,
          fit: fit,
          color: overlayColor,
        ),
      ),
    );
  }
}
