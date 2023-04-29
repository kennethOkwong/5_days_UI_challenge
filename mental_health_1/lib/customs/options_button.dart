import 'package:flutter/material.dart';
import 'package:mental_health_1/utilities/constants/theme_constants.dart';
import 'package:mental_health_1/utilities/widget_functions.dart';

class OptionButton extends StatelessWidget {
  const OptionButton(
      {super.key, required this.width, required this.text, required this.icon});
  final String text;
  final IconData icon;
  final double width;
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: width,
        color: colorDarkBlue,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            icon,
            color: colorWhite,
            size: 20,
          ),
          addHorizontalSpace(5),
          Text(
            text,
            style: themeData.textTheme.bodyMedium,
          ),
        ]),
      ),
    );
  }
}
