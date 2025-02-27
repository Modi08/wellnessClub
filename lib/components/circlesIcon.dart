import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wellnessclub/constants/theme.dart';

class CircleIcon extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final Uri link;
  const CircleIcon(
      {super.key,
      required this.width,
      required this.height,
      required this.text,
      required this.link});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.12,
      height: height * 0.12,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100.0),
        ),
        color: AppColors.color2,
      ),
      child: Column(children: [
        const Spacer(flex: 2),
        Text(
          text,
          style: AppTextStyle(
                  height: height, width: width, elementColor: AppColors.n1)
              .h6(),
        ),
        Spacer(flex: 1),
        ElevatedButton(
          onPressed: () {
            launchUrl(link);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.color1,
            foregroundColor: AppColors.n14,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            "Click to Join",
            style: AppTextStyle(width: width, height: height).body2(),
          ),
        ),
        const Spacer(flex: 2),
      ]),
    );
  }
}
