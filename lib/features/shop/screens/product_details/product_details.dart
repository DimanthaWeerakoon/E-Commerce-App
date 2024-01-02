import 'package:e_commerce_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            const EProductImageSlider(),

            /// 2 - Product Details
            Padding(
              padding: const EdgeInsets.only(
                  right: ESizes.defaultSpace,
                  left: ESizes.defaultSpace,
                  bottom: ESizes.defaultSpace),
              child: Column(
                children: [
                  /// - Ratting & Share
                  const ERatingandShare(),

                  /// - Price, Title, Stock & Brand
                  const EProductMetaData(),

                  /// -- Attributes
                  const EProductAttributes(),

                  const SizedBox(height: ESizes.spaceBtwSections,),

                  /// -- Checkout Button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Checkout')))

                  /// - Description
                  /// - Reviews
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
