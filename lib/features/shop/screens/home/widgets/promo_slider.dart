import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/features/shop/controllers/home_controller.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EPromoSlider extends StatelessWidget {
  const EPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
                viewportFraction: 1,
                onPageChanged: (index, _) =>
                    controller.updatePageIndicator(index)),
            items: const [
              ERoundedImage(
                imageURL: EImages.promoBanner1,
              ),
              ERoundedImage(
                imageURL: EImages.promoBanner2,
              ),
              ERoundedImage(
                imageURL: EImages.promoBanner3,
              ),
            ]),
        const SizedBox(
          height: ESizes.spaceBtwItems,
        ),
        Obx(
          () => Row(
            children: [
              for (int i = 0; i < 3; i++)
                ECircularContainer(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: controller.carouselCurrentIndex.value == i ? EColors.primary : EColors.grey,
                ),
            ],
          ),
        )
      ],
    );
  }
}
