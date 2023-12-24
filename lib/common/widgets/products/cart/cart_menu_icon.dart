import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ECartCounterItem extends StatelessWidget {
  const ECartCounterItem({
    super.key, required this.iconColor, required this.onPressed,
  });

  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor,
          )),
      Positioned(
        right: 0,
        child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: EColors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(100)),
            child: Center(
                child: Text('2',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .apply(
                            color: EColors.white,
                            fontSizeFactor: 0.8)))),
      )
    ]);
  }
}
