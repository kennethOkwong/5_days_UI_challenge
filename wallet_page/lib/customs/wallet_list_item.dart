import 'package:flutter/material.dart';

ListTile listItems(
    {required context,
    required title,
    required subtitle,
    required Color color,
    required IconData icon}) {
  TextTheme textTheme = Theme.of(context).textTheme;
  return ListTile(
    leading: Container(
      width: 60,
      height: 60,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Icon(icon, color: Colors.white),
    ),
    title: Text(
      title,
      style: textTheme.titleLarge,
    ),
    subtitle: Text(subtitle),
    trailing: const Icon(
      Icons.arrow_forward_ios,
      size: 15,
    ),
  );
}
