import 'package:flutter/material.dart';
import 'package:wellnessclub/constants/theme.dart';
import 'package:wellnessclub/pages.dart';
import 'package:wellnessclub/sections/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int pageSelected = 0;
  List<Widget> pages = [
    HomePage(),
    ChallengePage(),
    ImpactPage()
  ];

  @override
  Widget build(BuildContext context) {
    void selectPage(int page) {
      setState(() {
        pageSelected = page;
      });
    }

    AppBar Header = header(pageSelected, selectPage);

    return MaterialApp(
      home: Scaffold(
        appBar: Header,
        body: pages[pageSelected],
        backgroundColor: AppColors.n8,
      ),
    );
  }
}
