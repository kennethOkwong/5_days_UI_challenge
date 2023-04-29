import 'package:flutter/material.dart';

Column actionButton(
    {required IconData icon, required String label, required Color iconColor}) {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              color: Colors.grey[300]!,
            )
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                blurRadius: 1,
                color: Colors.grey[300]!,
              )
            ],
          ),
          child: Container(
            // padding: const EdgeInsets.all(5),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 1,
                  color: Colors.grey[300]!,
                )
              ],
            ),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      Text(label)
    ],
  );
}
