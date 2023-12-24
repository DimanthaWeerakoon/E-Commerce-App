import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            EPrimaryHeaderContainer(
              child: Column(
                children: [
                  EHomeAppBar(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


