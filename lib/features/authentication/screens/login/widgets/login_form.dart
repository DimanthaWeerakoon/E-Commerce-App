import 'package:e_commerce_app/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/signup.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ELoginForm extends StatelessWidget {
  const ELoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                suffixIcon: Icon(Iconsax.eye_slash)),
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
              const SizedBox(
                width: 50,
              ),

              /// Forget Password
              TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(
                    ETexts.forgetPassword,
                    textAlign: TextAlign.right,
                  )),

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
              child: OutlinedButton(
                  onPressed: () => Get.to(() => const SignUpScreen()),
                  child: const Text(ETexts.createAccount)))
        ]),
      ),
    );
  }
}