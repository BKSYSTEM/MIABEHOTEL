import 'package:flutter/material.dart';
import 'package:miabehotel/screens/see_all_screens.dart';
import 'package:miabehotel/screens/splash/splash_screen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Miabe Hotel',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}