import 'package:eshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final darkMode = AppHelperFunctions.isDarkMode(context);
    return Material(
      child: TabBar(
        isScrollable: true,
        indicatorColor: AppColors.primary,
        unselectedLabelColor: AppColors.darkerGrey,
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: darkMode ? AppColors.light : AppColors.primary,
        tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
