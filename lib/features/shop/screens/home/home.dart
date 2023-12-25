import 'package:e_commerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce_app/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header --
            EPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- AppBar
                  const EHomeAppBar(),
                  const SizedBox(
                    height: 5,
                  ),

                  /// -- SearchBar
                  const ESearchContainer(
                    text: 'Search in Store',
                  ),
                  const SizedBox(
                    height: ESizes.spaceBtwItems,
                  ),

                  /// -- Categories
                  Padding(
                      padding: const EdgeInsets.only(left: ESizes.defaultSpace),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// -- Heading
                          const ESectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false,
                            textColor: EColors.white,
                          ),
                          const SizedBox(
                            height: ESizes.spaceBtwItems,
                          ),

                          /// -- Categories
                          SizedBox(
                            height: 80,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 6,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (_, index) {
                                return EVerticalImageText(
                                  image: EImages.clothIcon,
                                  title: 'Dress',
                                  onTap: () {},
                                );
                              },
                            ),
                          )
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


