import 'package:e_commerce_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: AppBar(
            iconTheme:
                IconThemeData(color: dark ? EColors.white : EColors.black)),
        body: Padding(
            padding: const EdgeInsets.all(ESizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Headings
                Text(ETexts.forgetPasswordTitle, style: txtTheme.headlineMedium),
                const SizedBox(height: ESizes.spaceBtwItems,),
                Text(ETexts.forgetPasswordsSubTitle, style: txtTheme.labelLarge),
                
                const SizedBox(height: ESizes.spaceBtwSections * 2,),
                /// text Field
                
                TextFormField(
                  decoration: const InputDecoration(labelText: ETexts.email, prefixIcon: Icon(Iconsax.direct_right)),
                ),
                const SizedBox(height: ESizes.spaceBtwSections ,),
                
                /// Submit Button
                
                SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.off(() => const ResetPassword()), child: const Text(ETexts.submit)),)
                
                
              ],
            )));
  }
}
