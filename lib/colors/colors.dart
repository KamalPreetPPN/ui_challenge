import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppColors {
  const AppColors();

  static  Color white = Colors.white;
  static  Color mainColor = HexColor('#19220D');
  static  Color secondaryColor = HexColor('#5A5A42');
  static  Color OnScreenbackground = HexColor('#EEEEEE');
  static  Color lightGrey = HexColor('#D2D2D4');
  static  Color lightGrey2 = HexColor('#ececee');
  static  Color darkGrey = HexColor('#AAAAAA');
  static  Color lightGreen = HexColor('#76984b');
  static  Color darkGreen = HexColor('#2E5111');
  static  Color darkGreen2 = HexColor('#67864c');
  static  Color dullGreen = HexColor('#9B9E5E');

  static const primaryGradient = LinearGradient(
    colors: [Color(0xFF5BC0FF), Color(0xFF0063FF)],
    stops: [0.0, 1.0],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const cardGradient = LinearGradient(
    colors: [Color(0xFF1e3c72), Color(0xFF2a5298)],
    stops: [0.0, 1.0],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
