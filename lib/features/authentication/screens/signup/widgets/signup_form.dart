import 'package:e_commerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce_app/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce_app/features/authentication/controllers/signup/signup_controller.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/widgets/terms_and_conditions.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:e_commerce_app/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ESignUpForm extends StatelessWidget {
  const ESignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    final controller = Get.put(SignupController());
    return Form(
        key: controller.signupFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// First and Last name
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: controller.firstName,
                    validator: (value) =>
                        EValidator.validateEmptyText('First Name', value),
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
                    controller: controller.lastName,
                    validator: (value) =>
                        EValidator.validateEmptyText('Last Name', value),
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
              controller: controller.username,
              validator: (value) =>
                  EValidator.validateEmptyText('Username', value),
              decoration: const InputDecoration(
                  labelText: ETexts.username,
                  prefixIcon: Icon(Iconsax.user_edit)),
            ),
            const SizedBox(
              height: ESizes.spaceBtwInputField,
            ),

            /// Email
            TextFormField(
              controller: controller.email,
              validator: (value) => EValidator.validateEmail(value),
              decoration: const InputDecoration(
                  labelText: ETexts.email, prefixIcon: Icon(Iconsax.direct)),
            ),
            const SizedBox(
              height: ESizes.spaceBtwInputField,
            ),

            /// Phone Number
            TextFormField(
              controller: controller.phoneNumber,
              validator: (value) => EValidator.validatePhoneNumber(value),
              decoration: const InputDecoration(
                  labelText: ETexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
            ),
            const SizedBox(
              height: ESizes.spaceBtwInputField,
            ),

            /// Phone Number
            TextFormField(
              obscureText: true,
              controller: controller.password,
              validator: (value) => EValidator.validatePassword(value),
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
            const SizedBox(
              height: ESizes.spaceBtwItems,
            ),

            /// Sign Up Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => controller.signup(),
                  child: const Text(ETexts.createAccount)),
            ),

            const SizedBox(
              height: ESizes.spaceBtwItems,
            ),

            /// Divider
            EFromDivider(txtTheme: txtTheme, dividerText: ETexts.orSignUpWith),
            const SizedBox(
              height: ESizes.spaceBtwItems,
            ),

            /// Social Buttons
            const ESocialButtons()
          ],
        ));
  }
}
