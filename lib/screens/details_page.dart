import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miabehotel/constants/colors.dart';
import 'package:miabehotel/screens/search_page.dart';
import 'package:miabehotel/screens/see_all_screens.dart';
import 'package:miabehotel/widgets/my_carousel.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: blackColor,
            size: 20,
          ),
          onPressed: null,
        ),
        title: Text(
          'DETAILS',
          style: GoogleFonts.nunito(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 4.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32, 10, 32, 29),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 214,
                  width: 311,
                  decoration: BoxDecoration(
                    //color: blackColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/onomo.jpeg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: null,
                    child: Text(
                      'Wifi',
                      style: GoogleFonts.nunito(
                          color: blackColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    //elevation: 4,
                    color: blueColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.black),
                    ),
                  ),
                  const SizedBox(width: 8),
                  MaterialButton(
                    onPressed: null,
                    child: Text(
                      'Déjeuner',
                      style: GoogleFonts.nunito(
                        color: blackColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //elevation: 4,
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Onomo Hôtel Lomé',
                    style: GoogleFonts.nunito(
                      color: blackColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.star_rate,
                        color: yellowColor,
                        size: 25,
                      ),
                      const SizedBox(width: 3),
                      Text(
                        '5.0',
                        style: GoogleFonts.nunito(
                          color: blackColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.place,
                    color: greyColorBtn,
                    size: 20,
                  ),
                  Text(
                    'Boulevard du Mono, Lomé-TOGO',
                    style: GoogleFonts.nunito(
                      color: greyColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    'Prix: ',
                    style: GoogleFonts.nunito(
                      color: blackColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Row(
                    children: [
                      Text(
                        '50.000 - 70.0000 ',
                        style: GoogleFonts.nunito(
                          color: blueColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '/nuit',
                        style: GoogleFonts.nunito(
                          color: greyColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: GoogleFonts.nunito(
                      color: blackColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "\t\t\t\t Doté d'un restaurant, d'un bar et d'une piscine extérieure ouverte toute l'année, l'Hotel Onomo Lomé vous accueille à Lomé. Vous bénéficierez gratuitement d'un parking privé sur place et d'une connexion Wi-Fi.",
                    style: GoogleFonts.nunito(
                      color: blackColor,
                      fontSize: 17,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              const SizedBox(height: 13),
              Text(
                'Prévisualisation',
                style: GoogleFonts.nunito(
                  color: blackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      //width: MediaQuery.of(context).size.width,
                      width: 345,
                      height: 67,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0,
                                2), // changement de la direction de l'ombre ici
                          ),
                        ],
                        border: Border.all(color: greyColor, width: 1),
                      ),
                      child: MyCarousel(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 17),
              MaterialButton(
                onPressed: () {
                  // Action à effectuer lorsque le bouton est appuyé
                },
                padding: const EdgeInsets.symmetric(horizontal: 25),
                height: 57,
                minWidth: 350,
                color: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: greyColor, width: 1),
                ),
                elevation: 5,
                child: Text(
                  'RESERVER',
                  style: GoogleFonts.nunito(
                    color: whiteColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
