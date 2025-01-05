import 'package:eshop/common/widgets/custom_appbar.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text('Add Address'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Name', prefixIcon: Icon(Iconsax.user)),
                ),
                SizedBox(
                  height: AppSizes.spaceBtwInputFields,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Phone Number',
                      prefixIcon: Icon(Iconsax.mobile)),
                ),
                SizedBox(
                  height: AppSizes.spaceBtwInputFields,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Street',
                            prefixIcon: Icon(Iconsax.building_3)),
                      ),
                    ),
                    SizedBox(
                      width: AppSizes.spaceBtwInputFields,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Post Code',
                            prefixIcon: Icon(Iconsax.code)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppSizes.spaceBtwInputFields,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'City',
                            prefixIcon: Icon(Iconsax.building)),
                      ),
                    ),
                    SizedBox(
                      width: AppSizes.spaceBtwInputFields,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'State',
                            prefixIcon: Icon(Iconsax.activity)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppSizes.spaceBtwInputFields,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Country', prefixIcon: Icon(Iconsax.global)),
                ),
                SizedBox(
                  height: AppSizes.spaceBtwInputFields,
                ),
                SizedBox(
                    width: double.infinity,
                    child:
                        ElevatedButton(onPressed: () {}, child: Text('Save'))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
