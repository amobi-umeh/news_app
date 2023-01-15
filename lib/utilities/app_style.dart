import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//?White
const Color kWhite = Color(0xffffffff);
const Color kLightWhite = Color(0xffeff5f4);
const Color kLighterWhite = Color(0xfffcfcfc);

//?Grey
const Color kGrey = Color(0xff9397a0);
const Color kLightGrey = Color(0xffa7a7a7);

//?Blue
const Color kBlue = Color(0xff5474df);
const Color kLightBlue = Color(0xff83b1ff);
const Color kLighterBlue = Color(0xffc1d4f9);

//?Dark blue
const Color kDarkBlue = Color(0xff19202d);

//?BorderColor
const Color kBorderColor = Color(0xffEEEEEE);

//?BorderRadius
const double kBorderRadius = 16;
final kborder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kBorderRadius),
  borderSide: BorderSide.none,
);

//?Fonts
final kPoppinsBold = GoogleFonts.poppins(
  color: kDarkBlue,
  fontWeight: FontWeight.w700,
);

final kPoppinsSemiBold = GoogleFonts.poppins(
  color: kDarkBlue,
  fontWeight: FontWeight.w600,
);

final kPoppinsMedium = GoogleFonts.poppins(
  color: kDarkBlue,
  fontWeight: FontWeight.w500,
);

final kPoppinsRegular = GoogleFonts.poppins(
  color: kDarkBlue,
  fontWeight: FontWeight.w400,
);
