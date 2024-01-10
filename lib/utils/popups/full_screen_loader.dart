import 'package:e_commerce_app/common/widgets/loaders/animation_loader.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => WillPopScope(
            onWillPop: () async {
              return false;
            },
            child: Container(
              color: EHelperFunctions.isDarkMode(Get.context!)
                  ? EColors.dark
                  : EColors.white,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 250,
                  ),
                  EAnimationLoaderWidget(text: text, animation: animation),
                ],
              ),
            )));
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
