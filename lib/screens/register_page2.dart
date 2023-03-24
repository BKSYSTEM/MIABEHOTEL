import 'package:flutter/material.dart';
import 'package:miabehotel/widgets/input.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miabehotel/constants/colors.dart';

import '../widgets/custom_elevated_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bienvenue',
                style: GoogleFonts.nunito(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    InputField(
                      controller: _nameController,
                      labelText: 'Nom',
                    ),
                    SizedBox(height: 20.0),
                    InputField(
                      controller: _emailController,
                      labelText: 'Email',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 20.0),
                    InputField(
                      controller: _passwordController,
                      labelText: 'Entrez votre mot de passe',
                      isHide: true,
                    ),
                    SizedBox(height: 20.0),
                    InputField(
                      controller: _confirmPasswordController,
                      labelText: 'Confirmer votre mot de passe',
                      isHide: true,
                    ),
                    SizedBox(height: 40.0),
                    ElevatedButton(
                      onPressed: null,
                      child: Text('S\'inscrire'),
                    ),
                    CustomElevatedButton(
                      onPressed: () {},
                      text: 'Connexion',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
