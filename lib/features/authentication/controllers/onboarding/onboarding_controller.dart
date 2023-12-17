import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Vaiables

  /// Update Current Index when Page Scroll
  void updatePageIndicator(index) {}

  /// Jump to the specific dot selected page
  void dotNavigationclick(index) {}

  /// Update current index and jump to the next page
  void nextPage() {}

  /// Update current index & jump to the last page
  void skipPage() {}
}