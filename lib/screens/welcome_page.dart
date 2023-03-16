import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miabehotel/constants/colors.dart';
import 'package:miabehotel/screens/custom_backgroound.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:miabehotel/screens/see_all_screens.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomTabBar()),
                  );
                },
                child: Text(
                  'PASSER',
                  style: GoogleFonts.nunito(
                    color: secondaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 25, 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /* SvgPicture.asset(
                    'assets/images/svg/undraw_travel_plans_re_103r.svg',
                    height: 200,
                    width: 200,
                  ),*/
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    color: primaryColor,
                    height: 200,
                    width: 200,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Miabe Hotel',
                    style: GoogleFonts.nunito(
                      color: blackColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Réserver en 3 étapes',
                    style: GoogleFonts.nunito(
                      color: blackColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 7),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '1. ',
                            style: GoogleFonts.nunito(
                              color: secondaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Inscription, connexion ou pas',
                            style: GoogleFonts.nunito(
                              color: blackColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          Text(
                            '2. ',
                            style: GoogleFonts.nunito(
                              color: secondaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Choisissez un hotel',
                            style: GoogleFonts.nunito(
                              color: blackColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            '3. ',
                            style: GoogleFonts.nunito(
                              color: secondaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Payer et Reservez',
                            style: GoogleFonts.nunito(
                              color: blackColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            '4. ',
                            style: GoogleFonts.nunito(
                              color: secondaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Puis bon séjour !!!',
                            style: GoogleFonts.nunito(
                              color: blackColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 98),
                  Container(
                    //margin: const EdgeInsets.only(bottom: 84),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomTabBar()),
                        );
                      },
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 57,
                      minWidth: 350,
                      color: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(color: primaryColor, width: 1),
                      ),
                      elevation: 5,
                      child: Text(
                        'Commencer',
                        style: GoogleFonts.nunito(
                          color: whiteColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
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
