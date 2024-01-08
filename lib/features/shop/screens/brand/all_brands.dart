import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/brands/brand_card.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/sortable/sortable_product.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/brand/brand_products.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrands extends StatelessWidget {
  const AllBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EAppbar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              // Heading 
              const ESectionHeading(title: 'Brands', showActionButton: false,),
              const SizedBox(height: ESizes.spaceBtwItems,),

              // Brands
              EGridLayout(itemCount: 6, mainAxisExtent: 80, itemBuilder: (_, index) => EBrandCard(showBorder: true, title: 'Nike', onTap: () => Get.to(() => const BrandProducts()),))
            ],
          ),
        ),
      ),
    );
  }
}
