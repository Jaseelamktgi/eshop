import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class RoundedIcon extends StatelessWidget {
  const RoundedIcon({
    super.key,
    this.width,
    this.height,
    this.size = AppSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color, backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final darkMode = AppHelperFunctions.isDarkMode(context);

    return Container(
      width: width,
      height: height,
        decoration: BoxDecoration(
          color:backgroundColor != null ? backgroundColor!:  darkMode
              ? AppColors.dark.withValues(alpha: 0.9)
              : AppColors.light.withValues(alpha: 0.9),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size,)));
  }
}
