import 'package:flutter/material.dart';
import 'package:wellnessclub/components/panel.dart';
import 'package:wellnessclub/constants/images.dart';
import 'package:wellnessclub/constants/theme.dart';

AppBar header(int pageSelected, Function selectPage) {
  return AppBar(
      toolbarHeight: 75,
      leadingWidth: 0,
      backgroundColor: AppColors.n8,
      actions: [
        const SizedBox(width: 50),
        SizedBox(
          width: 75,
          height: 75,
          child: wellnessclubSymbol,
        ),
        const Spacer(),
        Column(
          children: [
            const Spacer(),
            TextButton(
                onPressed: () {
                  selectPage(0);
                },
                child: Panel(
                    title: "Our Journey",
                    width: 125,
                    selected: pageSelected == 0)),
          ],
        ),
        Column(
          children: [
            const Spacer(),
            TextButton(
                onPressed: () {
                  selectPage(1);
                },
                child: Panel(
                    title: "Challenges",
                    width: 125,
                    selected: pageSelected == 1)),
          ],
        ),
        Column(
          children: [
            const Spacer(),
            TextButton(
                onPressed: () {
                  selectPage(2);
                },
                child: Panel(
                    title: "Impact", width: 100, selected: pageSelected == 2)),
          ],
        ),
        const Spacer()
      ]);
}
