import 'package:flutter/material.dart';
import 'package:miabehotel/constants/colors.dart';
import 'package:miabehotel/constants/size.dart';
import 'package:miabehotel/services/auth.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  AuthServices auth = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: const Text('Réinitialiser votre mot de passe'),
          backgroundColor: primaryColor.withOpacity(0.8),
          elevation: 2,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                  'Entrez votre email et vous recevrez un mail pour reinitialiser votre mot de passe',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: smallSize, color: Colors.white)),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primaryColor),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primaryColor),
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Email',
                  fillColor: greyColor,
                  filled: true,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text('Réinitialiser votre mot de passe',
                          style: TextStyle(
                              color: whiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: smallSize))),
                ),
              ),
              onTap: () {
                auth.passwordReset(context, _emailController);
              },
            ),
          ],
        ));
  }
}
