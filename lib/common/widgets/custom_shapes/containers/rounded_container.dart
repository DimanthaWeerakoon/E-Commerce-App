import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ERoundedContainer extends StatelessWidget {
  const ERoundedContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.marging,
    this.padding,
    this.showBoader = false,
    this.radius = ESizes.cardRadiusLg,
    this.borderColor = EColors.white,
    this.backgroundColor = EColors.primary,
  });

  final double? width, height;
  final double radius;
  final Widget? child;
  final bool showBoader;
  final Color borderColor, backgroundColor;
  final EdgeInsetsGeometry? padding, marging;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: marging,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
          border: showBoader ? Border.all(color: borderColor) : null),
    );
  }
}
