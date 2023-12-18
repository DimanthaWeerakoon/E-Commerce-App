import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class ELoginHeader extends StatelessWidget {
  const ELoginHeader({
    super.key,
    required this.dark,
    required this.txtTheme,
  });

  final bool dark;
  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: ESizes.defaultSpace,
        ),
        Image(
          height: 100,
          image: AssetImage(
              dark ? EImages.darkAppLogo : EImages.lightAppLogo),
        ),
        Text(ETexts.loginTitle, style: txtTheme.headlineMedium),
        const SizedBox(height: ESizes.sm),
        Text(ETexts.loginSubTitle, style: txtTheme.bodyMedium),
      ],
    );
  }
}
