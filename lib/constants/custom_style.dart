import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'dimensions.dart';

class CustomStyle {
//------------------------dark--------------------------------
  static var darkHeading1TextStyle = GoogleFonts.inter(
    color: CustomColor.primaryDarkTextColor,
    fontSize: Dimensions.headingTextSize1,
    fontWeight: FontWeight.w600,
  );
  static var darkHeading2TextStyle = GoogleFonts.inter(
    color: CustomColor.primaryDarkTextColor,
    fontSize: Dimensions.headingTextSize2,
    fontWeight: FontWeight.w700,
  );
  static var darkHeading3TextStyle = GoogleFonts.inter(
    color: CustomColor.primaryDarkTextColor,
    fontSize: Dimensions.headingTextSize3,
    fontWeight: FontWeight.w700,
  );
  static var darkHeading4TextStyle = GoogleFonts.inter(
    color: CustomColor.primaryDarkTextColor,
    fontSize: Dimensions.headingTextSize4,
    fontWeight: FontWeight.w400,
  );
  static var darkHeading5TextStyle = GoogleFonts.inter(
    color: CustomColor.primaryDarkTextColor,
    fontSize: Dimensions.headingTextSize5,
    fontWeight: FontWeight.w400,
  );

//------------------------light--------------------------------
  static var lightHeading1TextStyle = GoogleFonts.inter(
    color: CustomColor.primaryLightTextColor,
    fontSize: Dimensions.headingTextSize1,
    fontWeight: FontWeight.w700,
  );
  static var lightHeading2TextStyle = GoogleFonts.inter(
    color: CustomColor.primaryLightTextColor,
    fontSize: Dimensions.headingTextSize2,
    fontWeight: FontWeight.w700,
  );
  static var lightHeading3TextStyle = GoogleFonts.inter(
    color: CustomColor.primaryLightTextColor,
    fontSize: Dimensions.headingTextSize3,
    fontWeight: FontWeight.w700,
  );
  static var lightHeading4TextStyle = GoogleFonts.inter(
    color: CustomColor.primaryLightTextColor,
    fontSize: Dimensions.headingTextSize4,
    fontWeight: FontWeight.w400,
  );
  static var lightHeading5TextStyle = GoogleFonts.inter(
    color: CustomColor.primaryLightTextColor,
    fontSize: Dimensions.headingTextSize5,
    fontWeight: FontWeight.w400,
  );

  static var primaryLinearGradiant = BoxDecoration(
      gradient: const LinearGradient(colors: [
        Colors.transparent,
        CustomColor.primaryBGDarkColor
      ]),
      borderRadius: BorderRadius.circular(100));
}