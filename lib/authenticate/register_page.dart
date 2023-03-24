import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miabehotel/authenticate/forgot_page.dart';
import 'package:miabehotel/constants/colors.dart';
import 'package:miabehotel/screens/custom_backgroound.dart';

class RegisterPage extends StatefulWidget {
  //final VoidCallback showLoginPage;
  const RegisterPage({
    super.key,
    /*required this.showLoginPage*/
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final keys = GlobalKey<FormState>();

  //text controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmedPasswordController = TextEditingController();
  final _pseudoController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmedPasswordController.dispose();
    _pseudoController.dispose();
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
                      'Bienvenue à bord',
                      style: GoogleFonts.nunito(
                        color: blackColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Nous sommes ravis de vous accueillier dans notre communauté!',
                        style: GoogleFonts.nunito(
                          color: greyColor,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        validator: (value) {},
                        controller: _pseudoController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(color: greyColor),
                          ),
                          hintText: 'Entrez votre pseudo',
                          labelText: 'Pseudo',
                          labelStyle:
                              TextStyle(color: blackColor, fontSize: 20),
                          fillColor: whiteColor,
                          filled: true,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
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
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: greyColor),
                            borderRadius: BorderRadius.circular(20),
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
                    const SizedBox(height: 15),
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
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: greyColor),
                            borderRadius: BorderRadius.circular(20),
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
                    const SizedBox(height: 15),
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
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: greyColor),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: 'Confirmer votre mot de passe',
                          labelText: 'Confirmer votre mot de passe',
                          labelStyle:
                              TextStyle(fontSize: 20, color: blackColor),
                          filled: true,
                          fillColor: whiteColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 35),
                    GestureDetector(
                      child: MaterialButton(
                        onPressed: null,
                        child: Container(
                          color: primaryColor,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "S'inscrire",
                            style: GoogleFonts.nunito(
                              color: whiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      onTap: () {},
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
                          "J'ai déjà un compte? ",
                          style: TextStyle(
                            color: greyColor,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        GestureDetector(
                          //    onTap: widget.showLoginPage,
                          child: Text(
                            "S'IDENTIFIER",
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
