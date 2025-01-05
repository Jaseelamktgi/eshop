import 'package:eshop/common/widgets/products/circular_img.dart';
import 'package:eshop/common/widgets/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constants/img_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Profile', style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              // Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    CircularImg(
                      image: ImgStrings.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Change profile picture',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ))
                  ],
                ),
              ),

              SizedBox(
                height: AppSizes.spaceBtwItems / 2,
              ),
              const Divider(),
              SizedBox(
                height: AppSizes.spaceBtwItems,
              ),

              // Profile Details
              SectionHeading(
                titleTxt: 'Profile Information',
                showActionBtn: false,
              ),
              SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              ProfileMenu(title: 'Name', value: 'Adam Smith', onTap: () {}),
              ProfileMenu(title: 'Username', value: '@adamsmith', onTap: () {}),
              SizedBox(
                height: AppSizes.spaceBtwItems / 2,
              ),
              const Divider(),
              SizedBox(
                height: AppSizes.spaceBtwItems,
              ),

              // Personal Details
              SectionHeading(
                titleTxt: 'Personal Information',
                showActionBtn: false,
              ),
              SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              ProfileMenu(
                title: 'User Id',
                value: '12345',
                onTap: () {},
                icon: Iconsax.copy,
              ),
              ProfileMenu(
                  title: 'Email', value: '2rY5l@example.com', onTap: () {}),
              ProfileMenu(
                  title: 'Phone', value: '+91 1234567890', onTap: () {}),
              ProfileMenu(title: 'Gender', value: 'Male', onTap: () {}),
              ProfileMenu(
                  title: 'Date of Birth', value: '01/01/2000', onTap: () {}),
              const Divider(),
              SizedBox(
                height: AppSizes.spaceBtwItems,
              ),

              // btn
              Center(
                  child: TextButton(
                onPressed: () {},
                child:
                    Text('Create account', style: TextStyle(color: Colors.red)),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
