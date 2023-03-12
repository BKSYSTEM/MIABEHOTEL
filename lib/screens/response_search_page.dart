import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miabehotel/constants/colors.dart';
import 'package:miabehotel/constants/data.dart';
import 'package:miabehotel/screens/custom_backgroound.dart';
import 'package:miabehotel/widgets/hotel_card_horizontal.dart';

class ResponseSearch extends StatefulWidget {
  const ResponseSearch({super.key});

  @override
  State<ResponseSearch> createState() => _ResponseSearchState();
}

class _ResponseSearchState extends State<ResponseSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackground(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(32, 43, 32, 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'A-Z',
                          style: GoogleFonts.nunito(
                            color: secondaryColor,
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_up,
                          color: blackColor,
                          size: 30,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.star_rate_outlined,
                      color: blackColor,
                      size: 30,
                    ),
                    Icon(
                      Icons.attach_money,
                      color: blackColor,
                      size: 30,
                    ),
                    Icon(
                      Icons.directions,
                      color: blackColor,
                      size: 30,
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  '8 Resultats',
                  style: GoogleFonts.nunito(
                    color: blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 400,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: hotelList.map((hotel) {
                        return HotelCardHorizontal(hotel);
                      }).toList(),
                    ),
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
