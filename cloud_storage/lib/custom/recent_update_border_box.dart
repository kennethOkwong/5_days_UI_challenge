import 'package:cloud_storage/constants/theme_constants.dart';
import 'package:cloud_storage/utilities/widget_fucntions.dart';
import 'package:flutter/material.dart';

class RecentUpdateBorderBox extends StatelessWidget {
  final List<String> label;
  final double? height;
  final double? width;
  final Color? bacgroundColor;
  final String imageUrl;
  const RecentUpdateBorderBox(
      {super.key,
      this.height,
      this.width,
      this.bacgroundColor,
      required this.imageUrl,
      required this.label});

  @override
  Widget build(BuildContext context) {
    final text1 = label[0];
    final text2 = label[1];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            height: height ?? 90,
            width: width ?? 90,
            padding: EdgeInsets.all(padding),
            decoration: BoxDecoration(
                color: bacgroundColor ?? Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              'assets/images/$imageUrl',
            )),
        addVerticalSpace(5.0),
        RichText(
            text: TextSpan(children: [
          TextSpan(
            text: text1,
            style: textThme(context).titleSmall,
          ),
          TextSpan(
            text: '.',
            style: textThme(context).bodySmall,
          ),
          TextSpan(
            text: text2,
            style: textThme(context).bodySmall,
          ),
        ]))
      ],
    );
  }
}
