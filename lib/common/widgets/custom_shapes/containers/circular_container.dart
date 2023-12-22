import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ECircularContainer extends StatelessWidget {
  const ECircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.padding = 0,
    this.radius = 400,
    this.child,
    this.backgroundColor = EColors.white,
  });

  final double? width;
  final double? height;
  final double padding;
  final double radius;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: backgroundColor.withOpacity(0.1)),
      child: child,
    );
  }
}