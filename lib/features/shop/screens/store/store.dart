import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/appbar/tabbar.dart';
import 'package:e_commerce_app/common/widgets/brands/brand_card.dart';
import 'package:e_commerce_app/common/widgets/brands/brand_showcase.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce_app/common/widgets/images/circular_image.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: EAppbar(
            title: Text(
              'Store',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            actions: [
              ECartCounterItem(
                  iconColor: dark ? EColors.white : EColors.black,
                  onPressed: () {})
            ],
          ),
          body: NestedScrollView(
              headerSliverBuilder: (_, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    pinned: true,
                    floating: true,
                    automaticallyImplyLeading: false,
                    backgroundColor: dark ? EColors.black : EColors.white,
                    expandedHeight: 440,
                    flexibleSpace: Padding(
                        padding: const EdgeInsets.all(ESizes.defaultSpace),
                        child: ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            // -- Search Bar
                            const SizedBox(
                              height: ESizes.spaceBtwItems,
                            ),
                            const ESearchContainer(
                              text: 'Search in Store',
                              showBorder: true,
                              showBackground: false,
                              padding: EdgeInsets.zero,
                            ),
                            const SizedBox(
                              height: ESizes.spaceBtwSections,
                            ),

                            // -- Featured Brands
                            ESectionHeading(
                                title: 'Featured Brands', onPressed: () {}),
                            const SizedBox(
                              height: ESizes.spaceBtwItems / 1.5,
                            ),

                            EGridLayout(
                                itemCount: 4,
                                mainAxisExtent: 80,
                                itemBuilder: (_, index) {
                                  return const EBrandCard(
                                    showBorder: true,
                                  );
                                })
                          ],
                        )),
                    // -- Tabs
                    bottom: const ETabbar(tabs: [
                      Tab(
                        child: Text('Sports'),
                      ),
                      Tab(
                        child: Text('Furniture'),
                      ),
                      Tab(
                        child: Text('Electronics'),
                      ),
                      Tab(
                        child: Text('Animal'),
                      ),
                      Tab(
                        child: Text('Dress'),
                      ),
                      Tab(
                        child: Text('Comsmetics'),
                      ),
                    ]),
                  )
                ];
              },
              // -- Body
              body: const TabBarView(
                children: [
                  Padding(
                    padding: EdgeInsets.all(ESizes.defaultSpace),
                    child: Column(
                      children: [
                        // -- Brands
                        EBrandShowcase(images: [EImages.productItem2, EImages.productItem5, EImages.productItem4],),

                        // -- Products
                      ],
                    ),
                  )
                ],
              ))),
    );
  }
}


