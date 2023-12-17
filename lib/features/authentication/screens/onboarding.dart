import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
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
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator

          /// Circular Button
        ],
      ),
    );
  }
}




