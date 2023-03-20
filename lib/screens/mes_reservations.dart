import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miabehotel/constants/colors.dart';
import 'package:miabehotel/screens/custom_backgroound.dart';

class MesReservations extends StatefulWidget {
  const MesReservations({super.key});

  @override
  State<MesReservations> createState() => _MesReservationsState();
}

class _MesReservationsState extends State<MesReservations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mes Reeservations"),
      ),
      body: CustomBackground(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                        Row(
                          children: [
                            Text(
                              'Onomo Hotel',
                              style: GoogleFonts.nunito(
                                fontSize: 17,
                                fontWeight: FontWeight.w800,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(width: 7),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 2),
                              color: greenColor1,
                              height: 20,
                              child: Text(
                                'Payer',
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  color: whiteColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\t\t\t\t\t 1 Chambres, 2 adultes, 2 enfants',
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            color: blackColor,
                          ),
                        ),
                        Text(
                          'X',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w500,
                              fontSize: 25),
                        )
                      ],
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
                                decoration: TextDecoration.lineThrough,
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
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  'Francs',
                                  style: GoogleFonts.nunito(
                                    fontSize: 13,
                                    color: blackColor,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.lineThrough,
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
                margin: const EdgeInsets.symmetric(vertical: 12),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                        Row(
                          children: [
                            Text(
                              'Onomo Hotel',
                              style: GoogleFonts.nunito(
                                fontSize: 17,
                                fontWeight: FontWeight.w800,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(width: 7),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 1),
                              color: blueColor,
                              height: 20,
                              child: Text(
                                'Non Payer',
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  color: whiteColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
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
            ],
          ),
        ),
      ),
    );
  }
}
