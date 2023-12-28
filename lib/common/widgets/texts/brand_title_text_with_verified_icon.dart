import 'package:e_commerce_app/common/widgets/texts/brand_title_text.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EBrabdTitleTextWithVerifiedIcon extends StatelessWidget {
  const EBrabdTitleTextWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = EColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextsize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextsize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        EBrandTitleText(
          title: title, 
          maxLines: maxLines,
          color: textColor,
          textAlign: textAlign,
          brandTextSize: brandTextsize,
          ),
        const SizedBox(
          width: ESizes.xs,
        ),
        const Icon(
          Iconsax.verify5,
          color: EColors.primary,
          size: ESizes.iconXs,
        )
      ],
    );
  }
}
