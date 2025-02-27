import 'package:flutter/material.dart';

class AppColors {
  static const color1 = Color.fromARGB(255, 157, 79, 252);
  static const color2 = Color.fromARGB(255, 14, 205, 176);
  static const color3 = Color.fromARGB(255, 69, 231, 199);
  static const color4 = Color.fromARGB(255, 192, 232, 224);
  static const color5 = Color(0xFF858DFF);
  static const color6 = Color(0x00ff98e2);
  static const textColor = Color.fromRGBO(0, 0, 0, 1);

  static const stroke1 = Color(0xFF9BECfA);

  static const n1 = Color.fromARGB(255, 0, 0, 0);
  static const n2 = Color.fromARGB(255, 63, 175, 200);
  static const n3 = Color(0xFF03FCDB);
  static const n4 = Color(0xFFADD8E6);
  static const n5 = Color(0xFF87CEEB);
  static const n6 = Color(0xFF6495ED);
  static const n7 = Color(0xFF4682B4);
  static const n8 = Color.fromARGB(223, 248, 248, 248);
  static const n9 = Color(0xFFAE57FF);
  static const n10 = Color(0xFF708090);
  static const n11 = Color(0xFF2F4F4F);
  static const n12 = Color.fromARGB(255, 126, 126, 126);
  static const n13 = Color(0xFF808080);
  static const n14 = Color(0xFFE3E3E3);
}

class AppTextStyle {
  Color elementColor;
  double width;
  double height;
  AppTextStyle(
      {this.elementColor = Colors.black,
      required this.width,
      required this.height});

  TextStyle h1() {
    return TextStyle(
        fontSize: (width / height) * 50,
        fontWeight: FontWeight.w600,
        color: elementColor);
  }

  TextStyle h2() {
    return TextStyle(fontSize: 20, height: 2.5, color: elementColor);
  }

  TextStyle h3() {
    return TextStyle(
        fontSize: (width / height) * 25, height: 1, color: elementColor);
  }

  TextStyle h4() {
    return TextStyle(
        fontSize: ((width / height) * 12) + 2.5,
        fontWeight: FontWeight.bold,
        color: elementColor);
  }

  TextStyle h5() {
    return TextStyle(
        fontSize: (width / height) * 37,
        fontWeight: FontWeight.w600,
        color: elementColor);
  }

  TextStyle h6() {
    return TextStyle(
      fontSize: 14,
      height: 8 / 14,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle body1() {
    return TextStyle(
        fontSize: ((width / height) * 10) + 2.5,
        height: 1.5 / 0.875,
        color: elementColor);
  }

  TextStyle body2() {
    return TextStyle(
      fontSize: ((width / height) * 7) + 2.5,
      fontWeight: FontWeight.w300,
    );
  }

  TextStyle caption() {
    return TextStyle(
      fontSize: 12,
    );
  }

  TextStyle tagline() {
    return TextStyle(
      fontSize: 10,
      letterSpacing: 0.15,
      fontFamily: 'Grotesk',
      fontWeight: FontWeight.w300,
    );
  }

  TextStyle quote() {
    return TextStyle(
      fontSize: 16,
      height: 1,
      fontFamily: 'Code',
    );
  }

  TextStyle button() {
    return TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w700,
      letterSpacing: 1,
      fontFamily: 'Code',
    );
  }
}

class AppSpacing {
  static const s025 = 0.0625;
  static const s75 = 1.875;
  static const s15 = 3.75;
}
