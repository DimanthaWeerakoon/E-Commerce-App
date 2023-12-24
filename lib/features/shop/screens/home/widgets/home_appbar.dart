import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class EHomeAppBar extends StatelessWidget {
  const EHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EAppbar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(ETexts.homeAppbarTitle,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: EColors.grey)),
            Text(ETexts.homeAppbarSubTitle,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .apply(color: EColors.white))
          ],
        ),
        actions: [
          ECartCounterItem(
            iconColor: EColors.white,
            onPressed: () {},
          )
        ]);
  }
}
