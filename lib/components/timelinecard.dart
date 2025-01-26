import 'package:flutter/material.dart';
import 'package:wellnessclub/constants/content.dart';
import 'package:wellnessclub/constants/theme.dart';

class EventCard extends StatelessWidget {
  final double width;
  final double height;
  final bool isPast;
  final int index;
  const EventCard(
      {super.key,
      required this.width,
      required this.height,
      required this.isPast,
      required this.index});

  List<Widget> buildBulletpointList(List bulletpointList) {
    return bulletpointList.map((item) {
      return SizedBox(
        width: width * 0.3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item,
              style: AppTextStyle(width: width, height: height).body2(),
              textAlign: TextAlign.center,
              softWrap: true,
            ),
            SizedBox(height: height * 0.02),
          ],
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> bulletpointWidget =
        buildBulletpointList(timeline[index]["points"]);
    return Row(
      children: [
        Padding(
            padding: EdgeInsets.all(width * 0.00833),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      timeline[index]["Title"],
                      style: AppTextStyle(width: width, height: height).h4(),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(height: height * 0.03),
                SizedBox(
                  width: width * 0.3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: bulletpointWidget,
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
