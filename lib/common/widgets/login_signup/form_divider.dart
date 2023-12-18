import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class EFromDivider extends StatelessWidget {
  const EFromDivider({
    super.key,
    required this.dark,
    required this.txtTheme, required this.dividerText,
  });

  final bool dark;
  final TextTheme txtTheme;
  final String dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? EColors.darkerGrey : EColors.darkGrey,
            thickness: 0.5,
            indent: 40,
            endIndent: 5,
          ),
        ),
        Text(dividerText,
            style: txtTheme.labelMedium),
        Flexible(
          child: Divider(
            color: dark ? EColors.darkerGrey : EColors.darkGrey,
            thickness: 0.5,
            indent: 5,
            endIndent: 40,
          ),
        )
      ],
    );
  }
}