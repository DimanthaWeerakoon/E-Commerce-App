import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ETabbar extends StatelessWidget implements PreferredSizeWidget {
  const ETabbar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? EColors.black : EColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: EColors.primary,
        labelColor: dark? EColors.white : EColors.primary,
        unselectedLabelColor: EColors.darkGrey,
        ),
    );
  }
  
  @override
  
  Size get preferredSize => Size.fromHeight(EDeviceUtils.getAppBarHieght());
}