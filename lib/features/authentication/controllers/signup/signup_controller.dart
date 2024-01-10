import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/helpers/network_manager.dart';
import 'package:e_commerce_app/utils/popups/full_screen_loader.dart';
import 'package:e_commerce_app/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// Variables
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey =
      GlobalKey<FormState>(); // Form key for form validation

  ///  -- SIGNUP
  Future<void> signup() async {
    try {
      // Start Loading
      EFullScreenLoader.openLoadingDialog(
          "We are processing your information", EImages.docerAnimation);
      // Check Internet Connectitvity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      // Form Validation
      if (signupFormKey.currentState!.validate()) return;

      // Privacy Policy Check
      if (!privacyPolicy.value) {
        ELoaders.warningSnackBar(
            title: 'Accept Privacy Policy',
            message:
                'In order to create the account you must read and accept the Privacy Policy & Terms of Use');
        return;
      }

      // Register user in the Firebase Authentication  Save user data in the Firebase

      // Save Authenticated user data in the Firebase Firestore

      // Show Success Message

      // Move to Verify Email Screen
    } catch (e) {
      // Show some Generic Error to the user
      ELoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      // Remove Loader
      EFullScreenLoader.stopLoading();
    }
  }
}
