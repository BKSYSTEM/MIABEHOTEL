import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miabehotel/constants/colors.dart';
import 'package:miabehotel/screens/custom_backgroound.dart';

class PayementPage extends StatefulWidget {
  const PayementPage({super.key});

  @override
  State<PayementPage> createState() => _PayementPageState();
}

class _PayementPageState extends State<PayementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'RESERVATIONS',
          style: GoogleFonts.nunito(
            fontSize: 20,
            color: blackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: CustomBackground(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Text(
                  'Informations Réservateurs',
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    color: blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
