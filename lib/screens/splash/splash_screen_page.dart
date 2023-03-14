import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:miabehotel/constants/colors.dart';
import 'package:miabehotel/screens/custom_backgroound.dart';
import 'package:miabehotel/screens/see_all_screens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..repeat();

    // Attendez 3 secondes avant de naviguer vers l'écran principal
    Future.delayed(Duration(seconds: 3)).then((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => BottomTabBar()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Future.delayed(Duration(seconds: 5)),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CustomBackground(
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  // Image d'arrière-plan
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          child: Image.asset(
                            'assets/images/logo1.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Miabe Hôtel',
                          style: TextStyle(
                            color: blackColor,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: CustomPaint(
                      size: Size(10.0, 10.0),
                      painter: LoadingPainter(_controller),
                    ),
                  ),
                  // Texte sur l'image
                  Positioned(
                    bottom: 60.0,
                    left: 0.0,
                    right: 13.0,
                    child: Text(
                      'by Geeks Brights',
                      style: TextStyle(
                        color: blackColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            );
          } else {
            return CupertinoActivityIndicator();
          }
        },
      ),
    );
  }
}

class LoadingPainter extends CustomPainter {
  final Animation<double> animation;

  LoadingPainter(this.animation) : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = yellowColor
      ..style = PaintingStyle.fill;

    final double radius = size.width / 10;

    for (int i = 0; i < 5; i++) {
      double x = (size.width / 2) + (size.width / 4) * cos(2 * pi * i / 5);
      double y = (size.height / 2) + (size.width / 4) * sin(2 * pi * i / 5);

      canvas.drawCircle(Offset(x, y), radius * animation.value, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
