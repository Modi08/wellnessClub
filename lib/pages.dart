import 'package:flutter/material.dart';
import 'package:wellnessclub/Sections/homePage/hero.dart';
import 'package:wellnessclub/components/circularLayout.dart';
import 'package:wellnessclub/constants/theme.dart';
import 'package:wellnessclub/sections/challengesPage/centerPiece.dart';
import 'package:wellnessclub/sections/homePage/impact.dart';
import 'package:wellnessclub/sections/homePage/intro.dart';
import 'package:wellnessclub/sections/homePage/journey.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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

class ChallengePage extends StatelessWidget {
  const ChallengePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    List<Widget> circles = [Container(width: width * 0.15,
      height: width * 0.05,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: AppColors.color5),),
          Container(width: width * 0.15,
      height: width * 0.05,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: AppColors.color5),),
          Container(width: width * 0.15,
      height: width * 0.05,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: AppColors.color5),),
          Container(width: width * 0.15,
      height: width * 0.05,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: AppColors.color5),),
          Container(width: width * 0.15,
      height: width * 0.05,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: AppColors.color5),),
          Container(width: width * 0.15,
      height: width * 0.05,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: AppColors.color5),)];

    return SingleChildScrollView(
      child: SizedBox(
        height: height - 75,
        width: width,
        child: Stack(alignment: AlignmentDirectional.center, children: [
          CenterPiece(height: height, width: width),
          CircularLayout(radius: width*0.1, height: height, width: width, children: circles)
        ]),
      ),
    );
  }
}

class ImpactPage extends StatelessWidget {
  const ImpactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
