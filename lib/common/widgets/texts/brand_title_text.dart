import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class EBrandTitleText extends StatelessWidget {
  const EBrandTitleText({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.color,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? color;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Text(title,
        overflow: TextOverflow.ellipsis,
        maxLines: maxLines,
        textAlign: textAlign,
        // Check which brandSize is required and set that style
        style: brandTextSize == TextSizes.small
            ? txtTheme.labelMedium!.apply(color: color)
            : brandTextSize == TextSizes.medium
                ? txtTheme.bodyLarge!.apply(color: color)
                : brandTextSize == TextSizes.large
                    ? txtTheme.titleLarge!.apply(color: color)
                    : txtTheme.bodyMedium!.apply(color: color));
  }
}
