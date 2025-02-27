import 'dart:math';
import 'package:flutter/material.dart';

class CircularLayout extends StatelessWidget {
  final List<Widget> children;
  final double radius;
  final double height;
  final double width;

  const CircularLayout({super.key, required this.children, required this.radius, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
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
              left: x - 1,
              top: y - 1,
              child: children[index],
            );
          }),
        ),
      );
  }
}