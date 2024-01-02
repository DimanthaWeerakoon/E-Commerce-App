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
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            EProductImageSlider(),

            /// 2 - Product Details
            Padding(
              padding: EdgeInsets.only(
                  right: ESizes.defaultSpace,
                  left: ESizes.defaultSpace,
                  bottom: ESizes.defaultSpace),
              child: Column(
                children: [
                  /// - Ratting & Share
                  ERatingandShare(),

                  /// - Price, Title, Stock & Brand
                  EProductMetaData(),

                  /// -- Attributes
                  EProductAttributes()
                  
                  /// -- Checkout Button
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
