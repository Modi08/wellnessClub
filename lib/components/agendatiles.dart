import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:wellnessclub/components/hoverbackground.dart';
import 'package:wellnessclub/constants/theme.dart';

class AgendaTiles extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final double width;
  final double height;
  final Image image;
  final int index;
  const AgendaTiles(
      {super.key,
      required this.isFirst,
      required this.isLast,
      required this.isPast,
      required this.width,
      required this.height,
      required this.image,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height / 3,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle:
            LineStyle(color: isPast ? AppColors.color3 : AppColors.color4),
        indicatorStyle: IndicatorStyle(
            width: width * 0.02,
            color: isPast ? AppColors.color3 : AppColors.color4,
            iconStyle: IconStyle(
                iconData: Icons.done,
                color: isPast ? Colors.white : AppColors.color4)),
        endChild: HoverImageBackground(
            image: image,
            width: width,
            height: height,
            isPast: isPast,
            index: index),
      ),
    );
  }
}
