import 'package:flutter/material.dart';

class EProductPriceText extends StatelessWidget {
  const EProductPriceText({
    super.key,
    this.currencySign = '\$',
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrough = false,
    required this.price,
  });

  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(currencySign + price,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        style: isLarge
            ? Theme.of(context).textTheme.headlineMedium!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null)
            : Theme.of(context).textTheme.labelLarge!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null));
  }
}