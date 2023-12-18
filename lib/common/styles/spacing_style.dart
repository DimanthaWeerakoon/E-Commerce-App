import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ESpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: ESizes.appBarHeight,
    left: ESizes.defaultSpace,
    bottom: ESizes.defaultSpace,
    right: ESizes.defaultSpace
  );
}