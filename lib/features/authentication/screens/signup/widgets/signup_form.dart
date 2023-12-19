import 'package:e_commerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce_app/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/widgets/terms_and_conditions.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ESignUpForm extends StatelessWidget {
  const ESignUpForm({
    super.key,
    required this.txtTheme
  });

  final TextTheme txtTheme;
  

  @override
  Widget build(BuildContext context) {
    return Form(
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

        /// Terms & Conditions CheckBox
        ETermsandConditionsCheckBox(txtTheme: txtTheme),
        const SizedBox(height: ESizes.spaceBtwItems,),
        /// Sign Up Button 
        SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text(ETexts.createAccount)),),

        const SizedBox(height: ESizes.spaceBtwItems,),
        /// Divider
        EFromDivider(txtTheme: txtTheme, dividerText: ETexts.orSignUpWith),
        const SizedBox(height: ESizes.spaceBtwItems,),
        /// Social Buttons
        const ESocialButtons()
        
      ],
    ));
  }
}

