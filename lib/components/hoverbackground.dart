import 'package:flutter/material.dart';
import 'package:wellnessclub/components/timelinecard.dart';
import 'package:wellnessclub/constants/theme.dart';

class HoverImageBackground extends StatefulWidget {
  final Image image;
  final double width;
  final double height;
  final bool isPast;
  final int index;
  const HoverImageBackground(
      {super.key,
      required this.image,
      required this.width,
      required this.height,
      required this.isPast,
      required this.index});

  @override
  State<HoverImageBackground> createState() => _HoverImageState();
}

class _HoverImageState extends State<HoverImageBackground> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: widget.width * 0.15,
        ),
        Container(
          width: widget.width * 0.35,
          height: widget.height * 0.3,
          color: widget.isPast ? AppColors.color3 : AppColors.color4,
          child: MouseRegion(
            onEnter: (event) => setState(() => _isHovering = true),
            onExit: (event) => setState(() => _isHovering = false),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              child: Stack(
                children: [
                  Container(
                    width: widget.width * 0.35,
                    height: widget.height * 0.3,
                    child: Opacity(
                      opacity: _isHovering ? 0.5 : 0,
                      child: widget.image,
                    ),
                  ),
                  Center(
                    child: EventCard(
                      width: widget.width,
                      height: widget.height,
                      isPast: widget.isPast,
                      index: widget.index,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
