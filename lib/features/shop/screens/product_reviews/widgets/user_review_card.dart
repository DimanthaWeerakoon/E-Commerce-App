import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/products/ratings/rating_indicator.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard(
      {super.key,
      required this.name,
      required this.image,
      required this.userDate,
      required this.userReview,
      required this.companyReview,
      required this.companyDate, required this.rating});

  final String name, image, userDate, userReview, companyReview, companyDate;
  final double rating;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(image),
                ),
                const SizedBox(
                  width: ESizes.spaceBtwItems,
                ),
                Text(
                  name,
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems,
        ),

        /// Reviews
        Row(
          children: [
            ERatingBarIndicator(rating: rating),
            const SizedBox(
              width: ESizes.spaceBtwItems,
            ),
            Text(
              userDate,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems,
        ),
        ReadMoreText(
          userReview,
          trimLines: 2,
          trimMode: TrimMode.Line,
          // trimLength: ,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: EColors.primary),
          lessStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: EColors.primary),
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems,
        ),

        /// Company Review
        ERoundedContainer(
          backgroundColor: dark ? EColors.darkGrey : EColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(ESizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'D-Aplha Store',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      companyDate,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),
                  ],
                ),
                ReadMoreText(
                  companyReview,
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  // trimLength: ,
                  trimExpandedText: ' show less',
                  trimCollapsedText: ' show more',
                  moreStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: EColors.primary),
                  lessStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: EColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems,
        )
      ],
    );
  }
}
