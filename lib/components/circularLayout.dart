import 'dart:math';
import 'package:flutter/material.dart';
import 'package:wellnessclub/components/circlesIcon.dart';
import 'package:wellnessclub/constants/content.dart';

class CircularLayout extends StatelessWidget {
  final double radius;
  final double height;
  final double width;
  const CircularLayout(
      {super.key,
      required this.radius,
      required this.height,
      required this.width});

  List<Widget> buildIconList() {
    return challenges
        .map((item) => CircleIcon(width: width, height: height, text: item[0], link: Uri.parse(item[1]),))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> children = buildIconList();
    
    int count = children.length;
    double angleIncrement = 2 * pi / count;
    double centerX = radius;
    double centerY = radius;

    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: List.generate(count, (index) {
          double angle = index * angleIncrement;
          double x = centerX + radius * cos(angle);
          double y = centerY + radius * sin(angle);

          return Positioned(
            left: x + width * 0.26,
            top: y + height * 0.08,
            child: children[index],
          );
        }),
      ),
    );
  }
}
