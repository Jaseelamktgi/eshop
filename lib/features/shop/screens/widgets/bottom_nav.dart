import 'package:eshop/features/shop/screens/home/home.dart';
import 'package:eshop/features/shop/screens/store/store.dart';
import 'package:eshop/utils/constants/colors.dart';
import 'package:eshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    final controller = Get.put(BottomNavController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            height: 70,
            elevation: 0,
            backgroundColor: dark ? AppColors.dark : AppColors.light,
            indicatorColor: dark
                ? AppColors.textWhite.withValues(alpha: 0.1)
                : AppColors.black.withValues(alpha: 0.1),
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: const [
              NavigationDestination(
                icon: Icon(Iconsax.home),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Iconsax.shop),
                label: 'Store',
              ),
              NavigationDestination(
                icon: Icon(Iconsax.heart),
                label: 'Wishlist',
              ),
              NavigationDestination(
                icon: Icon(Iconsax.user),
                label: 'Profile',
              ),
            ]),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class BottomNavController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const Center(child: HomeScreen()),
    const Center(child: StoreScreen()),
    const Center(child: Text('Wishlist')),
    const Center(child: Text('Profile')),
  ];
}
