import 'package:eshop/features/personalization/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../common/widgets/products/circular_img.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/img_strings.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircularImg(image: ImgStrings.user),
      title: Text(
        'Adam Smith K',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: Colors.white),
      ),
      subtitle: Text(
        'adam@gmail.com',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: AppColors.light),
      ),
      trailing: IconButton(
          onPressed: () {
            Get.to(() => const ProfileScreen());
          },
          icon: Icon(
            Iconsax.edit,
            color: AppColors.light,
            size: 35,
          )),
    );
  }
}
