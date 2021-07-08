import 'package:flutter/material.dart';

Map<int, Color> color = {
  50: Color.fromRGBO(0, 0, 0, .1),
  100: Color.fromRGBO(0, 0, 0, .2),
  200: Color.fromRGBO(0, 0, 0, .3),
  300: Color.fromRGBO(0, 0, 0, .4),
  400: Color.fromRGBO(0, 0, 0, .5),
  500: Color.fromRGBO(0, 0, 0, .6),
  600: Color.fromRGBO(0, 0, 0, .7),
  700: Color.fromRGBO(0, 0, 0, .8),
  800: Color.fromRGBO(0, 0, 0, .9),
  900: Color.fromRGBO(0, 0, 0, 1),
};

MaterialColor colorPrimary = MaterialColor(0xFFFF8F00, color);
MaterialColor colorSecondary = MaterialColor(0xFFED7200, color);
MaterialColor colorAccent = MaterialColor(0xFFD31E0F, color);
MaterialColor colorNeutral = MaterialColor(0xFFFFFFFF, color);
MaterialColor colorNeutral2 = MaterialColor(0xFFF0F0F0, color);
