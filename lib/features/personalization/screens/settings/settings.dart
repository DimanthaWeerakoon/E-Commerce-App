import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:e_commerce_app/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // -- Header
            EPrimaryHeaderContainer(
                child: Column(
              children: [
                // -- Appbar
                EAppbar(
                  title: Text(
                    'Account',
                    style: Theme.of(context).textTheme.headlineMedium?.apply(
                        color: EHelperFunctions.isDarkMode(context)
                            ? EColors.black
                            : EColors.white),
                  ),
                ),
                // -- User Profile Card
                const EUserProfileTile(
                  image: EImages.userImage,
                  title: 'D-Alpha',
                  subTitle: 'support@dalpha.com',
                ),
                const SizedBox(
                  height: ESizes.spaceBtwSections,
                ),
              ],
            )),

            // --  Body
            Padding(
              padding: const EdgeInsets.all(ESizes.defaultSpace),
              child: Column(
                children: [
                  // -- Account Settings
                  const ESectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: ESizes.spaceBtwItems,
                  ),

                  SettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subTitle: 'Set Shopping Delivery Address',
                    onPressed: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add, remove products and move to checkout',
                    onPressed: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In-progress andCompleted orders',
                    onPressed: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to registered bank account',
                    onPressed: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: 'List of all the discounted coupons',
                    onPressed: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set any kind of notifications',
                    onPressed: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subTitle: 'Manage data usage and connected accounts',
                    onPressed: () {},
                  ),

                  // -- App Settings
                  const SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),
                  const ESectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: ESizes.spaceBtwItems,
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Local Data',
                    subTitle: 'Upload Data to your Cloud Firebase',
                    onPressed: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    trailling: Switch(value: true, onChanged: (value) {}),
                    onPressed: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe MOde',
                    subTitle: 'Search result is safe for all ages',
                    trailling: Switch(value: false, onChanged: (value) {}),
                    onPressed: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    trailling: Switch(value: false, onChanged: (value) {}),
                    onPressed: () {},
                  ),

                  // -- Logout Button
                  const SizedBox(height: ESizes.spaceBtwSections,),

                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {}, child: const Text('Logout')),
                  ),

                  const SizedBox(height: ESizes.spaceBtwSections * 2.5,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
