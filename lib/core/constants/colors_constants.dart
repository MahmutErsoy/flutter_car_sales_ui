import 'package:flutter/material.dart';

class ColorConstants {
  static final ColorConstants _instance = ColorConstants._init();
  static ColorConstants get instance => ColorConstants._instance;

  Color blueRibbon = const Color(0xff006AFF);
  Color jungleGreen = const Color(0xff25AE87);
  Color gray = const Color(0xff908e8e);

  // new app colors

  Color blazeOrange = const Color(0xffFF5C00);
  Color mercury = const Color(0xffE5E5E5);
  Color black = const Color(0xff000000);
  Color white = const Color(0xffFFFFFF);
  Color grayChateau = const Color(0xffA8AFB9);
  Color blackPearl = const Color(0xff040415);
  Color silver = const Color(0xffC4C4C4);
  Color osloGray = const Color(0xff8C9199);
  Color porcelain = const Color(0xffEDEEEF);
  Color azureRadiance = const Color(0xff007AFF);

  ColorConstants._init();
}
