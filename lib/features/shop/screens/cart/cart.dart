import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce_app/common/widgets/products/cart/add_remove_button.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_item.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const EAppbar(
          showBackArrow: true,
          title: Text('Cart'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 4,
            separatorBuilder: (_, __) => const SizedBox(
              height: ESizes.spaceBtwSections,
            ),
            itemBuilder: (_, index) => const Column(
              children: [
                ECartItem(),
                SizedBox(
                  height: ESizes.spaceBtwItems,
                ),
                Row(
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
                    
                    EProductPriceText(price: '266', isLarge: true,)
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
