import 'package:e_commerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                color: EColors.primary,
                padding: const EdgeInsets.all(0),
                child:  SizedBox(
                  height: 400,
                  child: Stack(
                    children: [
                      Positioned(top: -150, right: -250, child: ECircularContainer(backgroundColor: EColors.white.withOpacity(0.1),)),
                      Positioned(top: 100, right: -300, child: ECircularContainer(backgroundColor: EColors.white.withOpacity(0.1),)),
                      
                      ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}


