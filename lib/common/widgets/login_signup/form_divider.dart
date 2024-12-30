import 'package:eshop/utils/constants/colors.dart';
import 'package:eshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginDivider extends StatelessWidget {
  const LoginDivider({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Flexible(
        child: Divider(
          thickness: 0.5,
          color: dark ? AppColors.grey : AppColors.darkGrey,
          indent: 60,
          endIndent: 5,
        ),
      ),
      Text(
        text,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      Flexible(
        child: Divider(
          thickness: 0.5,
          color: dark ? AppColors.grey : AppColors.darkGrey,
          indent: 5,
          endIndent: 60,
        ),
      ),
    ]);
  }
}
