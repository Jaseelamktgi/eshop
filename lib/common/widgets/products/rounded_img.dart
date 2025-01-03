
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class RoundedImg extends StatelessWidget {
  const RoundedImg({
    super.key,
    this.width ,
    this.height ,
    required this.imgUrl,
    this.fit = BoxFit.contain,
    this.applyImageRadius = true,
    this.border,
    this.backgroundColor,
    this.padding,
    this.isNetworkImage = false,
    this.onTap,
    this.borderRadius = AppSizes.md,
  });

  final double? width, height;
  final String? imgUrl;
  final BoxFit? fit;
  final bool applyImageRadius;
  final Border? border;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onTap;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: width,
          height: height,
          padding: padding,
          decoration: BoxDecoration(
            border: border,
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: ClipRRect(
            borderRadius: applyImageRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero,
            child: Image(
              image: isNetworkImage
                  ? NetworkImage(imgUrl!)
                  : AssetImage(imgUrl!) as ImageProvider,
              fit: fit,
            ),
          )),
    );
  }
}
