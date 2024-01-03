import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class EBillingAddressSection extends StatelessWidget {
  const EBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ESectionHeading(
          title: 'Payment Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text(
          'D-Alpha',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(
              width: ESizes.spaceBtwItems,
            ),
            Text(
              '+23-235-5745534',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(
              width: ESizes.spaceBtwItems,
            ),
            Text(
              '123, Sydney, Australia',
              style: Theme.of(context).textTheme.bodyMedium,
              softWrap: true,
            )
          ],
        ),
      ],
    );
  }
}
