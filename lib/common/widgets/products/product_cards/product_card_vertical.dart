import 'package:e_commerce_app/common/styles/shadows.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/product_details.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class EProductCardVertical extends StatelessWidget {
  const EProductCardVertical({super.key});
  
  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(const ProfileDetails()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [EShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(ESizes.productImageRadius),
            color: dark ? EColors.darkerGrey : EColors.white),
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
            const SizedBox(
              height: ESizes.spaceBtwItems / 2,
            ),

            ///  Details
            const Padding(
              padding: EdgeInsets.only(left: ESizes.sm),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EProductTitleText(title: 'Blue Nike Shoe', smallSize: true,),
                    SizedBox(
                      height: ESizes.spaceBtwItems / 2,
                    ),
                    EBrabdTitleTextWithVerifiedIcon(
                      title: 'Nike',
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Price
                const Padding(
                  padding: EdgeInsets.only(left: ESizes.sm),
                  child: EProductPriceText(
                    price: '42.00',
                    isLarge: true,
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: EColors.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(ESizes.cardRadiusMd),
                          bottomLeft:
                              Radius.circular(ESizes.productImageRadius))),
                  child: const SizedBox(
                      width: ESizes.iconLg * 1.2,
                      height: ESizes.iconLg * 1.2,
                      child: Center(
                          child: Icon(
                        Iconsax.add,
                        color: EColors.white,
                      ))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
