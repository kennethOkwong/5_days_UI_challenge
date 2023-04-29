import 'package:flutter/material.dart';

Color colorBlue = Colors.blue[700]!;

const TextTheme customTextTheme = TextTheme(
  displayLarge:
      TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
  displayMedium:
      TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.black),
  displaySmall: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
  titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
  titleSmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
  labelLarge: TextStyle(fontWeight: FontWeight.normal, fontSize: 10),
  labelMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 8),
  bodySmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 8),
);

const sidePadding = EdgeInsets.symmetric(horizontal: 20);
double padding = 25;
TextTheme textThme(context) => Theme.of(context).textTheme;
