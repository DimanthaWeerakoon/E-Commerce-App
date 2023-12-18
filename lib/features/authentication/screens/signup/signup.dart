import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                ETexts.signUpTitle,
                style: txtTheme.headlineMedium,
              ),
              const SizedBox(height: ESizes.spaceBtwSections),

              /// Form
              Form(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,  
                children: [
                  /// First and Last name
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                              labelText: ETexts.firstname,
                              prefixIcon: Icon(Iconsax.user)),
                        ),
                      ),
                      const SizedBox(
                        width: ESizes.spaceBtwInputField,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                              labelText: ETexts.lastname,
                              prefixIcon: Icon(Iconsax.user)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: ESizes.spaceBtwInputField,
                  ),

                  /// Username
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: ETexts.username,
                        prefixIcon: Icon(Iconsax.user_edit)),
                  ),
                  const SizedBox(
                    height: ESizes.spaceBtwInputField,
                  ),

                  /// Email
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: ETexts.email,
                        prefixIcon: Icon(Iconsax.direct)),
                  ),
                  const SizedBox(
                    height: ESizes.spaceBtwInputField,
                  ),

                  /// Phone Number
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: ETexts.phoneNo,
                        prefixIcon: Icon(Iconsax.call)),
                  ),
                  const SizedBox(
                    height: ESizes.spaceBtwInputField,
                  ),

                  /// Phone Number
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        labelText: ETexts.password,
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash)),
                  ),

                  const SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),

                  /// Terms & Conditions
                  Row(
                    children: [
                      SizedBox(
                          width: 24,
                          height: 24,
                          child: Checkbox(value: true, onChanged: (value) {})),
                      const SizedBox(width: 5),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: '${ETexts.iAgreeTo}  ',
                            style: txtTheme.bodySmall),
                        TextSpan(
                            text: ETexts.privacyPolicy,
                            style: txtTheme.bodyMedium!.apply(
                              color: dark ? EColors.white : EColors.primary,
                              decoration: TextDecoration.underline,
                              decorationColor:
                                  dark ? EColors.white : EColors.primary,
                            )),
                        TextSpan(
                            text: ' ${ETexts.and} ', style: txtTheme.bodySmall),
                        TextSpan(
                            text: '${ETexts.termsOfUse} ',
                            style: txtTheme.bodyMedium!.apply(
                              color: dark ? EColors.white : EColors.primary,
                              decoration: TextDecoration.underline,
                              decorationColor:
                                  dark ? EColors.white : EColors.primary,
                            )),
                      ]))
                    ],
                  ),

                  /// Sign Up Button 
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
