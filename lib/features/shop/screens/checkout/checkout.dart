import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/products/cart/coupun_widget.dart';
import 'package:e_commerce_app/common/widgets/success_screen/success_sreen.dart';
import 'package:e_commerce_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:e_commerce_app/navigation_menu.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
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

              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),

              /// -- Billing Section
              ERoundedContainer(
                padding: const EdgeInsets.all(ESizes.md),
                showBorder: true,
                backgroundColor: dark ? EColors.black : EColors.white,
                child: const Column(
                  children: [
                    /// Pricing
                    EBillingAmountSection(),
                    SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),

                    /// Divider
                    Divider(),
                    SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),

                    /// Payment Methods
                    EBillingPaymentSection(),
                    SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),

                    /// Address
                    EBillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        )),

        /// -- Checkout button
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                  image: EImages.paymentSuccessful,
                  title: 'Payment Successfull',
                  subTitle: 'Thank you for shopping. Your item will be shipped soon!',
                  onPressed: () => Get.offAll(() => const NavigationMenu()),
                )),
            child: const Text('Checkout \$266.00'),
          ),
        ));
  }
}
