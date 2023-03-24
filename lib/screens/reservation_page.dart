import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miabehotel/constants/colors.dart';
import 'package:miabehotel/screens/custom_backgroound.dart';
import 'package:miabehotel/screens/details_page.dart';
import 'package:miabehotel/screens/payement_page.dart';
import 'package:miabehotel/widgets/rectangle.dart';

class ReservationPage extends StatefulWidget {
  const ReservationPage({super.key});

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  int _nbChambres = 1;
  int _nbAdultes = 2;
  int _nbEnfants = 2;
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      backgroundColor: backgroundColor,
      /* appBar: AppBar(
        //backgroundColor: Colors.transparent,
        backgroundColor: backgroundColor,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: blackColor,
            size: 20,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DetailsPage()),
            );
          },
        ),
        title: Text(
          'RESERVATIONS',
          style: GoogleFonts.nunito(
            color: blackColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),*/
      body: CustomBackground(
        child: Padding(
          //padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                          width: 412,
                          child: Container(
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: blackColor,
                                    size: 20,
                                  ),
                                  onPressed: null,
                                ),
                                const SizedBox(width: 64),
                                Text(
                                  'RESERVATIONS',
                                  style: GoogleFonts.nunito(
                                    color: blackColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Chambre et invités',
                          style: GoogleFonts.nunito(
                            color: blackColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          padding: const EdgeInsets.all(2),
                          height: 219,
                          width: 330,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: greyColor,
                              width: 1.0,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Maximum 8 chambres, 32 adultes, 6 enfants',
                                style: GoogleFonts.nunito(
                                  color: greyColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(Icons.hotel),
                                  Text("Chambres"),
                                  Row(
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                          Icons.remove_circle_outline,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            if (_nbChambres > 1) {
                                              _nbChambres--;
                                            }
                                          });
                                        },
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16),
                                        child: Text(
                                          "$_nbChambres",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          Icons.add_circle_outline,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            _nbChambres++;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.person),
                                  Text("Adultes"),
                                  Row(
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.remove_circle_outline),
                                        onPressed: () {
                                          setState(() {
                                            if (_nbAdultes > 1) {
                                              _nbAdultes--;
                                            }
                                          });
                                        },
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16),
                                        child: Text(
                                          "$_nbAdultes",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                            Icons.add_circle_outline_outlined),
                                        onPressed: () {
                                          setState(() {
                                            _nbAdultes++;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.child_friendly),
                                  Text("Enfants"),
                                  Row(
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.remove_circle_outline),
                                        onPressed: () {
                                          setState(() {
                                            if (_nbEnfants > 0) {
                                              _nbEnfants--;
                                            }
                                          });
                                        },
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16),
                                        child: Text(
                                          "$_nbEnfants",
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                      ),
                                      IconButton(
                                        icon: const Icon(
                                          Icons.add_circle_outline,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            _nbEnfants++;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          "Entrez l'âge de l'enfant à la date du séjour",
                          style: GoogleFonts.nunito(
                            color: blackColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        /*const SizedBox(height: 10),
                        Center(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 15,
                            ),
                            height: 120,
                            width: 330,
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: greyColor,
                                width: 1.0,
                              ),
                            ),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Enfant 1',
                                      style: GoogleFonts.nunito(
                                        color: blackColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      //height: height / 2,
                                      width: width / 4,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 0, horizontal: 6),
                                      decoration: BoxDecoration(
                                        color: yellowColor,
                                        border: Border.all(
                                          color: blackColor,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "15",
                                            style: GoogleFonts.nunito(
                                              color: blackColor,
                                              fontSize: 17,
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              IconButton(
                                                onPressed: null,
                                                icon: Icon(
                                                  Icons.arrow_drop_up_outlined,
                                                  color: secondaryColor,
                                                ),
                                              ),
                                              IconButton(
                                                onPressed: null,
                                                icon: Icon(
                                                  Icons
                                                      .arrow_drop_down_outlined,
                                                  color: secondaryColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                       */
                        const SizedBox(height: 10),
                        Center(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            padding: const EdgeInsets.symmetric(horizontal: 35),
                            height: 120,
                            width: 330,
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: greyColor,
                                width: 1.0,
                              ),
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(height: 5),
                                  RectangleWidget(),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          "Durée de séjour",
                          style: GoogleFonts.nunito(
                            color: blackColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          height: 120,
                          width: 330,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: greyColor,
                              width: 1.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //const SizedBox(height: 17),
                Container(
                  height: 60,
                  width: 350,
                  margin: const EdgeInsets.only(
                    top: 30,
                    bottom: 0,
                  ),
                  child: Row(
                    children: [
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PayementPage(),
                            ),
                          );
                        },
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: 57,
                        minWidth: 175,
                        color: primaryColor,
                        elevation: 5,
                        child: Text(
                          'SUIVANT',
                          style: GoogleFonts.nunito(
                            color: whiteColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      const SizedBox(width: 2),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PayementPage(),
                            ),
                          );
                        },
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: 31,
                        minWidth: 100,
                        color: blackColor,
                        elevation: 5,
                        child: Text(
                          'Ajouter au reservation',
                          style: GoogleFonts.nunito(
                            color: whiteColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
