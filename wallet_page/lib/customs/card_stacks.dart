import 'package:flutter/material.dart';
import 'package:wallet_page/constants/theme_constants.dart';

class CardStacks extends StatelessWidget {
  const CardStacks({
    super.key,
    required this.availableWidth,
    required this.color,
  });

  final double availableWidth;
  final Color color;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Center(
      child: Container(
        height: 200,
        width: availableWidth,
        // margin: EdgeInsets.only(left: 20),
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'VISA',
                  style: textTheme.displayMedium!.apply(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Balance',
              style: textTheme.titleMedium!.apply(color: Colors.white),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              '\$5,250.20',
              style: textTheme.displayLarge!.apply(color: Colors.white),
            ),
            SizedBox(
              height: padding,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '****3456',
                  style: textTheme.titleMedium!.apply(color: Colors.white),
                ),
                Text(
                  '10/24',
                  style: textTheme.titleMedium!.apply(color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
