import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miabehotel/constants/colors.dart';
import 'package:miabehotel/screens/reservation_page.dart';
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const BottomTabBar()),
            );
          },
        ),
        title: Text(
          'DETAILS',
          style: GoogleFonts.nunito(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 2.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(32, 5, 32, 10),
          margin: const EdgeInsets.only(bottom: 2, top: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyCarousel(),
              const SizedBox(height: 2),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 35,
                    width: 75,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      //border: BorderSide(color: blackColor, width: 1),
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Wifi',
                      style: GoogleFonts.nunito(
                        color: blackColor,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    height: 35,
                    width: 90,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: greyColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Déjeuner',
                      style: GoogleFonts.nunito(
                        color: blackColor,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
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
                    color: greyColor,
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
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ReservationPage(),
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
                    'RESERVER',
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
    );
  }
}
