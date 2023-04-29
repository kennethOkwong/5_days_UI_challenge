import 'package:cloud_storage/constants/theme_constants.dart';
import 'package:cloud_storage/utilities/widget_fucntions.dart';
import 'package:flutter/material.dart';

class StoragePortions extends StatelessWidget {
  final String name;
  final Color color;
  final double percentage;
  const StoragePortions(
      {super.key,
      required this.name,
      required this.color,
      required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 3,
            color: color,
          ),
          addVerticalSpace(7),
          Text(
            name.toUpperCase(),
            style: textThme(context).labelMedium,
          )
        ],
      ),
    );
  }
}
