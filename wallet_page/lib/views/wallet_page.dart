import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_page/constants/theme_constants.dart';
import 'package:wallet_page/customs/action_button.dart';
import 'package:wallet_page/customs/card_stacks.dart';

import '../customs/wallet_list_item.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    TextTheme textTheme = Theme.of(context).textTheme;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.grey[100],
          child: Column(
            children: [
              //Top page Margin
              SizedBox(
                height: padding * 2,
              ),

              //Page Title
              Padding(
                padding: sidePadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                        text: TextSpan(
                      children: [
                        TextSpan(text: 'My', style: textTheme.displayMedium),
                        TextSpan(text: ' Cards', style: textTheme.displaySmall),
                      ],
                    )),
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.grey[700],
                    )
                  ],
                ),
              ),

              //Margin between Page header and Card Stacks
              SizedBox(
                height: padding,
              ),

              //Debit Card Stacks
              SizedBox(
                height: 200,
                width: screenWidth,
                child: PageView(
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    CardStacks(
                      availableWidth: screenWidth - 40,
                      color: Colors.blue,
                    ),
                    CardStacks(
                      availableWidth: screenWidth - 40,
                      color: Colors.blue[300]!,
                    ),
                    CardStacks(
                      availableWidth: screenWidth - 40,
                      color: Colors.blueAccent,
                    ),
                  ],
                ),
              ),

              //margin between Card stacks and Cards Page Controller
              const SizedBox(
                height: 10,
              ),

              //Debit cards page controller (scroll dots)
              SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: const SlideEffect(dotWidth: 7, dotHeight: 7),
              ),

              //Margin between Page Controllers and Action buttons
              SizedBox(
                height: padding,
              ),

              //Action buttons (Send, Pay Bills)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  actionButton(
                      iconColor: Colors.purpleAccent,
                      label: 'Send',
                      icon: Icons.reply_all),
                  actionButton(
                      iconColor: Colors.blue[400]!,
                      label: 'Pay',
                      icon: Icons.wallet),
                  actionButton(
                      iconColor: Colors.pinkAccent[100]!,
                      label: 'Bills',
                      icon: Icons.notes_rounded),
                ],
              ),

              //Margin between Actions buttons and List view
              SizedBox(
                height: padding * 2,
              ),

              //Statistics Listview
              Expanded(
                  child: ListView(
                children: [
                  listItems(
                    context: context,
                    title: 'Statistics',
                    subtitle: 'Payments and Income',
                    icon: Icons.radar_outlined,
                    color: Colors.purpleAccent,
                  ),
                  listItems(
                    context: context,
                    title: 'Transactions',
                    subtitle: 'Transaction history',
                    icon: Icons.notes,
                    color: Colors.blueAccent,
                  ),
                  listItems(
                    context: context,
                    title: 'Refunds',
                    subtitle: 'Fufunds log',
                    icon: Icons.replay_circle_filled_outlined,
                    color: Colors.pinkAccent,
                  ),
                ],
              ))
            ],
          ),
        ),

        //Floating action button
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pinkAccent,
          onPressed: () {},
          child: const Icon(
            Icons.save_alt_rounded,
            color: Colors.white,
          ),
        ),

        //Bottom Navigation bar
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.pinkAccent,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),
      ),
    );
  }
}
