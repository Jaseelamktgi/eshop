import 'package:eshop/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.height = 400,
    this.width = 400,
    this.borderRadius = 400,
    this.backgroundColor = Colors.white,
    this.padding,
    this.child,
    this.margin,
    this.showBorder = false,
    this.borderColor = AppColors.grey,
  });

  final double? height;
  final double? width;
  final double borderRadius;
  final Color backgroundColor, borderColor;
  final EdgeInsets? padding;
  final Widget? child;
  final EdgeInsets? margin;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }
}
