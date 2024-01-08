import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/checkout.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const EAppbar(
          showBackArrow: true,
          title: Text('Cart'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          /// -- Items in cart
          child: ECartItems(),
        ),
        /// -- Checkout button
        bottomNavigationBar:Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()), child: const Text('Checkout \$266.00'),),
        ) ,
        );
        
  }
}
