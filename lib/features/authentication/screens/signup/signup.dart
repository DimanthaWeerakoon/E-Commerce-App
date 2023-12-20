import 'package:e_commerce_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: dark ? EColors.white : EColors.black)),
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
              ESignUpForm(txtTheme: txtTheme)
            ],
          ),
        ),
      ),
    );
  }
}


