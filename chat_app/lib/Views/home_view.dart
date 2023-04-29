import 'package:chat_app/helpers.dart';
import 'package:chat_app/pages/pages.dart';
import 'package:chat_app/theme.dart';
import 'package:chat_app/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final pages = const [
    MessagesPage(),
    NotificationsPage(),
    CallsPage(),
    ContactsPage()
  ];
  final pageTitleList = const [
    'Messages',
    'Notifications',
    'Calls',
    'Contacts'
  ];

  final ValueNotifier<int> pageIndex = ValueNotifier(0);
  final ValueNotifier<String> pageTitle = ValueNotifier('Messages');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //App Bar
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: ValueListenableBuilder(
            valueListenable: pageTitle,
            builder: (BuildContext context, String value, _) {
              return Text(
                pageTitle.value,
                style: const TextStyle(fontSize: 16),
              );
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Avatar.small(Helpers.randompictures()),
            ),
          ],
          leadingWidth: 54,
          leading: Align(
            alignment: Alignment.centerRight,
            child: CustomIconButton(
              icon: Icons.search_rounded,
              onTap: () {},
            ),
          ),
        ),

        //Body
        body: ValueListenableBuilder(
            valueListenable: pageIndex,
            builder: (BuildContext context, int value, _) {
              return pages[value];
            }),

        // Bottom navigation bar
        bottomNavigationBar: _BottomNavBar(
          onItemSelected: (index) {
            pageIndex.value = index;
            pageTitle.value = pageTitleList[index];
          },
        ),
      ),
    );
  }
}

//Bottom Nav bar widget
class _BottomNavBar extends StatefulWidget {
  const _BottomNavBar({
    super.key,
    required this.onItemSelected,
  });
  final ValueChanged<int> onItemSelected;

  @override
  State<_BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<_BottomNavBar> {
  var selectedIndex = 0;
  void handleItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
    widget.onItemSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BottomNavItem(
          label: 'Messages',
          icon: CupertinoIcons.chat_bubble_2_fill,
          index: 0,
          onTap: (index) {
            handleItemSelected(index);
          },
          isSelected: (selectedIndex == 0),
        ),
        BottomNavItem(
          label: 'Notifications',
          icon: CupertinoIcons.bell_fill,
          index: 1,
          onTap: (index) {
            handleItemSelected(index);
          },
          isSelected: (selectedIndex == 1),
        ),
        BottomNavItem(
          label: 'Calls',
          icon: CupertinoIcons.phone_fill,
          index: 2,
          onTap: (index) {
            handleItemSelected(index);
          },
          isSelected: (selectedIndex == 2),
        ),
        BottomNavItem(
          label: 'Contacts',
          icon: CupertinoIcons.person_2_fill,
          index: 3,
          onTap: (index) {
            handleItemSelected(index);
          },
          isSelected: (selectedIndex == 3),
        ),
      ],
    );
  }
}

//Bottom nav bar Item widget
class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    super.key,
    required this.label,
    required this.icon,
    required this.index,
    required this.onTap,
    this.isSelected = false,
  });

  final String label;
  final IconData icon;
  final int index;
  final bool isSelected;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        onTap(index);
      },
      child: SizedBox(
        height: 50,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 20,
              color: isSelected ? AppColors.secondary : null,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              label,
              style: isSelected
                  ? const TextStyle(
                      fontSize: 12,
                      color: AppColors.secondary,
                      fontWeight: FontWeight.bold)
                  : const TextStyle(
                      fontSize: 12,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
