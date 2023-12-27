import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/widgets.dart';

class ERoundedImage extends StatelessWidget {
  const ERoundedImage({
    super.key,
    this.border,
    this.padding,
    this.onPressed,
    this.width,
    this.height,
    this.applyImageRadius = true,
    required this.imageURL,
    this.fit = BoxFit.contain,
    this.backgroundColor = EColors.light,
    this.isNetworkImage = false,
    this.borderRadius = ESizes.md,
  });

  final String imageURL;
  final double? width, height;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          width: width,
          height: height,
          padding: padding,
          decoration: BoxDecoration(
              border: border,
              color: backgroundColor,
              borderRadius: BorderRadius.circular(borderRadius)),
          child: ClipRRect(
              borderRadius: applyImageRadius
                  ? BorderRadius.circular(borderRadius)
                  : BorderRadius.zero,
              child: Image(
                image: isNetworkImage
                    ? NetworkImage(imageURL)
                    : AssetImage(imageURL) as ImageProvider,
                fit: fit,
              ))),
    );
  }
}
