import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            children: [
              OnBoardingPage(
                txtTheme: txtTheme,
                title: EText.onBoardingTitle1,
                subTitle: EText.onBoardingTitlesub1,
                image: EImages.onboarding1,
              ),
              OnBoardingPage(
                txtTheme: txtTheme,
                title: EText.onBoardingTitle2,
                subTitle: EText.onBoardingTitlesub2,
                image: EImages.onboarding2,
              ),
              OnBoardingPage(
                txtTheme: txtTheme,
                title: EText.onBoardingTitle3,
                subTitle: EText.onBoardingTitlesub3,
                image: EImages.onboarding3,
              )
            ],
          ),

          /// Skip Button

          /// Dot Navigation SmoothPageIndicator

          /// Circular Button
        ],
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.txtTheme,
    required this.title,
    required this.subTitle,
    required this.image,
  });

  final TextTheme txtTheme;
  final String title;
  final String subTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(ESizes.defaultSpace),
      child: Column(
        children: [
          Image(
              width: EHelperFunctions.screenWidth() * 0.8,
              height: EHelperFunctions.screenHeight() * 0.6,
              image: AssetImage(image)),
          Text(
            title,
            style: txtTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: ESizes.spaceBtwItems,
          ),
          Text(
            subTitle,
            style: txtTheme.bodyMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
