import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetColor {
  static const Color darkBlueVTB = Color(0xff02298C);
  static const Color lightCircle = Color(0xff00A5FF);
  static const Color dark2 = Color(0xff295CA9);
  static const Color mainVTB = Color(0xff3A83F1);
}

class GetTextStyle {
  static TextStyle smallGrey = GoogleFonts.roboto(
      fontWeight: FontWeight.w400,
      fontSize: 10,
      color: Color.fromARGB(204, 47, 52, 65));

  static TextStyle header = GoogleFonts.roboto(
      fontWeight: FontWeight.w500, fontSize: 24, color: Colors.white);

  static TextStyle desc = GoogleFonts.roboto(
      fontWeight: FontWeight.w300, fontSize: 18, color: Colors.white);

  //for dialog
  static TextStyle verySmall = GoogleFonts.roboto(
      fontWeight: FontWeight.w300, fontSize: 9, color: Colors.black);

  static TextStyle dialogHeader = GoogleFonts.roboto(
  fontWeight: FontWeight.w400, fontSize: 18, color: Colors.black);

  static TextStyle normal = GoogleFonts.roboto(
      fontWeight: FontWeight.w500, fontSize: 12, color: Colors.black);

  static TextStyle desc2 = GoogleFonts.roboto(
      fontWeight: FontWeight.w300, fontSize: 18, color: Colors.black);
}
