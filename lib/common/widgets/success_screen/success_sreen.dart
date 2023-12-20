import 'package:e_commerce_app/common/styles/spacing_style.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, this.onPressed});

  final String image, title, subTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: ESpacingStyle.paddingWithAppBarHeight * 2,
        child: Column(
          children: [
            /// Image
            Image(
              image: AssetImage(image),
              width: EHelperFunctions.screenWidth() * 0.6,
            ),

            const SizedBox(
              height: ESizes.spaceBtwSections,
            ),

            /// Title & SubTitle

            Text(
              title,
              style: txtTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: ESizes.spaceBtwItems,
            ),
            Text(
              subTitle,
              style: txtTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: ESizes.spaceBtwSections,
            ),

            /// Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: onPressed, child: const Text(ETexts.tContinue)),
            ),
          ],
        ),
      ),
    ));
  }
}
