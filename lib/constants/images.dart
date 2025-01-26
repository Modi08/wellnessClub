import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

String path = "assets/";

SvgPicture wellnessclubSymbol = SvgPicture.asset("${path}wellness-symbol.svg");
AssetImage backgroundImage = AssetImage("hero/background.jpeg");

Image journeyImage1 = Image.asset(
  "benefits/image-1.png",
  fit: BoxFit.cover,
);
Image journeyImage2 = Image.asset(
  "benefits/image-2.png",
  fit: BoxFit.cover,
);
