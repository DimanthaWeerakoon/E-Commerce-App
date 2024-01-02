import 'package:e_commerce_app/common/widgets/chips/choice_chip.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class EProductAttributes extends StatelessWidget {
  const EProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// -- Selected Attribute Pricing & Description
        ERoundedContainer(
          padding: const EdgeInsets.all(ESizes.md),
          backgroundColor: dark ? EColors.darkerGrey : EColors.grey,
          child: Column(
            children: [
              /// Title, Price and Stock Status
              Row(
                children: [
                  const ESectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: ESizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const EProductTitleText(
                            title: 'Price :',
                            smallSize: true,
                          ),
                          const SizedBox(
                            width: ESizes.spaceBtwItems,
                          ),

                          /// Actual Price
                          Text(
                            '\$255',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),

                          const SizedBox(
                            width: ESizes.spaceBtwItems,
                          ),

                          /// Sale Price
                          const EProductPriceText(
                            price: '170',
                          ),
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          const EProductTitleText(
                            title: 'Stock:',
                            smallSize: true,
                          ),
                          const SizedBox(
                            width: ESizes.spaceBtwItems,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),

              /// Variation Description
              const EProductTitleText(
                title:
                    'This is the Description of the Product and it can go upto max 4 lines',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems,
        ),

        /// Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ESectionHeading(title: 'Colors'),
            const SizedBox(height: ESizes.spaceBtwItems / 2,),
            Wrap(
              spacing: 8,
              children: [
                EChoiceChip(text: 'Blue', selected: true, onSelected: (value) {},),
                EChoiceChip(text: 'Red', selected: false, onSelected: (value) {},),
                EChoiceChip(text: 'Yellow', selected: false, onSelected: (value) {},),
                EChoiceChip(text: 'White', selected: false, onSelected: (value) {},),
                EChoiceChip(text: 'Black', selected: false, onSelected: (value) {},),
                EChoiceChip(text: 'Orange', selected: false, onSelected: (value) {},),
                EChoiceChip(text: 'Purple', selected: false, onSelected: (value) {},),
                EChoiceChip(text: 'Brown', selected: false, onSelected: (value) {},),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ESectionHeading(title: 'Sizes'),
            const SizedBox(height: ESizes.spaceBtwItems / 2,),
            Wrap(
              spacing: 10,
              children: [
                EChoiceChip(text: 'EU 34', selected: true, onSelected: (value) {},),
                EChoiceChip(text: 'EU 36', selected: false, onSelected: (value) {},),
                EChoiceChip(text: 'EU 38', selected: false, onSelected: (value) {},),
                EChoiceChip(text: 'EU 40', selected: false, onSelected: (value) {},),
                EChoiceChip(text: 'EU 42', selected: false, onSelected: (value) {},),
                EChoiceChip(text: 'EU 44', selected: false, onSelected: (value) {},),
              ],
            )
          ],
        )
      ],
    );
  }
}
