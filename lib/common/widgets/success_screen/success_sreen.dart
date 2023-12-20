import 'package:e_commerce_app/common/styles/spacing_style.dart';
import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

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
                      image: const AssetImage(EImages.verifyEmail2),
                      width: EHelperFunctions.screenWidth() * 0.6,
                    ),

                    const SizedBox(
                      height: ESizes.spaceBtwSections,
                    ),

                    /// Title & SubTitle

                    Text(
                      ETexts.yourAccountCreatedTitle,
                      style: txtTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),
                    Text(
                      ETexts.yourAccountCreatedSubTitle,
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
                          onPressed: () => Get.to(() => const LoginScreen()),
                          child: const Text(ETexts.tContinue)),
                    ),
          ],
        ),
      ),
    ));
  }
}
