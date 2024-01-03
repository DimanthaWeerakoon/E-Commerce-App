import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/images/circular_image.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EAppbar(showBackArrow: true, title: Text('Profile')),
      // -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          // Profile Picture
          child: Column(
            children: [
              SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      const ECircularImage(
                        image: EImages.userImage1,
                        width: 80,
                        height: 80,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text('Change Profile Picture')),
                    ],
                  )),
              const SizedBox(
                height: ESizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              const ESectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              EProfileMenu(
                title: 'Name',
                value: 'D-Alpha',
                onPressed: () {},
              ),
              EProfileMenu(
                title: 'Username',
                value: 'd_alpha',
                onPressed: () {},
              ),
              const Divider(),
              const ESectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              EProfileMenu(
                title: 'User ID',
                value: 'aplha0706',
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              EProfileMenu(
                title: 'E-mail',
                value: 'dalpha@gmail.com',
                onPressed: () {},
              ),
              EProfileMenu(
                title: 'Phone Number',
                value: '+94 75 065 0408',
                onPressed: () {},
              ),
              EProfileMenu(
                title: 'Gender',
                value: 'Male',
                onPressed: () {},
              ),
              EProfileMenu(
                title: 'Date of Birth',
                value: '7 Aug, 1997',
                onPressed: () {},
              ),
              const Divider(),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              Center(
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Close Account',
                        style: TextStyle(color: Colors.red),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
