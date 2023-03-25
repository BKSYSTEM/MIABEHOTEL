import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:miabehotel/authentication/auth_page.dart';
import 'package:miabehotel/screens/see_all_screens.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              return const BottomTabBar();
            } else {
              return const AuthPage();
            }
          })),
    );
  }
}
