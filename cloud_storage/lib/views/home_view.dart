import 'package:cloud_storage/custom/border_box.dart';
import 'package:cloud_storage/custom/recent_update_border_box.dart';
import 'package:cloud_storage/custom/stotage_portions.dart';
import 'package:flutter/material.dart';

import '../constants/theme_constants.dart';
import '../utilities/widget_fucntions.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: padding),
              color: colorBlue,
              height: 120,
              child: Padding(
                padding: sidePadding,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Riotters',
                          style: textThme(context)
                              .displayLarge!
                              .apply(color: Colors.white),
                        ),
                        Text(
                          'Team folder',
                          style: textThme(context)
                              .titleSmall!
                              .apply(color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const BorderBox(
                            child: Icon(Icons.search, color: Colors.white)),
                        addHorizontalSpace(10),
                        const BorderBox(
                            child: Icon(Icons.notifications_none,
                                color: Colors.white))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            addVerticalSpace(padding),
            Padding(
              padding: sidePadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Storage',
                        style: textThme(context).displayMedium,
                      ),
                      addHorizontalSpace(5),
                      Text(
                        '9.1/10GB',
                        style: textThme(context).displaySmall,
                      ),
                    ],
                  ),
                  Text(
                    'Upgrade',
                    style:
                        textThme(context).titleLarge!.apply(color: colorBlue),
                  )
                ],
              ),
            ),
            addVerticalSpace(padding),
            Padding(
              padding: sidePadding,
              child: Row(
                children: [
                  const StoragePortions(
                    name: 'Videos',
                    color: Colors.blue,
                    percentage: 20,
                  ),
                  addHorizontalSpace(3.0),
                  const StoragePortions(
                    name: 'Docs',
                    color: Colors.red,
                    percentage: 20,
                  ),
                  addHorizontalSpace(3.0),
                  const StoragePortions(
                    name: 'Images',
                    color: Colors.amber,
                    percentage: 20,
                  ),
                  addHorizontalSpace(3.0),
                  StoragePortions(
                    name: '',
                    color: Colors.grey[300]!,
                    percentage: 20,
                  )
                ],
              ),
            ),
            addVerticalSpace(padding),
            const Divider(
              height: 0,
            ),
            addVerticalSpace(padding * 1.5),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Padding(
                    padding: sidePadding,
                    child: Text(
                      'Recently updated',
                      style: textThme(context).displayMedium,
                    ),
                  ),
                  addVerticalSpace(10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const RecentUpdateBorderBox(
                          imageUrl: 'gem.png',
                          label: ['Desktop', 'Sketch'],
                        ),
                        addHorizontalSpace(15.0),
                        const RecentUpdateBorderBox(
                          imageUrl: 'gem.png',
                          label: ['Desktop', 'Sketch'],
                        ),
                        addHorizontalSpace(15.0),
                        const RecentUpdateBorderBox(
                          imageUrl: 'p_icon.png',
                          label: ['Interaction', 'prd'],
                        ),
                      ],
                    ),
                  ),
                  addVerticalSpace(padding * 2),
                  const Divider(
                    height: 0,
                  ),
                  addVerticalSpace(padding * 1.5),
                  Padding(
                    padding: sidePadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Projects',
                          style: textThme(context).displayMedium,
                        ),
                        addHorizontalSpace(5),
                        Text(
                          'Create new',
                          style: textThme(context)
                              .titleLarge!
                              .apply(color: colorBlue),
                        )
                      ],
                    ),
                  ),
                  addVerticalSpace(padding),
                  folders(context, 'Chatbox'),
                  folders(context, 'TimeNote'),
                  folders(context, 'Meetings'),
                  folders(context, 'Confidentials'),
                  folders(context, 'All'),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.timelapse_sharp,
                )),
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.card_giftcard_outlined),
            ),
          ],
        ),
      ),
    );
  }

  Padding folders(BuildContext context, String text) {
    return Padding(
      padding: sidePadding,
      child: Container(
        margin: const EdgeInsets.only(bottom: 5),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.folder, color: Colors.blue[300]),
                addHorizontalSpace(10.0),
                Text(
                  text,
                  style: textThme(context).titleLarge,
                ),
              ],
            ),
            const Icon(
              Icons.more_vert,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
