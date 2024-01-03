import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_item.dart';
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
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: ListView.separated(
            shrinkWrap: true,

            itemCount: 15,
            separatorBuilder: (_, __) => const SizedBox(
              height: ESizes.spaceBtwSections,
            ),
            itemBuilder: (_, index) => const Column(
              children: [
                ECartItem()
              ],
            ),
          ),
        ));
  }
}


