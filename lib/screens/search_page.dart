import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miabehotel/constants/colors.dart';
import 'package:miabehotel/constants/data.dart';
import 'package:miabehotel/screens/details_page.dart';
import 'package:miabehotel/screens/response_search_page.dart';
import 'package:miabehotel/widgets/hotel_card.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          //margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Position actuel',
                    prefixIcon: Icon(
                      Icons.place,
                      color: greyColor,
                      // size: 14,
                    ),
                    filled: true,
                    fillColor: whiteColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Recherche d\'hôtel',
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(
                      Icons.arrow_forward,
                      color: secondaryColor,
                      size: 30,
                    ),
                    filled: true,
                    fillColor: whiteColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'A proximiter',
                    style: GoogleFonts.nunito(
                      color: blackColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Voir plus',
                    style: GoogleFonts.nunito(
                      color: secondaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: hotelList.map((hotel) {
                    return HotelCard(hotel);
                  }).toList(),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Destination populaire',
                    style: GoogleFonts.nunito(
                      color: blackColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Voir plus',
                    style: GoogleFonts.nunito(
                      color: secondaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                width: 350,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10),
                  /* Permet de mettre l'ombre au container */
                  boxShadow: [
                    BoxShadow(
                      color: greyColor,
                      blurRadius: 4,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      //color: whiteColor,
                      height: 75,
                      width: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/onomo.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ONOMO Hotel Lomé',
                              style: GoogleFonts.nunito(
                                color: blackColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Row(
                              children: [
                                Text(
                                  '70.0000 ',
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
                        Text(
                          'Boulevard du Mono, Lomé-TOGO',
                          style: GoogleFonts.nunito(
                            color: greyColor,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.star_rate,
                              color: yellowColor,
                              size: 20,
                            ),
                            const SizedBox(width: 5),
                            Icon(
                              Icons.star_rate,
                              color: yellowColor,
                              size: 20,
                            ),
                            const SizedBox(width: 5),
                            Icon(
                              Icons.star_rate,
                              color: yellowColor,
                              size: 20,
                            ),
                            const SizedBox(width: 5),
                            Icon(
                              Icons.star_rate,
                              color: yellowColor,
                              size: 20,
                            ),
                            const SizedBox(width: 5),
                            Icon(
                              Icons.star_border,
                              color: yellowColor,
                              size: 20,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              '4.0',
                              style: GoogleFonts.nunito(
                                color: blackColor,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ],
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
