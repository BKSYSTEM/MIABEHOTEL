import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miabehotel/constants/colors.dart';
import 'package:miabehotel/screens/custom_backgroound.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomBackground(
          child: Center(
            child: Container(
              padding: const EdgeInsets.only(
                top: 50,
              ),
              child: Column(
                children: [
                  Text(
                    'Bon retour !',
                    style: GoogleFonts.nunito(
                      color: blackColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Content de vous revoir',
                    style: GoogleFonts.nunito(
                      color: greyColor,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Image.asset(
                    'assets/images/welcome.png',
                  ),
                  const SizedBox(height: 10),
                  Form(
                    child: Column(
                      children: [],
                    ),
                  ),
                  const SizedBox(height: 10),
                  MaterialButton(
                    onPressed: null,
                    child: Container(
                      color: primaryColor,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "Se connecter",
                        style: GoogleFonts.nunito(
                          color: whiteColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    "J'ai oublié mon mot de passe",
                    style: GoogleFonts.nunito(
                      color: secondaryColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "OU",
                    style: GoogleFonts.nunito(
                      color: blackColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        padding: const EdgeInsets.symmetric(
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(30),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: primaryColor,
                            width: 2,
                          ),
                        ),
                        child: Text(
                          "f",
                          style: GoogleFonts.nunito(
                            color: primaryColor,
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        height: 40,
                        width: 40,
                        padding: const EdgeInsets.symmetric(
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(30),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: primaryColor,
                            width: 2,
                          ),
                        ),
                        child: Text(
                          "G",
                          style: GoogleFonts.nunito(
                            color: primaryColor,
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  RichText(
                    text: TextSpan(
                        text: "Je n'ai pas un compte? ",
                        style: TextStyle(
                          color: greyColor,
                          fontWeight: FontWeight.w800,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: "S'INSCRIRE",
                            style: TextStyle(
                              color: secondaryColor,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
