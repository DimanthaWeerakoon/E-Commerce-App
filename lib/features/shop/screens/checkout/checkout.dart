import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/products/cart/coupun_widget.dart';
import 'package:e_commerce_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: EAppbar(
        showBackArrow: true,
        title: Text(
          'Checkout',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: Column(
          children: [
            /// -- Items in cart
            const ECartItems(
              showAddRemoveButton: false,
            ),
            const SizedBox(
              height: ESizes.spaceBtwSections,
            ),

            /// -- Coupon TextField
            const ECouponCode(),

            /// -- Billing Section
            ERoundedContainer(
              showBorder: true,
              backgroundColor: dark ? EColors.black : EColors.white,
              child: Column(
                children: [
                  /// Pricing
                   
                  /// Divider
                  
                  /// Payment Methods
                  
                  /// Address
                ],
              ),
            ) 
          ],
        ),
      )),
    );
  }
}

