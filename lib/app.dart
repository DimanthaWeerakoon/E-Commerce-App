import 'package:e_commerce_app/features/authentication/screens/onboarding.dart';
import 'package:e_commerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

// -- Use this Class to setup themes, initial Bindings, any animations and much more

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: EAppTheme.lightTheme,
      darkTheme: EAppTheme.darkTheme,
      home: const OnBoardingScreen()
    );
  }
}