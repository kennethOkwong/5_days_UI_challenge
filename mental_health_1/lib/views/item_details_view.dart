import 'package:flutter/material.dart';
import 'package:mental_health_1/customs/border_box.dart';
import 'package:mental_health_1/customs/options_button.dart';
import 'package:mental_health_1/utilities/constants/theme_constants.dart';
import 'package:mental_health_1/utilities/sample_data.dart';
import 'package:mental_health_1/utilities/widget_functions.dart';

class ItemDetailsView extends StatefulWidget {
  const ItemDetailsView({super.key});

  @override
  State<ItemDetailsView> createState() => _ItemDetailsViewState();
}

class _ItemDetailsViewState extends State<ItemDetailsView> {
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    final key = [
      'Square foot',
      'Bedrooms',
      'Bathrooms',
      'Garage',
      'Rooms',
      'Palour'
    ];
    final value = ['1.416', '4', '2', '2', '4', '1'];
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  Image.asset('assets/images/image_2.jpg'),
                  Padding(
                    padding: sidePadding,
                    child: Container(
                      padding: EdgeInsets.only(top: padding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          BorderBox(
                            height: 50,
                            width: 50,
                            color: Colors.transparent,
                            borderColor: colorWhite,
                            child: Icon(
                              Icons.arrow_back_rounded,
                              color: colorWhite,
                            ),
                          ),
                          BorderBox(
                            height: 50,
                            width: 50,
                            color: Colors.transparent,
                            borderColor: colorWhite,
                            child: Icon(
                              Icons.favorite_border_outlined,
                              color: colorWhite,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ]),
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        addVerticalSpace(padding),
                        Padding(
                          padding: sidePadding,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '\$200,000',
                                    style: themeData.textTheme.displayMedium,
                                  ),
                                  Text(
                                    'Jenison, 49428, SF',
                                    style: themeData.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                              BorderBox(
                                width: 120,
                                height: 40,
                                child: Text(
                                  '20 hours ago',
                                  style: themeData.textTheme.headlineSmall,
                                ),
                              )
                            ],
                          ),
                        ),
                        addVerticalSpace(padding),
                        Padding(
                          padding: sidePadding,
                          child: Text(
                            'House Information',
                            style: themeData.textTheme.headlineMedium,
                          ),
                        ),
                        addVerticalSpace(padding),
                        SizedBox(
                          height: 100,
                          child: ListView.builder(
                              itemCount: key.length,
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: Column(
                                    children: [
                                      BorderBox(
                                        height: 60,
                                        width: 70,
                                        child: Text(
                                          value[index],
                                          style:
                                              themeData.textTheme.headlineLarge,
                                        ),
                                      ),
                                      addVerticalSpace(10),
                                      Text(
                                        key[index],
                                        style: themeData.textTheme.labelLarge,
                                      )
                                    ],
                                  ),
                                );
                              }),
                        ),
                        addVerticalSpace(padding),
                        Padding(
                          padding: sidePadding,
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper a lacus vestibulum sed arcu non odio. Diam in arcu cursus euismod quis. Lorem donec massa sapien faucibus et molestie. Maecenas accumsan lacus vel facilisis volutpat. Sapien nec sagittis aliquam malesuada bibendum arcu. Nulla pharetra diam sit amet nisl suscipit adipiscing bibendum est. At tempor commodo ullamcorper a lacus vestibulum sed. Ultrices mi tempus imperdiet nulla malesuada pellentesque elit eget. Erat nam at lectus urna duis convallis convallis. Maecenas volutpat blandit aliquam etiam erat velit scelerisque. Tincidunt vitae semper quis lectus nulla at volutpat. Quis auctor elit sed vulputate mi sit amet mauris. Eget lorem dolor sed viverra ipsum nunc. Pulvinar neque laoreet suspendisse interdum consectetur. Massa vitae tortor condimentum lacinia quis vel. Pellentesque pulvinar pellentesque habitant morbi tristique. Viverra nibh cras pulvinar mattis nunc sed. Nisl vel pretium lectus quam id leo in vitae.',
                            style: themeData.textTheme.bodyMedium,
                            textAlign: TextAlign.justify,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              bottom: padding,
              child: Row(
                children: [
                  const OptionButton(
                    width: 120,
                    text: 'Message',
                    icon: Icons.mail,
                  ),
                  addHorizontalSpace(padding),
                  const OptionButton(
                    width: 120,
                    text: 'Call',
                    icon: Icons.call,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
