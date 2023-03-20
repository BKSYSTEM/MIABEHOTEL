import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyCarousel extends StatelessWidget {
  final List<String> images = [
    'assets/images/onomo.jpeg',
    'assets/images/onomo.jpeg',
    'assets/images/onomo.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 230,
        viewportFraction: 0.80,
        enableInfiniteScroll: true,
        enlargeCenterPage: true,
      ),
      items: images
          .map((image) => Container(
                height: 230,
                width: 311,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image,
                    fit: BoxFit.contain,
                  ),
                ),
              ))
          .toList(),
    );
  }
}
