import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:miabehotel/constants/colors.dart';
import 'package:miabehotel/screens/custom_backgroound.dart';
import 'package:miabehotel/screens/mes_reservations.dart';
import 'package:miabehotel/screens/profil_page.dart';
import 'package:miabehotel/screens/search_page.dart';
import 'package:miabehotel/screens/reservation_page.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({Key? key}) : super(key: key);

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    SearchPage(),
    MesReservations(),
    UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          height: 60,
          margin: const EdgeInsets.only(bottom: 4),
          //padding: const EdgeInsets.only(bottom: 5),
          decoration: BoxDecoration(
            color: backgroundColor,
            boxShadow: [
              BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
            ],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                gap: 8,
                //activeColor: Color.fromRGBO(39, 142, 140, 1),
                activeColor: secondaryColor,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                duration: Duration(milliseconds: 800),
                //tabBackgroundColor: Color.fromRGBO(139, 216, 224, 0.2),
                tabBackgroundColor: tabBackgroundColor,
                tabs: [
                  GButton(
                    icon: Icons.search,
                    text: 'Recherche',
                    //textStyle: TextStyle(fontSize: 17),
                  ),
                  GButton(
                    icon: Icons.book,
                    text: 'Mes Réservations',
                    /*textStyle: GoogleFonts.nunito(
                        fontSize: 17, fontWeight: FontWeight.bold),
                 */
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profil',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
