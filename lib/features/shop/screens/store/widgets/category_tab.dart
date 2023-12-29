import 'package:e_commerce_app/common/widgets/brands/brand_showcase.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ECategoryTab extends StatelessWidget {
  const ECategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(ESizes.defaultSpace),
      child: Column(
        children: [
          // -- Brands
          EBrandShowcase(
            images: [
              EImages.productItem2,
              EImages.productItem5,
              EImages.productItem4
            ],
          ),

          // -- Products
        ],
      ),
    );
  }
}
