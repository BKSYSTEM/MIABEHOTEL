import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miabehotel/constants/colors.dart';
import 'package:miabehotel/screens/custom_backgroound.dart';
import 'package:miabehotel/screens/reservation_page.dart';
import 'package:miabehotel/screens/see_all_screens.dart';

class PayementPage extends StatefulWidget {
  const PayementPage({super.key});

  @override
  State<PayementPage> createState() => _PayementPageState();
}

class _PayementPageState extends State<PayementPage> {
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
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: blackColor,
            size: 20,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ReservationPage()),
            );
          },
        ),
        title: Text(
          'RESERVATIONS',
          style: GoogleFonts.nunito(
            fontSize: 20,
            color: blackColor,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: CustomBackground(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Informations Réservateur',
                    style: GoogleFonts.nunito(
                      fontSize: 20,
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Form(
                    child: Column(
                      children: [
                        TextField(
                          controller: _nomController,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: blackColor),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            labelText: 'Joe',
                            labelStyle: TextStyle(
                              color: blackColor,
                              fontSize: 20,
                            ),
                            hintText: 'Entrez votre nom ici',
                            filled: true,
                            fillColor: whiteColor,
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.edit_outlined,
                                size: 30,
                                color: secondaryColor,
                              ),
                              onPressed: () {
                                _showEditDialog(context, 'Nom', _nomController);
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: _prenomController,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            labelText: 'Prénom',
                            hintText: 'Entrez votre prénom ici',
                            filled: true,
                            fillColor: whiteColor,
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () {
                                _showEditDialog(
                                    context, 'Prénom', _prenomController);
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: _telephoneController,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            labelText: 'Numéro téléphone',
                            hintText: 'Entrez votre numéro de téléphone ici',
                            filled: true,
                            fillColor: whiteColor,
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () {
                                _showEditDialog(context, 'Numéro téléphone',
                                    _telephoneController);
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            labelText: 'Email',
                            hintText: 'Entrez votre email ici',
                            filled: true,
                            fillColor: whiteColor,
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () {
                                _showEditDialog(
                                    context, 'Email', _emailController);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mode de payement',
                          style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 5),
                        ListTile(
                          leading: Container(
                            padding: const EdgeInsets.all(5),
                            height: 30,
                            width: 50,
                            color: secondaryColor,
                            child: Text(
                              'VISA',
                              style: TextStyle(
                                color: whiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          title: Text(
                            'VIB *** 6969',
                            style: TextStyle(
                              fontSize: 15,
                              color: blackColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          trailing: Text(
                            'Changer',
                            style: TextStyle(
                              fontSize: 20,
                              color: secondaryColor,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Hotel',
                    style: GoogleFonts.nunito(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Onomo Hotel',
                              style: GoogleFonts.nunito(
                                fontSize: 17,
                                fontWeight: FontWeight.w800,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_rate,
                                  color: yellowColor,
                                  size: 25,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  '5.0',
                                  style: GoogleFonts.nunito(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.place_outlined,
                              color: secondaryColor,
                              size: 25,
                            ),
                            Text(
                              'Boulevard du Mono, Lomé-TOGO',
                              style: GoogleFonts.nunito(
                                fontSize: 14,
                                color: greyColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '\t\t\t\t\t 1 Chambres, 2 adultes, 2 enfants',
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            color: blackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Date : ',
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    color: blackColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '08/03- 11/03',
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    color: secondaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Prix : ',
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    color: blackColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '430 000 ',
                                      style: GoogleFonts.nunito(
                                        fontSize: 15,
                                        color: blueColor,
                                        fontWeight: FontWeight.w800,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      'Francs',
                                      style: GoogleFonts.nunito(
                                        fontSize: 13,
                                        color: blackColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BottomTabBar(),
                          ),
                        );
                      },
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      height: 57,
                      minWidth: 350,
                      color: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(color: primaryColor, width: 1),
                      ),
                      elevation: 5,
                      child: Text(
                        'PAYER',
                        style: GoogleFonts.nunito(
                          color: whiteColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
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
