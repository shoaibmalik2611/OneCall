import 'package:flutter/material.dart';
import 'package:one_call/utils/sizeConfig.dart';

import 'constants.dart';

class AppTheme {
  AppTheme._();

  static const Color appThemeColor = Color(0xFF424953);

  static final ThemeData lightTheme = ThemeData(
    iconTheme: IconThemeData(color: Colors.white),
    primaryColor: white,
    primaryColorLight: pink,
    scaffoldBackgroundColor: white,
    brightness: Brightness.light,
    textTheme: lightTextTheme,
  );

  static final TextTheme lightTextTheme = TextTheme(
    headline1: _heading1,
    headline2: _heading2,
    headline3: _heading3,
    headline4: _heading4,
    headline5: _heading5,
    headline6: _heading6,
    subtitle1: heading1Bold,
    subtitle2: heading4Bold,
  );

  // static TextStyle heading1Bold = TextStyle(
  //   fontWeight: FontWeight.bold,
  //   color: dark,
  //   fontSize: 3 * SizeConfig.textMultiplier,
  // );

  static final TextStyle heading2Bold = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
    color: dark,
    fontSize: 3 * SizeConfig.textMultiplier,
  );

  // static final TextStyle heading4Bold = TextStyle(
  //   fontFamily: 'Poppins',
  //   fontWeight: FontWeight.w700,
  //   color: dark,
  //   fontSize: 2.5 * SizeConfig.textMultiplier,
  // );
  static final TextStyle title = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
    color: dark,
    fontSize: 3.5 * SizeConfig.height,
  );

  static final TextStyle heading2BoldWhite = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
    color: white,
    fontSize: 3 * SizeConfig.textMultiplier,
  );

  static final TextStyle heading4Bold = TextStyle(
    fontFamily: 'Poppins',
    color: dark,
    fontWeight: FontWeight.w700,
    fontSize: 2.5 * SizeConfig.textMultiplier,
  );
  static final TextStyle heading4BoldPink = TextStyle(
    fontFamily: 'Poppins',
    color: pink,
    fontWeight: FontWeight.w700,
    fontSize: 2.5 * SizeConfig.textMultiplier,
  );
  static final TextStyle heading4BoldLight = TextStyle(
    fontFamily: 'Poppins',
    color: white,
    fontWeight: FontWeight.w700,
    fontSize: 2.5 * SizeConfig.textMultiplier,
  );
  static final TextStyle heading4BoldGrey = TextStyle(
    fontFamily: 'Poppins',
    color: grey,
    fontWeight: FontWeight.w700,
    fontSize: 2.5 * SizeConfig.textMultiplier,
  );

  static final TextStyle _heading1 = TextStyle(
    fontFamily: 'Poppins',
    color: Colors.black,
    fontSize: 3.5 * SizeConfig.textMultiplier,
  );

  static final TextStyle regularText = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 2 * SizeConfig.textMultiplier,
    color: dark,
  );
  static final TextStyle regularTextWhite = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 2 * SizeConfig.textMultiplier,
    color: white,
  );
  static final TextStyle regularBoldText = TextStyle(
      fontFamily: 'Poppins',
      fontSize: 2 * SizeConfig.textMultiplier,
      color: dark,
      fontWeight: FontWeight.bold);

  static final TextStyle _heading2 = TextStyle(
    fontFamily: 'Poppins',
    color: Colors.black,
    fontSize: 2.5 * SizeConfig.textMultiplier,
  );

  static final TextStyle heading5Blue = TextStyle(
    fontFamily: 'Poppins',
    color: bluish,
    fontSize: 2 * SizeConfig.textMultiplier,
  );

  static final TextStyle _heading3 = TextStyle(
    fontFamily: 'Poppins',
    color: dark,
    fontSize: 1.8 * SizeConfig.textMultiplier,
  );

  static final TextStyle heading1Bold = TextStyle(
      fontFamily: 'Poppins',
      fontSize: 2 * SizeConfig.textMultiplier,
      color: dark);

  static final TextStyle _heading4 = TextStyle(
    fontFamily: 'Poppins',
    color: Colors.white,
    fontWeight: FontWeight.w100,
    fontSize: 3.5 * SizeConfig.textMultiplier,
  );

  static final TextStyle _heading5 = TextStyle(
    fontFamily: 'Poppins',
    color: Colors.white,
    fontSize: 2.8 * SizeConfig.textMultiplier,
  );

  static final TextStyle _heading6 = TextStyle(
      fontFamily: 'Poppins',
      color: Colors.white,
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.bold);
}
