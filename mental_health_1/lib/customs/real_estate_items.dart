import 'package:flutter/material.dart';
import 'package:mental_health_1/utilities/constants/theme_constants.dart';
import 'package:mental_health_1/utilities/helper_functions.dart';
import 'package:mental_health_1/utilities/sample_data.dart';
import 'package:mental_health_1/utilities/widget_functions.dart';
import '../utilities/constants/route_constants.dart';
import 'border_box.dart';

class RealEstateItems extends StatelessWidget {
  final int index;
  const RealEstateItems({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    final amount = sampleData[index]['amount'].toString();
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: GestureDetector(
        onTap: () => Navigator.of(context).pushNamed(itemDetailsRoute),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    sampleData[index]['image'].toString(),
                  ),
                ),
                const Positioned(
                  right: 15,
                  top: 15,
                  child: BorderBox(
                    height: 40,
                    width: 40,
                    child: Icon(Icons.favorite_border),
                  ),
                ),
              ],
            ),
            addVerticalSpace(10),
            Row(
              children: [
                Text(formatCurrency(double.parse(amount)),
                    style: themeData.textTheme.displayMedium),
                addHorizontalSpace(10),
                Text(
                  sampleData[index]['address'].toString(),
                  style: themeData.textTheme.bodyLarge,
                ),
              ],
            ),
            Text(
              '${sampleData[index]['bedrooms'].toString()} bedrooms / ${sampleData[index]['bathrooms'].toString()} bathrooms / ${sampleData[index]['area'].toString()} sqrft',
              style: themeData.textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
