import 'package:flutter/material.dart';
import 'package:wellnessclub/constants/theme.dart';

class CenterPiece extends StatelessWidget {
  final double width;
  final double height;
  const CenterPiece({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.15,
      height: width * 0.15,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: AppColors.color3),
      child: Center(
          child: Text(
        "Complete\n Wellness\n Challenges",
        textAlign: TextAlign.center,
        style: AppTextStyle(
                width: width, height: height, elementColor: AppColors.n1)
            .h4(),
      )),
    );
  }
}
