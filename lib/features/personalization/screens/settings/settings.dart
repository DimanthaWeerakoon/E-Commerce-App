import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/images/circular_image.dart';
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
            const Padding(
              padding: EdgeInsets.all(ESizes.defaultSpace),
              child: Column(
                children: [
                  // -- Accoumt title
                  ESectionHeading(title: 'Account Setting'),
                  SizedBox(height: ESizes.spaceBtwItems,),
                ],
              ),
              )
          ],
        ),
      ),
    );
  }
}
