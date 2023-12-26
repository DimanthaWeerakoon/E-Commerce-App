import 'package:e_commerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header --
            EPrimaryHeaderContainer(
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
                          EHomeCategories()
                        ],
                      ))
                ],
              ),
            ),

            /// Body
            Padding(
              padding: EdgeInsets.all(ESizes.defaultSpace),
              child: ERoundedImage(imageURL: EImages.promoBanner1,),
            )
          ],
        ),
      ),
    );
  }
}


