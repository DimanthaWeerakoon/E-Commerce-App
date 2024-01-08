import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/features/personalization/screens/address/add_new_address.dart';
import 'package:e_commerce_app/features/personalization/screens/address/widgets/single_address.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EAppbar(
        title: Text('Addresses'),
        showBackArrow: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddNewAddressWidget()),
        backgroundColor: EColors.primary,
        child: const Icon(
          Iconsax.add,
          color: EColors.white,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              SingleAddress(selectedAddress: true),
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
