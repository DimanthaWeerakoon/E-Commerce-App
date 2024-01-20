import 'package:e_commerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/all_products/all_products.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header --
            const EPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- AppBar
                  EHomeAppBar(),
                  SizedBox(
                    height: 5,
                  ),

                  /// -- SearchBar
                  ESearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: ESizes.spaceBtwItems,
                  ),

                  /// -- Categories
                  Padding(
                      padding: EdgeInsets.only(left: ESizes.defaultSpace),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// -- Heading
                          ESectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false,
                            textColor: EColors.white,
                          ),
                          SizedBox(
                            height: ESizes.spaceBtwItems,
                          ),

                          /// -- Categories
                          EHomeCategories(),
                          SizedBox(
                            height: ESizes.spaceBtwSections,
                          ),
                        ],
                      ))
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(ESizes.defaultSpace),
              child: Column(
                children: [
                  /// Promo Slider
                  const EPromoSlider(banners: [
                    EImages.promoBanner1,
                    EImages.promoBanner2,
                    EImages.promoBanner3,
                    EImages.promoBanner2,
                    EImages.promoBanner3,
                  ]),
                  const SizedBox(height: ESizes.spaceBtwSections),

                  // Heading
                  ESectionHeading(
                    title: "Popular Products",
                    onPressed: () => Get.to(() => const AllProducts()),
                    showActionButton: true,
                  ),
                  const SizedBox(height: ESizes.spaceBtwSections),

                  /// Popular Products
                  EGridLayout(
                    itemCount: 6,
                    itemBuilder: (_, index) => const EProductCardVertical(),
                  ),
                  // const EProductCardVertical()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
