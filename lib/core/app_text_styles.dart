import 'package:flutter/material.dart';
import 'package:taskzy/core/core.dart';

class AppTextStyles {
  static final TextStyle titleWhiteExtraBold50 = TextStyle(
    color: Colors.white,
    fontSize: 50,
    fontWeight: FontWeight.w800,
  );

  static final TextStyle titleWhiteMedium35 = TextStyle(
    color: Colors.white,
    fontSize: 35,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle titleWhiteExtraBold40 = TextStyle(
    color: Colors.white,
    fontSize: 40,
    fontWeight: FontWeight.w800,
    decoration: TextDecoration.underline,
  );

  static final TextStyle headingWhiteRegular20 = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle headingRedRegular35 = TextStyle(
    color: AppColors.red,
    fontSize: 35,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle headingRedExtraBold35 = TextStyle(
    color: AppColors.red,
    fontSize: 35,
    fontWeight: FontWeight.w800,
  );
}
