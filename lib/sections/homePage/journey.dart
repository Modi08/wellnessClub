import 'package:flutter/material.dart';
import 'package:wellnessclub/components/agendaTiles.dart';
import 'package:wellnessclub/constants/images.dart';
import 'package:wellnessclub/constants/theme.dart';

class JourneySection extends StatefulWidget {
  final double width;
  final double height;
  const JourneySection({super.key, required this.width, required this.height});

  @override
  State<JourneySection> createState() => _JourneySectionState();
}

class _JourneySectionState extends State<JourneySection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Our Journey",
            style: AppTextStyle(
                    width: widget.width,
                    height: widget.height,
                    elementColor: AppColors.n12)
                .h3()),
        Container(
          width: widget.width,
          height: widget.height,
          padding: EdgeInsets.only(left: widget.width * 0.15),
          child: ListView(
            children: [
              AgendaTiles(
                isFirst: true,
                isLast: false,
                isPast: true,
                width: widget.width,
                height: widget.height,
                image: journeyImage1,
                index: 0,
              ),
              AgendaTiles(
                isFirst: false,
                isLast: false,
                isPast: false,
                width: widget.width,
                height: widget.height,
                image: journeyImage1,
                index: 1,
              ),
              AgendaTiles(
                isFirst: false,
                isLast: true,
                isPast: false,
                width: widget.width,
                height: widget.height,
                image: journeyImage2,
                index: 2,
              )
            ],
          ),
        ),
      ],
    );
  }
}
