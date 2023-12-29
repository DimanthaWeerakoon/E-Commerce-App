import 'package:e_commerce_app/common/widgets/brands/brand_card.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class EBrandShowcase extends StatelessWidget {
  const EBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return ERoundedContainer(
      showBorder: true,
      borderColor: EColors.darkGrey,
      padding: const EdgeInsets.all(ESizes.md),
      backgroundColor: Colors.transparent,
      marging: const EdgeInsets.only(bottom: ESizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brands with product count
          const EBrandCard(showBorder: false),

          /// Brands with product count
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  final dark = EHelperFunctions.isDarkMode(context);
  return Expanded(
      child: ERoundedContainer(
    height: 100,
    padding: const EdgeInsets.all(ESizes.md),
    marging: const EdgeInsets.only(right: ESizes.md),
    backgroundColor: dark
        ? EColors.darkerGrey
        : EColors.light,
    child: Image(
        fit: BoxFit.contain, image: AssetImage(image)),
  ));
}