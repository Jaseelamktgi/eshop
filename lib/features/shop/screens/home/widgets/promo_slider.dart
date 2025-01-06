import 'package:carousel_slider/carousel_slider.dart';
import 'package:eshop/features/shop/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custom_shapes/circular_container.dart';
import '../../../../../common/widgets/products/rounded_img.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.bannerImg,
  });

  final List<String> bannerImg;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, reason) =>
                  controller.updatePageIndicator(index),
            ),
            items: bannerImg
                .map((img) => RoundedImg(
                      imgUrl: img,
                    ))
                .toList()),
        SizedBox(height: AppSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < bannerImg.length; i++)
                  CircularContainer(
                    height: 4,
                    width: 20,
                    backgroundColor: controller.carouselCurrentIndex.value == i
                        ? AppColors.primary
                        : AppColors.grey,
                    margin: EdgeInsets.only(right: 10),
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
