import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miabehotel/constants/payement.dart';

import '../constants/colors.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final TextEditingController _nomController = TextEditingController();
  final TextEditingController _prenomController = TextEditingController();
  final TextEditingController _telephoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  String _nom = 'Nom';
  String _prenom = 'Prénom';
  String _telephone = 'Numéro téléphone';
  String _email = 'Email';

  @override
  void dispose() {
    _nomController.dispose();
    _prenomController.dispose();
    _telephoneController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _showEditDialog(
      BuildContext context, String label, TextEditingController controller) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Modifier $label'),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Entrez $label ici',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Annuler'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  switch (label) {
                    case 'Nom':
                      _nom = controller.text;
                      break;
                    case 'Prénom':
                      _prenom = controller.text;
                      break;
                    case 'Numéro téléphone':
                      _telephone = controller.text;
                      break;
                    case 'Email':
                      _email = controller.text;
                      break;
                  }
                });
                Navigator.pop(context);
              },
              child: Text('Enregistrer'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'PROFIL',
                  style: GoogleFonts.nunito(
                    color: blackColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Informations du Reservateur',
                style: GoogleFonts.nunito(
                  color: blackColor,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 17),
              Form(
                child: Column(
                  children: [
                    TextField(
                      controller: _nomController,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: blackColor),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        labelText: 'Nom',
                        labelStyle: TextStyle(color: blackColor),
                        hintText: 'Entrez votre nom ici',
                        filled: true,
                        fillColor: whiteColor,
                        suffixIcon: IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            _showEditDialog(context, 'Nom', _nomController);
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    TextField(
                      controller: _prenomController,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        labelText: 'Prénom',
                        hintText: 'Entrez votre prénom ici',
                        filled: true,
                        fillColor: whiteColor,
                        suffixIcon: IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            _showEditDialog(
                                context, 'Prénom', _prenomController);
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    TextField(
                      controller: _telephoneController,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        labelText: 'Numéro téléphone',
                        hintText: 'Entrez votre numéro de téléphone ici',
                        filled: true,
                        fillColor: whiteColor,
                        suffixIcon: IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            _showEditDialog(context, 'Numéro téléphone',
                                _telephoneController);
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        labelText: 'Email',
                        hintText: 'Entrez votre email ici',
                        filled: true,
                        fillColor: whiteColor,
                        suffixIcon: IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            _showEditDialog(context, 'Email', _emailController);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 17),
              Text(
                'Informations du Payement',
                style: GoogleFonts.nunito(
                  color: blackColor,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Container(
                height: 200,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                /*child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: paymentMethods.length,
                  itemBuilder: (BuildContext context, int index) {
                    PaymentMethod method = paymentMethods[index];
                    return ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          method.icon,
                          fit: BoxFit.contain,
                        ),
                      ),
                      title: Text(method.name),
                      subtitle: Text(method.number),
                      trailing: IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () async {
                          String? newNumber = await showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              TextEditingController controller =
                                  TextEditingController(text: method.number);
                              return AlertDialog(
                                title: Text('Modifier le numéro'),
                                content: TextField(
                                  controller: controller,
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    child: Text('Annuler'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  TextButton(
                                    child: Text('Enregistrer'),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pop(controller.text);
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                          if (newNumber != null) {
                            method.number = newNumber;
                            setState(() {});
                          }
                        },
                      ),
                    );
                  },
                ),
              */
              ),
            ],
          ),
        ),
      ),
    );
  }
}
