import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/products/cart/add_remove_button.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_item.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const EAppbar(
          showBackArrow: true,
          title: Text('Cart'),
        ),
        body: ListView.separated(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
          shrinkWrap: true,
          itemCount: 8,
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
        bottomNavigationBar:Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: ElevatedButton(onPressed: () {}, child: Text('Checkout \$266.00'),),
        ) ,
        );
        
  }
}
