import 'package:e_commerce_app/app.dart';
import 'package:e_commerce_app/data/repositories/athentication/authentication_repository.dart';
import 'package:e_commerce_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  // Widgets Binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  // Getx Local Storage
  await GetStorage.init();

  // Await Splash Screen until other items loads
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Initialize firebase & authentication repository
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) => Get.put(AuthenticationRepository()));

  runApp(const App());
}
