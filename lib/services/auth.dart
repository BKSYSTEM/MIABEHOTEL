import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:miabehotel/models/user.dart';
import 'package:miabehotel/services/db.dart';

class AuthServices {
  FirebaseAuth auth = FirebaseAuth.instance;
  DatabaseServices db = DatabaseServices();

  Future signIn(emailController, passwordController, context) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } catch (error) {
      return showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              content: Text(
                  "Mot de passe incorrect ou addresse email déja existant"),
            );
          });
    }
  }

  bool passwordConfirmed(passwordController, confirmedPasswordController) {
    if (passwordController.text.trim() ==
        confirmedPasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  Future signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  Future signUp(emailController, passwordController,
      confirmedPasswordController, context, pseudoController) async {
    try {
      if (passwordConfirmed(passwordController, confirmedPasswordController)) {
        final result = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: emailController.text.trim(),
                password: passwordController.text.trim());

        //enregistrer les donnees ici
        try {
          UserModel user = UserModel(
            id: result.user!.uid,
            email: emailController.text.trim().toString(),
            pseudo: pseudoController.text.trim().toString(),
          );
          db.saveUser(user);
        } catch (error) {
          return showDialog(
              context: context,
              builder: ((context) {
                return const AlertDialog(
                    content: Text('Erreur d\'enregistrement'));
              }));
        }
      }
    } catch (error) {
      return showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              content: Text("Une erreur s'est produite"),
            );
          });
    }
  }

  Future passwordReset(context, emailController) async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text.trim());
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              content:
                  Text('Mot de passe réinitialisé! Vérifié votre boite email'),
            );
          });
    } on FirebaseAuthException catch (error) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(error.message.toString()),
            );
          });
    }
  }
}
