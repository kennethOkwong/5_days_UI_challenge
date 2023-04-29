import 'package:flutter/material.dart';

class BorderBox extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? bacgroundColor;
  final Widget child;
  const BorderBox(
      {super.key,
      this.height,
      this.width,
      this.bacgroundColor,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 40,
      width: width ?? 40,
      decoration: BoxDecoration(
          color: bacgroundColor ?? Colors.black.withAlpha(15),
          borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }
}
