import 'package:flutter/material.dart';

class AppConstants {
  static List<Widget> photo = [
    carouselWidget(),
    carouselWidget(),
    carouselWidget(),
    carouselWidget(),
    carouselWidget(),
  ];
}

Widget carouselWidget() {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/yahya.jpeg"))),
  );
}
