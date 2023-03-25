import 'package:flutter/material.dart';
import 'package:miabehotel/screens/see_all_screens.dart';
import 'package:miabehotel/screens/splash/splash_screen_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'authentication/login_page.dart';
import 'package:miabehotel/screens/map.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
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
