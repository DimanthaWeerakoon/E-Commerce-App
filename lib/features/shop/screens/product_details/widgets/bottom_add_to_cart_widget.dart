import 'package:e_commerce_app/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EBottomAddToCart extends StatelessWidget {
  const EBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: ESizes.defaultSpace, vertical: ESizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? EColors.darkerGrey : EColors.light,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(ESizes.cardRadiusLg),
              topRight: Radius.circular(ESizes.cardRadiusLg))),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: const ECircularIcon(
                  icon: Iconsax.minus,
                  backgroundColor: EColors.darkGrey,
                  width: 40,
                  height: 40,
                  color: EColors.white),
            ),
            const SizedBox(
              width: ESizes.spaceBtwItems,
            ),
            Text(
              '2',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(
              width: ESizes.spaceBtwItems,
            ),
            GestureDetector(
              onTap: () {},
              child: const ECircularIcon(
                  icon: Iconsax.add,
                  backgroundColor: EColors.black,
                  width: 40,
                  height: 40,
                  color: EColors.white),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {}, 
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(ESizes.md),
            backgroundColor: EColors.black,
            side: const BorderSide(color: EColors.black)
          ),
          child: const Text('Add to cart'),
          )
      ]),
    );
  }
}
