import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding.dart';
import 'package:e_commerce_app/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:e_commerce_app/utils/exceptions/firebase_exceptions.dart';
import 'package:e_commerce_app/utils/exceptions/format_exceptions.dart';
import 'package:e_commerce_app/utils/exceptions/platform_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  // Called from main.dart on app launch
  @override
  void onReady() {
    // Remove the native splash  screen
    FlutterNativeSplash.remove();
    // Redirect to the appropriate screen
    screenRedirect();
  }

  // Function to show Relavant Screen
  screenRedirect() async {
    // Local storage
    deviceStorage.writeIfNull('IsFirstTime', true);
    // Check if it's the first time launching the app
    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(() => const LoginScreen()) // Redirect to login screen if not the first screen
        : Get.offAll(const OnBoardingScreen()); // Redirect to OnBoarding screen if it's the first first time
  }


/* ------------------------------- Email & Password Sign-In -------------------------------------*/

  /// [EmailAuthentication] - SignIn
  
  

  /// [EmailAuthentication] - REGISTER
  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async{
    try {
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw EFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw EFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const EFormatException();
    } on PlatformException catch (e) {
      throw EPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }
  
  

  /// [EmailVerification] - Mail Verification
  
  

  /// [ReAuthentication] - ReAuthentication User
  
  

  /// [EmailAuthentication] - Forget Password
  
  


/* ------------------------------- Federated identity & social sign in -------------------------------------*/

  /// [GoogleAuthentication] - Google
  
  

  /// [FacebookAuthentication] - Facebook
  
  

  
/* ------------------------------- ./end Federated identity & social sign in -------------------------------------*/
  /// [LogoutUser] - Valid for any user authentication.
  
  

  /// [DeleteUser] - Remove user Auth and Firestore Account.
  

}
