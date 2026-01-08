import 'package:flutter/cupertino.dart';

import 'app_colors.dart';

@immutable
class AppTextStyles {
  const AppTextStyles._();

  static const TextStyle mediumNormal = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    color: AppColors.black,
    fontSize: 12,
  );

  static const TextStyle smallBold = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
    color: AppColors.black,
    fontSize: 10,
  );
}
