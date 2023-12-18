import 'package:e_commerce_app/common/styles/spacing_style.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
          padding: ESpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// logo, title & substitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? EImages.darkAppLogo : EImages.lightAppLogo),
                  ),
                  Text(ETexts.loginTitle, style: txtTheme.headlineMedium),
                  const SizedBox(height: ESizes.sm),
                  Text(ETexts.loginSubTitle, style: txtTheme.bodyMedium),
                ],
              ),
              const SizedBox(
                height: ESizes.defaultSpace,
              ),

              /// Form
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: ESizes.spaceBtwSections),
                child: Form(
                  child: Column(children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: ETexts.email),
                    ),
                    const SizedBox(
                      height: ESizes.spaceBtwInputField,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: ETexts.password,
                          suffixIcon: Icon(Iconsax.eye)),
                    ),
                    const SizedBox(
                      height: ESizes.spaceBtwInputField,
                    ),

                    /// Remember me and forget password
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Remember me
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            const Text(ETexts.rememberMe),
                          ],
                        ),

                        /// Forget Password
                        TextButton(
                            onPressed: () {},
                            child: const Text(ETexts.forgetPassword)),

                        const SizedBox(
                          height: ESizes.spaceBtwInputField,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: ESizes.spaceBtwInputField,
                    ),

                    /// SignIn Button
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(ETexts.signIn))),

                    const SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),

                    /// Create Account Button
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(ETexts.createAccount)))
                  ]),
                ),
              ),

              /// Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(color: dark? EColors.darkGrey : EColors.grey, thickness: 0.5, indent: 60, endIndent: 5,)
                ],
              )
            ],
          )),
    ));
  }
}
