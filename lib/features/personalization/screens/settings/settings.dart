import 'package:eshop/common/widgets/custom_appbar.dart';
import 'package:eshop/common/widgets/custom_shapes/primary_header.dart';
import 'package:eshop/common/widgets/section_heading.dart';
import 'package:eshop/features/personalization/screens/widgets/settings_menu_tile.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constants/sizes.dart';
import '../widgets/profile_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimayHeader(
                child: Column(
              children: [
                // Appbar
                CustomAppbar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: Colors.white),
                  ),
                ),

                // User Profile Card
                UserProfileTile(),

                SizedBox(height: AppSizes.spaceBtwSections * 1.5),
              ],
            )),

            // Body
            Padding(
              padding: EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  // Heading
                  SectionHeading(
                    titleTxt: 'Account Settings',
                    showActionBtn: false,
                  ),
                  SizedBox(height: AppSizes.spaceBtwItems),

                  // Account Settings
                  SettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'Set shopping delivery address',
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.shopping_bag,
                    title: 'My Cart',
                    subtitle: 'Add, remove and manage your cart',
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subtitle: 'In progress and completed orders',
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subtitle: 'Withdraw balance to register bank account',
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subtitle: 'List of all the dicounted coupons',
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'My Notifications',
                    subtitle: 'Set any kind of notifications',
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subtitle: 'Manage data usage and security',
                    onTap: () {},
                  ),
                  SizedBox(height: AppSizes.spaceBtwSections),

                  // App Settings
                  SectionHeading(
                    titleTxt: 'App Settings',
                    showActionBtn: false,
                  ),
                  SizedBox(height: AppSizes.spaceBtwItems),

                  SettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subtitle: 'Upload data to your cloud firebase',
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geo Location',
                    subtitle: 'Set recommentations based on location',
                    trailing: Switch(value: false, onChanged: (value) {}),
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.security,
                    title: 'Safe Mode',
                    subtitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subtitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                    onTap: () {},
                  ),
                  SizedBox(height: AppSizes.spaceBtwSections),

                  // Logout Btn
                  SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () {}, child: Text('Logout'))),
                  SizedBox(height: AppSizes.spaceBtwSections * 2),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
