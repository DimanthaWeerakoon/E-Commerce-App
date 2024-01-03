import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/products/ratings/rating_indicator.dart';
import 'package:e_commerce_app/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:e_commerce_app/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- AppBar
      appBar: const EAppbar(
        title: Text('Review & Ratings'),
        showBackArrow: true,
      ),

      /// -- Body
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
                "Ratings & Reviews are verified and are from people who use the same type of device that you use."),
            const SizedBox(
              height: ESizes.spaceBtwItems,
            ),

            /// Overall Product Ratings
            const EOverallProductRating(),
            const ERatingBarIndicator(
              rating: 3.5,
            ),
            Text(
              "10.512",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: ESizes.spaceBtwSections,
            ),

            /// List of User Reviews
            const UserReviewCard(
                name: 'Simmon John',
                image: EImages.userImage1,
                userDate: '10 Dec, 2023',
                userReview:
                    "Absolutely thrilled with my new Nike shoes! The sleek design and vibrant colors instantly caught my eye, but it's the comfort and performance that truly exceeded my expectations. Whether I'm running or walking, the cushioning provides excellent support, and the lightweight feel is a game-changer!",
                companyReview:
                    "Absolutely thrilled with my new Nike shoes! The sleek design and vibrant colors instantly caught my eye, but it's the comfort and performance that truly exceeded my expectations. Whether I'm running or walking, the cushioning provides excellent support, and the lightweight feel is a game-changer!",
                companyDate: '12 Dec, 2023',
                rating: 4),
            const UserReviewCard(
                name: 'Angela Moose',
                image: EImages.userImage2,
                userDate: '15 Dec, 2023',
                userReview:
                    "Absolutely thrilled with my new Nike shoes! The sleek design and vibrant colors instantly caught my eye, but it's the comfort and performance that truly exceeded my expectations. Whether I'm running or walking, the cushioning provides excellent support, and the lightweight feel is a game-changer!",
                companyReview:
                    "Absolutely thrilled with my new Nike shoes! The sleek design and vibrant colors instantly caught my eye, but it's the comfort and performance that truly exceeded my expectations. Whether I'm running or walking, the cushioning provides excellent support, and the lightweight feel is a game-changer!",
                companyDate: '18 Dec, 2023',
                rating: 5),
            const UserReviewCard(
                name: 'Nick Fins',
                image: EImages.userImage3,
                userDate: '25 Dec, 2023',
                userReview:
                    "Absolutely thrilled with my new Nike shoes! The sleek design and vibrant colors instantly caught my eye, but it's the comfort and performance that truly exceeded my expectations. Whether I'm running or walking, the cushioning provides excellent support, and the lightweight feel is a game-changer!",
                companyReview:
                    "Absolutely thrilled with my new Nike shoes! The sleek design and vibrant colors instantly caught my eye, but it's the comfort and performance that truly exceeded my expectations. Whether I'm running or walking, the cushioning provides excellent support, and the lightweight feel is a game-changer!",
                companyDate: '26 Dec, 2023',
                rating: 3.5),
          ],
        ),
      )),
    );
  }
}
