import 'package:flutter/material.dart';

import '../../utils/helpers/helper_functions.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    required this.titleTxt,
    this.btnTxt = 'View All',
    this.textColor,
    this.onPressed,
    this.showActionBtn = true,
  });

  final String titleTxt, btnTxt;
  final Color? textColor;
  final VoidCallback? onPressed;
  final bool showActionBtn;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        Text(
          titleTxt,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: textColor,
              ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const Spacer(),
        if (showActionBtn) TextButton(onPressed: () {}, child: Text(btnTxt))
      ],
    );
  }
}
