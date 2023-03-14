import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miabehotel/constants/colors.dart';

class HotelCard extends StatelessWidget {
  final Map hotelData;
  const HotelCard(this.hotelData);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 230,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(18),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 4,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
              image: DecorationImage(
                image: AssetImage(
                  hotelData['picture'],
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 5,
                  right: -15,
                  child: MaterialButton(
                    color: Colors.white,
                    shape: CircleBorder(),
                    onPressed: () {},
                    child: Icon(
                      Icons.favorite_outline_rounded,
                      color: greenColor,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotelData['title'],
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
                Text(
                  hotelData['price'] + ' Fcfa',
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    color: blueColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotelData['place'],
                  style: GoogleFonts.nunito(
                    fontSize: 11,
                    color: greyColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.place,
                      color: greyColorBtn,
                      size: 14,
                    ),
                    Text(
                      hotelData['distance'].toString() + ' Km du site',
                      style: GoogleFonts.nunito(
                        fontSize: 11,
                        color: greyColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  '/nuit',
                  style: GoogleFonts.nunito(
                    fontSize: 11,
                    color: greyColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 3, 10, 0),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star_rate,
                      color: yellowColor,
                      size: 18,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: yellowColor,
                      size: 18,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: yellowColor,
                      size: 18,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: yellowColor,
                      size: 18,
                    ),
                    Icon(
                      Icons.star_border,
                      color: yellowColor,
                      size: 18,
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Text(
                  hotelData['review'].toString() + ' vues',
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: greyColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
