import 'package:flutter/material.dart';
import 'package:wellnessclub/constants/content.dart';
import 'package:wellnessclub/constants/theme.dart';

class OurImpactSection extends StatelessWidget {
  final double width;
  final double height;
  const OurImpactSection(
      {super.key, required this.width, required this.height});

  List<Widget> buildTextWigets(List<String> textList, int index) {
    return textList.map((text) {
      return Text(text.substring(0, text.length - 1),
          style: index == 0
              ? AppTextStyle(
                      width: width,
                      height: height,
                      elementColor: text[text.length - 1] == "f"
                          ? AppColors.n3
                          : AppColors.n6)
                  .h5()
              : (index == 1
                  ? AppTextStyle(
                          width: width,
                          height: height,
                          elementColor: text[text.length - 1] == "f"
                              ? AppColors.n3
                              : AppColors.n6)
                      .h3()
                  : AppTextStyle(
                          width: width,
                          height: height,
                          elementColor: text[text.length - 1] == "f"
                              ? AppColors.n3
                              : AppColors.n6)
                      .h4()));
    }).toList();
  }

  List<Widget> buildListTextWidgets() {
    List<Widget> list = [];
    for (int i = 0; i < impacts.length; i++) {
      Widget text = Padding(
          padding: EdgeInsets.fromLTRB(width * 0.025, 0, 0, 0),
          child: i < 2
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: buildTextWigets(impacts[i], i))
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: buildTextWigets([impacts[i][0]], i)),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: buildTextWigets([impacts[i][1]], i)),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: buildTextWigets(
                            impacts[i].sublist(2, impacts[i].length), i)),
                  ],
                ));
      list.add(text);
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> listTextWidgets = buildListTextWidgets();

    return Column(
      children: [
        SizedBox(height: height * 0.1),
        Row(
          children: [
            const Spacer(),
            Column(children: [
              Row(
                children: [
                  Container(
                      width: width * 0.45,
                      height: height * 0.6,
                      color: AppColors.color3,
                      child: listTextWidgets[0]),
                  Container(
                      width: width * 0.15,
                      height: height * 0.6,
                      color: AppColors.color4,
                      child: listTextWidgets[1])
                ],
              ),
              Row(
                children: [
                  Container(
                      width: width * 0.3,
                      height: height * 0.2,
                      color: AppColors.color2,
                      child: listTextWidgets[2]),
                  Container(
                      width: width * 0.3,
                      height: height * 0.2,
                      color: AppColors.color1,
                      child: listTextWidgets[3])
                ],
              )
            ]),
            const Spacer()
          ],
        ),
        SizedBox(height: height * 0.1),
      ],
    );
  }
}
