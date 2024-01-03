import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_commerce_app/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EProductImageSlider extends StatelessWidget {
  const EProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
  final dark = EHelperFunctions.isDarkMode(context);
    return ECuverdEdgeWidget(
        child: Container(
      color: dark ? EColors.darkGrey : EColors.light,
      child: Stack(
        children: [
          /// Main Large Image
          const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(ESizes.productImageRadius * 2),
                child: Center(
                    child:
                        Image(image: AssetImage(EImages.productItem3))),
              )),

          /// Image Slider
          Positioned(
            bottom: 30,
            right: 0,
            left: ESizes.defaultSpace,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                separatorBuilder: (_, __) =>
                    const SizedBox(width: ESizes.spaceBtwInputField),
                itemCount: 6,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (_, index) => ERoundedImage(
                    width: 80,
                    backgroundColor: dark ? EColors.dark : EColors.light,
                    border: Border.all(color: EColors.primary),
                    padding: const EdgeInsets.all(ESizes.sm),
                    imageURL: EImages.productItem2),
              ),
            ),
          ),
          /// Appbar Icons
          const EAppbar(
            showBackArrow: true,
            actions: [
              ECircularIcon(icon: Iconsax.heart5, color: Colors.red,)
            ],
          ) 
        ],
      ),
    ));
  }
}
