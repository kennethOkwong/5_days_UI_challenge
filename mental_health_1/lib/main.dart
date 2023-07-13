import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mental_health_1/utilities/constants/route_constants.dart';
import 'package:mental_health_1/utilities/constants/theme_constants.dart';
import 'package:mental_health_1/views/item_details_view.dart';
import 'package:mental_health_1/views/landing_page_view.dart';

void main() {
  double screenWidth = window.physicalSize.width;
  runApp(MaterialApp(
      title: 'Real Estate',
      theme: ThemeData(
          primaryColor: colorWhite,
          textTheme: screenWidth < 500 ? textThemeSmall : textThemeDefault,
          fontFamily: 'Montserrat'),
      home: const LandingPageView(),
      routes: {itemDetailsRoute: (context) => const ItemDetailsView()}));
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = window.physicalSize.width;
//     return MaterialApp(
//         title: 'Real Estate',
//         theme: ThemeData(
//             primaryColor: colorWhite,
//             accentColor: colorBlack,
//             textTheme: screenWidth < 500 ? textThemeSmall : textThemeDefault,
//             fontFamily: 'Montserrat'),
//         home: const LandingPageView(),
//         routes: {itemDetailsRoute: (context) => const ItemDetailsView()});
//   }
// }
