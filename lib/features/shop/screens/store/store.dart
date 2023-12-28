import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce_app/common/widgets/images/circular_image.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
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

                          ERoundedContainer(
                            padding: const EdgeInsets.all(ESizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(children: [
                              // -- Icon
                            ECircularImage(dark: dark)
                            ]),
                          )
                        ],
                      )),
                )
              ];
            },
            body: Container()));
  }
}

