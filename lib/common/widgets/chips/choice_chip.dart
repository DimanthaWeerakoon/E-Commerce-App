import 'package:e_commerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class EChoiceChip extends StatelessWidget {
  const EChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = EHelperFunctions.getColor(text) != null;
    return ChoiceChip(
      label: isColor
          ? const SizedBox()
          : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: const TextStyle(color: true ? EColors.white : null),
      avatar: isColor
        ? ECircularContainer(width: 50, height: 50, backgroundColor: EHelperFunctions.getColor(text)!,)
        : null,
      shape: isColor ? const CircleBorder() : null,
      backgroundColor: isColor ? EHelperFunctions.getColor(text)! : null,
      labelPadding: isColor ? const EdgeInsets.all(0) : null,
      padding: isColor ? const EdgeInsets.all(0) : null,
    );
  }
}
