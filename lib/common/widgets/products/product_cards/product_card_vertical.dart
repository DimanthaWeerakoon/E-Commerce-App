import 'package:e_commerce_app/common/styles/shadows.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EProductCardVertical extends StatelessWidget {
  const EProductCardVertical({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          boxShadow: [EShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(ESizes.productImageRadius),
          color: dark ? EColors.darkerGrey : EColors.white
          ),
      child: Column(
        children: [
          /// Thumbnail, Wishlist button, Discount tag
          ERoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(ESizes.sm),
              backgroundColor: dark ? EColors.dark : EColors.light,
              child: Stack(
                children: [
                  // -- Thumbnail image
                  const ERoundedImage(
                    imageURL: EImages.productItem1,
                    applyImageRadius: true,
                  ),
                  // -- Sale Tag
                  ERoundedContainer(
                    radius: ESizes.sm,
                    backgroundColor: EColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                      horizontal: ESizes.sm,
                      vertical: ESizes.xs,
                    ),
                    child: Text(
                      "25%",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: EColors.black),
                    ),
                  ),

                  // -- Favourite Icon Button
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: ECircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ))
                ],
              )),

          ///  Details
          const Padding(
            padding: EdgeInsets.only(left: ESizes.sm),
            child: Column(
              children: [
                EProductTitleText(title: 'Blue Nike Shoe')
              ],
            ),
          )
        ],
      ),
    );
  }
}