import 'package:flutter/material.dart';
import 'package:wellnessclub/Sections/hero.dart';
import 'package:wellnessclub/constants/theme.dart';
import 'package:wellnessclub/sections/header.dart';
import 'package:wellnessclub/sections/impact.dart';
import 'package:wellnessclub/sections/intro.dart';
import 'package:wellnessclub/sections/journey.dart';

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

  @override
  Widget build(BuildContext context) {
    void selectPage(int page) {
      setState(() {
        pageSelected = page;
      });
    }

    // ignore: non_constant_identifier_names
    AppBar Header = header(pageSelected, selectPage);

    return MaterialApp(
      home: Scaffold(
        appBar: Header,
        body: HomePage(),
        backgroundColor: AppColors.n8,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeroSection(
            width: width,
            height: height,
          ),
          InrtoductionSection(width: width, height: height),
          JourneySection(width: width, height: height),
          OurImpactSection(width: width, height: height)
        ],
      ),
    );
  }
}
