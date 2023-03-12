import 'package:flutter/material.dart';
import 'package:miabehotel/constants/colors.dart';

class CustomBackground extends StatelessWidget {
  final Widget child;

  CustomBackground({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFE5E5E5),
      ),
      child: Stack(
        children: [
          Positioned(
            top: -30,
            left: -60,
            child: Opacity(
              opacity: 0.15,
              child: Container(
                width: 131,
                height: 131,
                decoration: BoxDecoration(
                  color: circleColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          Positioned(
            top: -80,
            left: 40,
            child: Opacity(
              opacity: 0.15,
              child: Container(
                width: 133,
                height: 133,
                decoration: BoxDecoration(
                  color: circleColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
