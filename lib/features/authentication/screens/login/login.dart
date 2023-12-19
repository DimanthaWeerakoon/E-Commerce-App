import 'package:e_commerce_app/common/styles/spacing_style.dart';
import 'package:e_commerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce_app/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/login_form.dart';


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
              /// Logo, title & substitle
              ELoginHeader(dark: dark, txtTheme: txtTheme),

              /// Form
              const ELoginForm(),

              /// Divider
              EFromDivider(txtTheme: txtTheme, dividerText: ETexts.orSignInWith.capitalize!,),
              const SizedBox(height: ESizes.spaceBtwItems,),
              const ESocialButtons()
            ],
          )),
    ));
  }
}







