import 'package:flutter/material.dart';
import 'package:wallet_page/constants/theme_constants.dart';
import 'package:wallet_page/views/wallet_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: defaultTextTheme),
      home: const WalletPage(),
    );
  }
}
