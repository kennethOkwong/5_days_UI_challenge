import 'package:flutter/material.dart';
import 'package:mental_health_1/utilities/constants/theme_constants.dart';

class BorderBox extends StatelessWidget {
  final Widget child;
  final double width, height;
  final Color? color;
  final Color? borderColor;
  final EdgeInsets? padding;

  const BorderBox({
    super.key,
    required this.child,
    required this.width,
    required this.height,
    this.color,
    this.padding,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    final finalBorderColor = borderColor ?? colorBlack;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color ?? colorWhite,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: finalBorderColor.withAlpha(40), width: 1)),
      padding: padding ?? const EdgeInsets.all(8.0),
      child: Center(child: child),
    );
  }
}
