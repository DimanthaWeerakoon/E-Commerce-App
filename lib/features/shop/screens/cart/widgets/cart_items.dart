import 'package:e_commerce_app/common/widgets/products/cart/add_remove_button.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_item.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ECartItems extends StatelessWidget {
  const ECartItems({super.key, this.showAddRemoveButton = true});

  final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(top:ESizes.defaultSpace, bottom: ESizes.defaultSpace),
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) => const SizedBox(
        height: ESizes.spaceBtwSections,
      ),
      itemBuilder: (_, index) => Column(
        children: [
          // Cart Item
          const ECartItem(),
          if (showAddRemoveButton)
            const SizedBox(
              height: ESizes.spaceBtwItems,
            ),
          // Add remove button row wtih total price
          if (showAddRemoveButton)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 75,
                    ),

                    /// Add, Remove buttons
                    EProductQuantityWithAddAndRemovebutton(),
                  ],
                ),
                EProductPriceText(
                  price: '266',
                  isLarge: true,
                )
              ],
            )
        ],
      ),
    );
  }
}
