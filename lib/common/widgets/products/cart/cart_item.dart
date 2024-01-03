import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ECartItem extends StatelessWidget {
  const ECartItem({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
  final dark = EHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        /// Image
        ERoundedImage(
        imageURL: EImages.productItem7,
        width: 60,
        height: 60,
        padding: const EdgeInsets.all(ESizes.sm),
        backgroundColor: dark ? EColors.darkerGrey : EColors.light,
        ),
        const SizedBox(width: ESizes.spaceBtwItems,),

        /// Title, Price & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const EBrabdTitleTextWithVerifiedIcon(title: 'Nike'),
              const Flexible(child: EProductTitleText(title: "Black-Red Nike Sports Shoe" , maxLines: 1, )),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Color : ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Green ', style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: 'Size : ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'UK-34 ', style: Theme.of(context).textTheme.bodyLarge),
                  ]
                )
              )
            ],
          ),
        )
      ],
    );
  }
}