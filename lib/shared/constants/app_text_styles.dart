import 'package:flutter/cupertino.dart';

import 'app_colors.dart';

@immutable
class AppTextStyles {
  const AppTextStyles._();

  static const TextStyle h1 = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
    color: AppColors.black,
    fontSize: 40,
  );

  static const TextStyle h4 = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
    color: AppColors.black,
    fontSize: 32,
  );

  static const TextStyle mediumNormal = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    color: AppColors.black,
    fontSize: 14,
  );

  static const TextStyle mediumBold = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
    color: AppColors.black,
    fontSize: 14,
  );

  static const TextStyle smallNormal = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    color: AppColors.black,
    fontSize: 12,
  );

  static const TextStyle smallBold = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
    color: AppColors.black,
    fontSize: 12,
  );
}
