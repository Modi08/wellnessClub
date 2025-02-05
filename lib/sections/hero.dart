import 'package:flutter/material.dart';
import 'package:wellnessclub/constants/images.dart';
import 'package:wellnessclub/constants/theme.dart';

class HeroSection extends StatefulWidget {
  final double width;
  final double height;
  const HeroSection({super.key, required this.width, required this.height});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: widget.width,
        height: widget.width * 0.55,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            image: DecorationImage(image: backgroundImage, fit: BoxFit.cover)),
        child: Center(
            child: Text(
          "Welcome to the ISA Wellness Club",
          style: AppTextStyle(
                  elementColor: AppColors.n2,
                  width: widget.width,
                  height: widget.height)
              .h1(),
          textAlign: TextAlign.center,
        )),
      ),
    );
  }
}
