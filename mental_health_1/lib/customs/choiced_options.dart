import 'package:flutter/material.dart';
import '../utilities/constants/theme_constants.dart';

class ChoicedOptions extends StatelessWidget {
  final String text;
  const ChoicedOptions({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          color: colorGrey, borderRadius: BorderRadius.circular(20.0)),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: const EdgeInsets.only(left: 25),
      child: Text(
        text,
        style: themeData.textTheme.headlineMedium,
      ),
    );
  }
}
