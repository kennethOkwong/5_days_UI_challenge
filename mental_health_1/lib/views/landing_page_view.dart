import 'package:flutter/material.dart';
import 'package:mental_health_1/customs/border_box.dart';
import 'package:mental_health_1/customs/options_button.dart';
import 'package:mental_health_1/customs/real_estate_items.dart';
import 'package:mental_health_1/utilities/constants/theme_constants.dart';
import 'package:mental_health_1/utilities/sample_data.dart';
import 'package:mental_health_1/utilities/widget_functions.dart';
import 'package:mental_health_1/customs/choiced_options.dart';

class LandingPageView extends StatefulWidget {
  const LandingPageView({super.key});

  @override
  State<LandingPageView> createState() => _LandingPageViewState();
}

class _LandingPageViewState extends State<LandingPageView> {
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addVerticalSpace(padding),
                Padding(
                  padding: sidePadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      BorderBox(
                          width: 50,
                          height: 50,
                          child: Icon(Icons.menu, color: colorBlack)),
                      BorderBox(
                          width: 50,
                          height: 50,
                          child: Icon(Icons.settings, color: colorBlack)),
                    ],
                  ),
                ),
                addVerticalSpace(padding),
                Padding(
                  padding: sidePadding,
                  child: Text('City', style: themeData.textTheme.bodyMedium),
                ),
                Padding(
                  padding: sidePadding,
                  child: Text('Lagos, Nigeria',
                      style: themeData.textTheme.displayMedium),
                ),
                Padding(
                  padding: sidePadding,
                  child: Divider(
                    height: padding,
                    color: colorGrey,
                  ),
                ),
                addVerticalSpace(6),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: [
                    '\$20,00.00',
                    'For sale',
                    '3-4 Beds',
                    'A home',
                    '\$500.00'
                  ].map((value) => ChoicedOptions(text: value)).toList()),
                ),
                addVerticalSpace(padding),
                Expanded(
                  child: Padding(
                    padding: sidePadding,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: sampleData.length,
                      itemBuilder: (context, index) {
                        return RealEstateItems(index: index);
                      },
                    ),
                  ),
                ),
              ],
            ),
            const Positioned(
              bottom: 20,
              child:
                  OptionButton(width: 130, text: 'Map View', icon: Icons.map),
            )
          ],
        ),
      ),
    );
  }
}
