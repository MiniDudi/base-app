import 'package:base_app/shared/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';

import '../../widgets/buttons/main_button.dart';

@immutable
class MainButtonUtils {
  static Color getButtonBackgroundColor(ButtonVariant variant) {
    switch (variant) {
      case ButtonVariant.primary:
        return AppColors.primary;
      case ButtonVariant.secondary:
        return AppColors.primary;
      case ButtonVariant.gray:
        return AppColors.gray1;
      case ButtonVariant.white:
        return AppColors.white;
    }
  }

  static Color getButtonTextColor(ButtonVariant variant) {
    switch (variant) {
      case ButtonVariant.primary:
        return AppColors.white;
      case ButtonVariant.secondary:
        return AppColors.white;
      case ButtonVariant.gray:
        return AppColors.black;
      case ButtonVariant.white:
        return AppColors.black;
    }
  }

  static Color getButtonIconColor(ButtonVariant variant) {
    switch (variant) {
      case ButtonVariant.primary:
        return AppColors.white;
      case ButtonVariant.secondary:
        return AppColors.white;
      case ButtonVariant.gray:
        return AppColors.black;
      case ButtonVariant.white:
        return AppColors.black;
    }
  }
}
