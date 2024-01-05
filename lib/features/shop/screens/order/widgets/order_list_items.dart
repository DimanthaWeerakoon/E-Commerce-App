import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EOrderListItems extends StatelessWidget {
  const EOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (_, __) => const SizedBox(height: ESizes.spaceBtwItems,),
      itemBuilder: (_, index) => ERoundedContainer(
        padding: const EdgeInsets.all(ESizes.md),
        showBorder: true,
        backgroundColor: dark ? EColors.dark : EColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                // Icon
                const Icon(Iconsax.ship),
                const SizedBox(
                  width: ESizes.spaceBtwItems / 2,
                ),
                // Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Processing',
                          style: Theme.of(context).textTheme.bodyLarge!.apply(
                              color: EColors.primary, fontWeightDelta: 1)),
                      Text('07 Nov 2024',
                          style: Theme.of(context).textTheme.headlineSmall)
                    ],
                  ),
                ),

                /// Icon

                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Iconsax.arrow_right_34,
                      size: ESizes.iconSm,
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(
                        width: ESizes.spaceBtwItems / 2,
                      ),
                      // Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order',
                                style: Theme.of(context).textTheme.labelMedium),
                            Text('[#@56b5]',
                                style: Theme.of(context).textTheme.titleMedium)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      // Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(
                        width: ESizes.spaceBtwItems / 2,
                      ),
                      // Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order',
                                style: Theme.of(context).textTheme.labelMedium),
                            Text('[#@56b5]',
                                style: Theme.of(context).textTheme.titleMedium)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
