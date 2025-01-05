import 'package:eshop/common/widgets/custom_appbar.dart';
import 'package:eshop/features/personalization/screens/address/add_address.dart';
import 'package:eshop/features/personalization/screens/address/widgets/single_address.dart';
import 'package:eshop/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(
          title: Text(
            'Address',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          showBackArrow: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              children: [
                SingleAddress(selectedAddress: true),
                SingleAddress(selectedAddress: false)
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.primary,
          onPressed: () => Get.to(() => const AddAddressScreen()),
          child: Icon(Icons.add),
        ));
  }
}
