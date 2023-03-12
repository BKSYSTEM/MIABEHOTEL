import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miabehotel/constants/colors.dart';

class HotelCardHorizontal extends StatelessWidget {
  final Map hotelData;
  const HotelCardHorizontal(this.hotelData);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      margin: const EdgeInsets.symmetric(vertical: 5),
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
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            //color: whiteColor,
            height: 75,
            width: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                hotelData['picture'],
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            height: 75,
            width: 257,
            padding: const EdgeInsets.only(top: 5, bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        hotelData['title'],
                        style: GoogleFonts.nunito(
                          color: blackColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Flexible(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Text(
                              hotelData['price'] + ' Fcfa',
                              style: GoogleFonts.nunito(
                                color: blueColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              ' /nuit',
                              style: GoogleFonts.nunito(
                                color: greyColor,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 3),
                Expanded(
                  child: Text(
                    hotelData['place'],
                    style: GoogleFonts.nunito(
                      color: greyColor,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      hotelData['review'].toString(),
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
          ),
        ],
      ),
    );
  }
}
