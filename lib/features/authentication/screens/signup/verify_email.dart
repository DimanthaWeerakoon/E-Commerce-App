import 'package:e_commerce_app/common/widgets/success_screen/success_sreen.dart';
import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                  onPressed: () => Get.offAll(const LoginScreen()),
                  icon: const Icon(CupertinoIcons.clear))
            ],
            iconTheme:
                IconThemeData(color: dark ? EColors.white : EColors.black)),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(ESizes.defaultSpace),
                child: Column(
                  children: [
                    /// Image
                    Image(
                      image: const AssetImage(EImages.verifyEmail1),
                      width: EHelperFunctions.screenWidth() * 0.6,
                    ),

                    const SizedBox(
                      height: ESizes.spaceBtwSections,
                    ),

                    /// Title & SubTitle

                    Text(
                      ETexts.confirmEmail,
                      style: txtTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),
                    Text(
                      'support@dalpha.com',
                      style: txtTheme.labelLarge,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),
                    Text(
                      ETexts.confirmEmailSubTitle,
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
                          onPressed: () => Get.to(() => const SuccessScreen()),
                          child: const Text(ETexts.tContinue)),
                    ),
                    const SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),
                    SizedBox(width: double.infinity, child: TextButton(onPressed: () {}, child: const Text(ETexts.resendEmail),),)
                  ],
                ))));
  }
}
