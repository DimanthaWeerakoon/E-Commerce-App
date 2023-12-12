import 'package:flutter/material.dart';
import 'package:e_commerce_app/utils/theme/theme.dart';

void main() {
  runApp(const App());
}



class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: EAppTheme.lightTheme,
      darkTheme: EAppTheme.darkTheme
    );
  }
}