import 'package:chat_app/Views/home_view.dart';
import 'package:chat_app/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme().dark,
      darkTheme: AppTheme().dark,
      home: HomeView(),
    );
  }
}
