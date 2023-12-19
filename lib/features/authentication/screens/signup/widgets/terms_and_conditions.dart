import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ETermsandConditionsCheckBox extends StatelessWidget {
  const ETermsandConditionsCheckBox({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;
  

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Row(
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
    );
  }
}