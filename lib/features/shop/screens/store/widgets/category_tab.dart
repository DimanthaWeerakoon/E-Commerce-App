import 'package:e_commerce_app/common/widgets/brands/brand_showcase.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ECategoryTab extends StatelessWidget {
  const ECategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              // -- Brands
              const EBrandShowcase(
                title: 'Nike',
                images: [
                EImages.productItem2,
                EImages.productItem5,
                EImages.productItem4
              ]),
              const EBrandShowcase(
                title: 'Adidas',
                images: [
                  EImages.productItem2,
                  EImages.productItem5,
                  EImages.productItem4
                ],
              ),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),

              // -- Products
              ESectionHeading(
                title: 'You might like',
                showActionButton: true,
                onPressed: () {},
              ),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),

              EGridLayout(
                  itemCount: 10,
                  itemBuilder: (_, index) => const EProductCardVertical())
            ],
          ),
        )
      ],
    );
  }
}
