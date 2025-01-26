import 'package:flutter/material.dart';
import 'package:wellnessclub/constants/images.dart';
import 'package:wellnessclub/constants/theme.dart';

class InrtoductionSection extends StatefulWidget {
  final double width;
  final double height;
  const InrtoductionSection(
      {super.key, required this.width, required this.height});

  @override
  State<InrtoductionSection> createState() => _InrtoductionSectionState();
}

class _InrtoductionSectionState extends State<InrtoductionSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.width,
        height: widget.height * 0.4,
        padding: EdgeInsets.fromLTRB(
            widget.width * 0.26, widget.height * 0.04, widget.width * 0.26, 0),
        child: Column(
          children: [
            SizedBox(
              width: widget.width * 0.05,
              height: widget.height * 0.1,
              child: wellnessclubSymbol,
            ),
            SizedBox(height: widget.height * 0.04),
            Text(
              "At the ISA Wellness Club, we’re dedicated to improving the mental and physical health of our community. From hosting events to creating innovative solutions for wellbeing, we’re here to make life better for everyone. Explore our journey and get inspired to join us!",
              style: AppTextStyle(
                      elementColor: AppColors.n1,
                      width: widget.width,
                      height: widget.height)
                  .body1(),
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
