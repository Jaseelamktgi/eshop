
import 'package:eshop/utils/constants/img_strings.dart';
import 'package:eshop/utils/constants/sizes.dart';
import 'package:eshop/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Image(image: AssetImage(ImgStrings.lightAppLogo), height: 80),
      SizedBox(height: AppSizes.lg),
      Text(TextStrings.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium),
      SizedBox(
        height: AppSizes.sm,
      ),
      Text(TextStrings.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium),
    ]);
  }
}
