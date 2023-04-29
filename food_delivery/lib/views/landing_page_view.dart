import 'package:flutter/material.dart';
import 'package:food_delivery/constants/theme_constants.dart';
import 'package:food_delivery/utilities/sample_data.dart';
import 'package:food_delivery/utilities/widget_functions.dart';

import '../utilities/custom/popular_foods.dart';

class LandingPageView extends StatelessWidget {
  const LandingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/tree_v.png',
                    height: 250,
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 50),
                    color: colorGreen,
                    child: Column(
                      children: [
                        Padding(
                          padding: sidePadding,
                          child: Row(
                            children: [
                              Image.asset('assets/images/identicon.png',
                                  height: 50, width: 50),
                              addVHorizontalSpace(10.0),
                              Expanded(
                                child: Text(
                                  'How Hungry are you Today?',
                                  style: textTheme.headlineSmall!
                                      .apply(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                        addVerticalSpace(padding),
                        Padding(
                          padding: sidePadding,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search Food items',
                              hintStyle: const TextStyle(color: Colors.white),
                              prefixIcon: const Icon(Icons.search),
                              prefixIconColor: Colors.white,
                              suffixIcon: Container(
                                  height: 58,
                                  decoration: const BoxDecoration(
                                      color: Colors.white30,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          bottomRight: Radius.circular(10))),
                                  child: const Icon(Icons.menu)),
                              suffixIconColor: Colors.white,
                              filled: true,
                              fillColor: Colors.white24,
                              border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  borderSide: BorderSide.none),
                            ),
                          ),
                        ),
                        addVerticalSpace(80.0),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  color: Colors.grey[200],
                  child: Column(children: [
                    addVerticalSpace(80.0),
                    Padding(
                      padding: sidePadding,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Popular Foods', style: textTheme.headlineSmall),
                          Text('View all  >',
                              style: textTheme.labelMedium
                                  ?.apply(color: Colors.amber[800]))
                        ],
                      ),
                    ),
                    addVerticalSpace(padding),
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                margin: EdgeInsets.only(left: padding),
                                padding: const EdgeInsets.all(15),
                                color: Colors.white,
                                width: MediaQuery.of(context).size.width * 0.55,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/${productData[index]['image']}',
                                          width: 100,
                                          height: 100,
                                        ),
                                      ],
                                    ),
                                    addVerticalSpace(20.0),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        '${productData[index]['name']}',
                                        style: textTheme.headlineSmall,
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.location_on,
                                          color: colorOrange,
                                          size: 15,
                                        ),
                                        Text(
                                          '${productData[index]['rest']}',
                                          style: textTheme.labelMedium,
                                        )
                                      ],
                                    ),
                                    addVerticalSpace(15.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber[600],
                                              size: 15,
                                            ),
                                            Text(
                                              ' ${productData[index]['rating']}',
                                              style: textTheme.titleSmall,
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '${productData[index]['currency']}'
                                          '${productData[index]['price']}',
                                          style: textTheme.titleSmall,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    addVerticalSpace(padding),
                  ]),
                ),
              )
            ],
          ),
          Positioned(
            top: 220,
            child: Container(
              height: 110,
              width: 1100,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: category
                        .map((value) => Container(
                              padding: const EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              margin: EdgeInsets.only(left: padding),
                              height: 90,
                              width: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                      'assets/images/${value['image']!}',
                                      height: 50,
                                      width: 50),
                                  addVerticalSpace(10.0),
                                  Text(value['name']!,
                                      style: textTheme.labelMedium)
                                ],
                              ),
                            ))
                        .toList()),
              ),
            ),
          ),
        ]),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.only(top: 15),
          child: BottomNavigationBar(
            elevation: 0,
            currentIndex: 0,
            selectedItemColor: colorGreen,
            unselectedItemColor: Colors.grey[400],
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.card_giftcard_rounded), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.location_on), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_rounded), label: '')
            ],
          ),
        ),
      ),
    );
  }
}
