import 'package:eshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppSpacingStyles {
  static const EdgeInsetsGeometry paddingWithAppbarHeight = EdgeInsets.only(
    top: AppSizes.appBarHeight,
    left: AppSizes.defaultSpace,
    bottom: AppSizes.defaultSpace,
    right: AppSizes.defaultSpace,
  );
}