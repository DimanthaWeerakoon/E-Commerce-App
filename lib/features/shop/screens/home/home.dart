import 'package:e_commerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/search_container.dart';
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

class EVerticalImageText extends StatelessWidget {
  const EVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = EColors.white,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: ESizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
                width: 56,
                height: 56,
                padding: const EdgeInsets.all(ESizes.sm),
                decoration: BoxDecoration(
                    color: backgroundColor ??
                        (dark ? EColors.black : EColors.white),
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                    child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.scaleDown,
                  color: dark ? EColors.light : EColors.dark,
                ))),

            /// Text
            const SizedBox(
              height: ESizes.spaceBtwItems / 2,
            ),
            SizedBox(
                width: 55,
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: textColor),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ))
          ],
        ),
      ),
    );
  }
}
