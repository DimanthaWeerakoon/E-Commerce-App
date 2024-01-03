import 'package:e_commerce_app/features/shop/screens/product_reviews/widgets/product_indicator_and_rating.dart';
import 'package:flutter/material.dart';

class EOverallProductRating extends StatelessWidget {
  const EOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '4.8',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              ERatingProgressIndicator(
                text: '5',
                value: 1,
              ),
              ERatingProgressIndicator(
                text: '4',
                value: 0.8,
              ),
              ERatingProgressIndicator(
                text: '3',
                value: 0.6,
              ),
              ERatingProgressIndicator(
                text: '2',
                value: 0.4,
              ),
              ERatingProgressIndicator(
                text: '1',
                value: 0.2,
              ),
            ],
          ),
        )
      ],
    );
  }
}