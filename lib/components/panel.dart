import 'package:flutter/material.dart';
import 'package:wellnessclub/constants/theme.dart';

// ignore: must_be_immutable
class Panel extends StatefulWidget {
  Panel(
      {super.key,
      required this.title,
      required this.width,
      required this.selected});
  final String title;
  final double width;
  bool selected;

  @override
  State<Panel> createState() => _PanelState();
}

class _PanelState extends State<Panel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.title,
            style: AppTextStyle(elementColor: AppColors.n1, width: 0, height: 0)
                .h2()),
        widget.selected
            ? Container(
                height: 2.5,
                width: widget.width,
                decoration: BoxDecoration(
                    color: AppColors.textColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: AppColors.textColor)))
            : SizedBox(height: 2.5),
        const SizedBox(height: 15)
      ],
    );
  }
}
