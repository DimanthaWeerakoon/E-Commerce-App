import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/images/circular_image.dart';
import 'package:e_commerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class EBrandCard extends StatelessWidget {
  const EBrandCard({
    super.key, required this.showBorder, this.onTap, required this.title,
   
  });

  final bool showBorder;
  final void Function()? onTap; 
  final String title;

  @override
  Widget build(BuildContext context) {
  final dark = EHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: ERoundedContainer(
        padding: const EdgeInsets.all(ESizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(children: [
          // -- Icon
          Flexible(
            child: ECircularImage(
              image: EImages.electronicIcon,
              isNetworkImage: false,
              backgroundColor: Colors.transparent,
              overlayColor: dark
                  ? EColors.white
                  : EColors.black,
            ),
          ),
          const SizedBox(
            width: ESizes.spaceBtwItems / 2,
          ),
          // -- Text
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                EBrabdTitleTextWithVerifiedIcon(
                  title: title,
                  brandTextsize: TextSizes.large,
                ),
                Text(
                  '256 Products',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium,
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}