import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miabehotel/authentication/forgot_page.dart';
import 'package:miabehotel/authentication/main_page.dart';
import 'package:miabehotel/constants/colors.dart';
import 'package:miabehotel/screens/custom_backgroound.dart';
import 'package:miabehotel/screens/see_all_screens.dart';
import 'package:miabehotel/services/auth.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback showRegisterPage;
  const LoginPage({super.key, required this.showRegisterPage});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final keys = GlobalKey<FormState>();

  //text controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  AuthServices auth = AuthServices();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomBackground(
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: keys,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        validator: (value) {
                          bool emailValid = RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value!);

                          if (value.isEmpty) {
                            return "Veuillez entrer une adresse email";
                          }
                          if (!emailValid) {
                            return "Veuillez entrer une adresse email valide";
                          }

                          return null;
                        },
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: greyColor),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          hintText: 'Entrez votre email',
                          labelText: 'Email',
                          labelStyle:
                              TextStyle(color: blackColor, fontSize: 20),
                          filled: true,
                          fillColor: whiteColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Veuillez entrer un mot de passe";
                          } else if (value.length < 6) {
                            "Le mot de passe doit contenir au moins 6 caractères";
                          }
                          return null;
                        },
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: greyColor),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          hintText: 'Entrez votre mot de passe',
                          labelText: 'Mot de passe',
                          labelStyle:
                              TextStyle(fontSize: 20, color: blackColor),
                          filled: true,
                          fillColor: whiteColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    /*GestureDetector(
                      child: */
                    GestureDetector(
                      onTap: () async {
                        if (keys.currentState!.validate()) {
                          await auth.signIn(
                              _emailController, _passwordController, context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return MainPage();
                            // return BottomTabBar();
                          }));
                        }
                      },
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
                    /*onTap: () {
                        if (keys.currentState!.validate()) {
                          auth.signIn(
                              _emailController, _passwordController, context);
                        }
                      },
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomTabBar()),
                        );
                      },
                    ),*/
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const ForgotPasswordPage();
                              }));
                            },
                            child: Text(
                              "J'ai oublié mon mot de passe",
                              style: GoogleFonts.nunito(
                                color: secondaryColor,
                                fontSize: 17,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          )
                        ],
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Je n'ai pas un compte? ",
                          style: TextStyle(
                            color: greyColor,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        GestureDetector(
                          onTap: widget.showRegisterPage,
                          /*onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegisterPage(),
                              ),
                            );
                          },*/
                          child: Text(
                            "S'INSCRIRE",
                            style: TextStyle(
                              color: secondaryColor,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
